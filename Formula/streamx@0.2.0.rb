# Generated with JReleaser 1.10.0 at 2024-03-26T12:17:58.948236+01:00

class StreamxAT0v2v0 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.2.0/streamx-0.2.0.zip"
  version "0.2.0"
  sha256 "656a8c228527f293b0de9bc719b81d775aca82cd47324c23425e9f0013bc1348"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.0", output
  end
end
