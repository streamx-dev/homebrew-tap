# Generated with JReleaser 1.12.0 at 2024-08-01T16:00:23.152069349Z

class StreamxAT0o3o7 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.3.7/streamx-0.3.7.zip"
  version "0.3.7"
  sha256 "d3236212bf598eb3f715d513847c1fe7ae71fba44ad36e7521c4019665fd2dcc"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.7", output
  end
end
