# Generated with JReleaser 1.12.0 at 2024-10-30T09:15:11.626722283Z

class StreamxAT0v3v9 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.3.9/streamx-0.3.9.zip"
  version "0.3.9"
  sha256 "2055aef97e290786acf7be06b0dee7c280f8399ae601068872d6960d846b2334"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.9", output
  end
end
