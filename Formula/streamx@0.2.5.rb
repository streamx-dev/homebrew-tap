# Generated with JReleaser 1.10.0 at 2024-05-09T11:26:49.672456+02:00

class StreamxAT0o2o5 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.2.5/streamx-0.2.5.zip"
  version "0.2.5"
  sha256 "cd6a3b77ad9d34e56f4b2968478dca2b7828a7c8b975a9a2b675a081f64a9d54"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.5", output
  end
end
