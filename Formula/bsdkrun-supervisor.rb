# Homebrew formula for bsdkrun-supervisor.
#
# Copy this into the tap repo as `Formula/bsdkrun-supervisor.rb`
# (github.com/tsirysndr/homebrew-tap) — Homebrew installs from the tap, not
# from here. It lives in this repo so it is versioned with the thing it ships.
#
# Not a user-facing tool: `bsdkrund` shells out to it to actually boot a
# machine (see supervisor/src/main.rs and daemon/src/supervisor.rs for why
# booting lives in a process of its own). Installing this formula puts it on
# PATH, which is where the daemon falls back to looking when it isn't sitting
# right beside `bsdkrund`.
#
# Installs prebuilt binaries from the GitHub release that `release.yml`
# publishes. To cut a new version: bump `version`, then read each `sha256`
# from the `.sha256` sidecar published beside its tarball, e.g.
#
#   curl -sL https://github.com/tsirysndr/bsdkrun/releases/download/v0.11.4/bsdkrun-supervisor-aarch64-apple-darwin.tar.gz.sha256
class BsdkrunSupervisor < Formula
  desc "Runs one bsdkrun command in its own process (boot backend for bsdkrund)"
  homepage "https://github.com/tsirysndr/bsdkrun"
  version "0.11.4"
  license "MIT"

  # macOS links Homebrew's libkrun dynamically, same as the bsdkrun CLI — the
  # tarball ships just the binary, codesigned with the hypervisor entitlement.
  on_macos do
    on_arm do
      url "https://github.com/tsirysndr/bsdkrun/releases/download/v#{version}/bsdkrun-supervisor-aarch64-apple-darwin.tar.gz"
      sha256 "82fa939eb7fc4022bb3007b6d33f0303ef0b94179b4785c19f1c799db633bc21"
    end
    depends_on "tsirysndr/tap/libkrun"
  end

  # Linux bundles libkrun/libkrunfw as `.so`s next to the binary (rpath'd to
  # $ORIGIN, same trick the CLI's Linux tarball uses), so no separate libkrun
  # install is needed on that platform.
  on_linux do
    on_intel do
      url "https://github.com/tsirysndr/bsdkrun/releases/download/v#{version}/bsdkrun-supervisor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e75ea6b2a2a204b5f4dbef99ad1f0376c4684853f78a26cce5bec5a95a4001e4"
    end
    on_arm do
      url "https://github.com/tsirysndr/bsdkrun/releases/download/v#{version}/bsdkrun-supervisor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edfd51f0cb073fe61da13d6fa523c2e1c2dd22a908738799cf9dec99210e9e19"
    end
  end

  def install
    # macOS is Apple Silicon only, matching the CLI — bsdkrun-supervisor needs
    # an arm64 host for libkrun.
    on_macos do
      odie "bsdkrun-supervisor is only built for Apple Silicon on macOS" unless Hardware::CPU.arm?
    end

    # The Linux bundle also carries libkrun.so/libkrunfw.so beside the binary;
    # install the whole extracted tree so the $ORIGIN rpath keeps resolving.
    on_linux do
      libexec.install Dir["*"]
      bin.install_symlink libexec/"bsdkrun-supervisor"
    end

    on_macos do
      bin.install "bsdkrun-supervisor"
    end
  end

  test do
    assert_match "bsdkrun-supervisor", shell_output("#{bin}/bsdkrun-supervisor --version")
  end
end
