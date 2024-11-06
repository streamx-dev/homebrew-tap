# Generated with JReleaser 1.12.0 at 2024-07-10T13:57:01.937050983Z

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.3.4/streamx-0.3.4.zip"
  version "0.3.4"
  sha256 "af20b109574bc74135655a44d9f0d08c07507283a35c4f60481082909595df8b"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.4", output
  end
end
