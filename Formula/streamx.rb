# Generated with JReleaser 1.10.0 at 2024-02-24T14:30:05.806724+01:00

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.0.1-alpha3/streamx-0.0.1-alpha3.zip"
  version "0.0.1-alpha3"
  sha256 "bdd21f511309b3a6a14cc5e99249d5cefbcd16b3f89b07afd4f460849ce030c2"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.1-alpha3", output
  end
end
