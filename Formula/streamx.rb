# Generated with JReleaser 1.10.0 at 2024-02-24T14:56:45.912941+01:00

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.0.1-alpha4/streamx-0.0.1-alpha4.zip"
  version "0.0.1-alpha4"
  sha256 "663678dbcec60f1339b68f12c38a22fa61e40d658ddc9643902568c718302d68"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.1-alpha4", output
  end
end
