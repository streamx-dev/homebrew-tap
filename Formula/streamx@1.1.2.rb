# Generated with JReleaser 1.17.0 at 2025-06-30T11:12:31.88773418Z

class StreamxAT112 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/1.1.2/streamx-1.1.2.zip"
  version "1.1.2"
  sha256 "78e71a8b67974bc71ca58048e152a49cae40a45f5b83f2b67f1852d5f5b0b9ec"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.1.2", output
  end
end
