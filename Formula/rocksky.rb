class Rocksky < Formula
  desc "Command-line music player and scrobbling client for Rocksky"
  homepage "https://github.com/tsirysndr/rocksky"
  version "0.11.5"
  license "Apache-2.0"

  livecheck do
    url :stable
    regex(/^rocksky-cli[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  on_macos do
    on_arm do
      url "https://github.com/tsirysndr/rocksky/releases/download/rocksky-cli-v#{version}/rocksky-darwin-aarch64",
          using: :nounzip
      sha256 "b4426794922205122f8ee2a9d9986388190fc73d3b9c2f617cb234bdd3889f0c"
    end

    depends_on arch: :arm64
  end

  on_linux do
    on_intel do
      url "https://github.com/tsirysndr/rocksky/releases/download/rocksky-cli-v#{version}/rocksky-linux-x86_64",
          using: :nounzip
      sha256 "11a68dea4df2507214a5a8579af4aeae4ce1e06429c3ce3837b055c814abc0c5"
    end

    on_arm do
      url "https://github.com/tsirysndr/rocksky/releases/download/rocksky-cli-v#{version}/rocksky-linux-aarch64",
          using: :nounzip
      sha256 "be3a096a1a0bc6d39a60663b3626fef2118b28f7343e61bae4cf82254b898e62"
    end
  end

  def install
    bin.install Dir["rocksky-*"].first => "rocksky"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rocksky --version")
    assert_match "scrobble", shell_output("#{bin}/rocksky --help")
  end
end
