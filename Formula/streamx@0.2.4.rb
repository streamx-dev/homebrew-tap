# Generated with JReleaser 1.10.0 at 2024-04-23T16:14:51.330064+02:00

class StreamxAT024 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.2.4/streamx-0.2.4.zip"
  version "0.2.4"
  sha256 "ec886bbc356985c1a2dde9ef7eef17eb08c4510071da16a730f724fb82e53839"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.4", output
  end
end
