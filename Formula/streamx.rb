# Generated with JReleaser 1.10.0 at 2024-02-24T13:21:27.756665+01:00

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.0.1-alpha1/streamx-0.0.1-alpha1.zip"
  version "0.0.1-alpha1"
  sha256 "d966b0e60564bcb4db306f1f40b2cd367f398fc4aeebcb8bcb8ef62d883c3649"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.1-alpha1", output
  end
end
