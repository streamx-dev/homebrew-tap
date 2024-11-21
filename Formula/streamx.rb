# Generated with JReleaser 1.12.0 at 2024-11-21T08:54:00.259712886Z

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/1.0.0/streamx-1.0.0.zip"
  version "1.0.0"
  sha256 "f14a138492c23a909836ac5cc3cd58e5152f529dedd026b1079a47037f106a35"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.0", output
  end
end
