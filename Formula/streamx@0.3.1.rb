# Generated with JReleaser 1.12.0 at 2024-05-29T10:24:19.172967+02:00

class StreamxAT0o3o1 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.3.1/streamx-0.3.1.zip"
  version "0.3.1"
  sha256 "6931fb56c7eb7acad1048ea17d2dab522bd33932caffd9c8526cc21c1a2c987d"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.1", output
  end
end
