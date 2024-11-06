# Generated with JReleaser 1.12.0 at 2024-05-21T09:12:04.325745+02:00

class StreamxAT0v3v0 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.3.0/streamx-0.3.0.zip"
  version "0.3.0"
  sha256 "2d4c80673807936d143e34a1ae8802b3e893553b21d65036cc172305b7c6247a"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.0", output
  end
end
