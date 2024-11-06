# Generated with JReleaser 1.10.0 at 2024-03-27T13:14:14.068491+01:00

class StreamxAT0o2o1 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.2.1/streamx-0.2.1.zip"
  version "0.2.1"
  sha256 "962f05ec6ccec8343cc44666deddcc18066a8a7b90a740413d50fca272df4106"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.1", output
  end
end
