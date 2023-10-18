class Fluentci < Formula
  desc "Command line interface for Fluent CI/CD"
  homepage "https://github.com/fluentci-io/fluentci"
  url "https://github.com/fluentci-io/fluentci/releases/download/v0.6.6/fluentci_v0.6.6_aarch64-apple-darwin.tar.gz"
  sha256 "81867ffe6f8b2f6a3af13eb103240d46c6a08cf34834da8cb48b749a7b9aef9c"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.6.6/fluentci_v0.6.6_x86_64-apple-darwin.tar.gz"
    sha256 "23c958ab661bbffba403ee9cc8545e837bf91c0941f6c728b143d5503978de19"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.6.6/fluentci_v0.6.6_aarch64-apple-darwin.tar.gz"
    sha256 "81867ffe6f8b2f6a3af13eb103240d46c6a08cf34834da8cb48b749a7b9aef9c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fluentci-io/fluentci/releases/download/v0.6.6/fluentci_v0.6.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a4758123d9b8e22f3696bb65ad8df5ac1cb7c86534ab9666ba6799e334c36d0e"
  end

  depends_on "deno"
  depends_on "dagger"

  def install
    bin.install "fluentci"
  end
end
