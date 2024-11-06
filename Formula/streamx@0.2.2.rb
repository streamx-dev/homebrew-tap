# Generated with JReleaser 1.10.0 at 2024-03-27T13:20:32.92634+01:00

class StreamxAT0v2v2 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.2.2/streamx-0.2.2.zip"
  version "0.2.2"
  sha256 "49a86158e56345b802bea9da4e8a9bfa179fedd9da276ed3fc55ed815f52ffab"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.2", output
  end
end
