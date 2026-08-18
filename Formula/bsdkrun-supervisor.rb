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
#   curl -sL https://github.com/tsirysndr/bsdkrun/releases/download/v0.11.1/bsdkrun-supervisor-aarch64-apple-darwin.tar.gz.sha256
class BsdkrunSupervisor < Formula
  desc "Runs one bsdkrun command in its own process (boot backend for bsdkrund)"
  homepage "https://github.com/tsirysndr/bsdkrun"
  version "0.11.1"
  license "MIT"

  # macOS links Homebrew's libkrun dynamically, same as the bsdkrun CLI — the
  # tarball ships just the binary, codesigned with the hypervisor entitlement.
  on_macos do
    on_arm do
      url "https://github.com/tsirysndr/bsdkrun/releases/download/v#{version}/bsdkrun-supervisor-aarch64-apple-darwin.tar.gz"
      sha256 "1ad4acd16853e5607baf3fe8f4d7b52a27e98aab08486155081b22e63d2a8396"
    end
    depends_on "tsirysndr/tap/libkrun"
  end

  # Linux bundles libkrun/libkrunfw as `.so`s next to the binary (rpath'd to
  # $ORIGIN, same trick the CLI's Linux tarball uses), so no separate libkrun
  # install is needed on that platform.
  on_linux do
    on_intel do
      url "https://github.com/tsirysndr/bsdkrun/releases/download/v#{version}/bsdkrun-supervisor-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "191d02c69481609b03e3a1bdb62edbd02adbaefae875ff8479c6c8f71bafc0af"
    end
    on_arm do
      url "https://github.com/tsirysndr/bsdkrun/releases/download/v#{version}/bsdkrun-supervisor-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a395366a25f3e302bde095bfb62538561bea42b378bc7737db95f65567f4f60d"
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
