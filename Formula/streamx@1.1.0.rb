# Generated with JReleaser 1.17.0 at 2025-04-28T11:13:50.754495935Z

class StreamxAT110 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/1.1.0/streamx-1.1.0.zip"
  version "1.1.0"
  sha256 "efb328783b8606d40e4bb11c3b7a30b3c48a70d09cb94a52896a71018ee78b55"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.1.0", output
  end
end
