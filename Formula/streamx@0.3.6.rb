# Generated with JReleaser 1.12.0 at 2024-08-01T14:15:32.198841193Z

class StreamxAT036 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.3.6/streamx-0.3.6.zip"
  version "0.3.6"
  sha256 "9416840793cc154cd3edf29b454a9dca30870c4081818c2d78a93814d9a87383"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.6", output
  end
end
