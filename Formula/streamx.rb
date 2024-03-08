# Generated with JReleaser 1.10.0 at 2024-03-08T14:00:17.408651+01:00

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.0.1-alpha5/streamx-0.0.1-alpha5.zip"
  version "0.0.1-alpha5"
  sha256 "3ceeffcf7538579cf524a0610f6374b41ad77be50babf9182bef6da93a221689"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.1-alpha5", output
  end
end
