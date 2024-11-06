# Generated with JReleaser 1.12.0 at 2024-06-03T08:32:02.781479837Z

class StreamxAT0v3v3 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.3.3/streamx-0.3.3.zip"
  version "0.3.3"
  sha256 "10500e4e46215880437007b359d04d44754813c1ad7d2a4b083d55d7d30bcd04"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.3", output
  end
end
