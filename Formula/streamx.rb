# Generated with JReleaser 1.17.0 at 2025-05-23T10:15:02.323919623Z

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/1.1.1/streamx-1.1.1.zip"
  version "1.1.1"
  sha256 "da261dc6aa50d6390a0f0b3a5c3521da0e45a41a70f78d1ebfe6dc4f0bbc804a"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.1.1", output
  end
end
