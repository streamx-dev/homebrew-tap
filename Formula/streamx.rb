# Generated with JReleaser 1.12.0 at 2024-05-09T12:28:05.769382+02:00

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.2.5/streamx-0.2.5.zip"
  version "0.2.5"
  sha256 "b61dd4817b05c1b66ad38173328fbfffcfb1501cd53819d773c1ea19d26c3bcd"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.5", output
  end
end
