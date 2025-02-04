# Generated with JReleaser 1.15.0 at 2025-02-04T12:13:27.88969123Z

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/1.0.2/streamx-1.0.2.zip"
  version "1.0.2"
  sha256 "10d28f55661c1535e3477a42cbe7b42e66f1b99c4b40bf13dda38ff77fde91c8"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2", output
  end
end
