# Generated with JReleaser 1.15.0 at 2024-12-24T09:27:13.972078914Z

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/1.0.1/streamx-1.0.1.zip"
  version "1.0.1"
  sha256 "d175fb24b1010af6f58a3bfd907beed48ab596660f75750a5329779769e50606"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1", output
  end
end
