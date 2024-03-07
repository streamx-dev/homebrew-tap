# Generated with JReleaser 1.10.0 at 2024-03-07T10:36:56.507703+01:00

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.0.1-alpha4/streamx-0.0.1-alpha4.zip"
  version "0.0.1-alpha4"
  sha256 "186e0fb58c20a7bfbad58407a21fae0acc3c23beb991c9b5533a6ceb8037c089"
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
