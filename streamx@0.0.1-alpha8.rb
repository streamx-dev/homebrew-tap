# Generated with JReleaser 1.10.0 at 2024-03-14T14:39:17.773445+01:00

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.0.1-alpha8/streamx-0.0.1-alpha8.zip"
  version "0.0.1-alpha8"
  sha256 "c250a10a93e88055b33c92025603af4cfbebaa42fb26cc7192adfe1ac9754ee3"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.1-alpha8", output
  end
end
