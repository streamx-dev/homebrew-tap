# Generated with JReleaser 1.12.0 at 2024-07-22T08:54:07.513595827Z

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.3.5/streamx-0.3.5.zip"
  version "0.3.5"
  sha256 "91a51a9fd2d4da59a04fda1aace9d55784c73c7c30bd8d6f641fbdd4b25f46ae"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.5", output
  end
end
