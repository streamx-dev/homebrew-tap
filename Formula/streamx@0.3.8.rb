# Generated with JReleaser 1.12.0 at 2024-09-11T08:26:55.696702864Z

class StreamxAT0v3v8 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.3.8/streamx-0.3.8.zip"
  version "0.3.8"
  sha256 "616d8742ab1a42b9edd5d340555a207c3ce26d5188ce67b6931f8ce2f098117e"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8", output
  end
end
