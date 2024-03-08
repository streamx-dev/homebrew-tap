# Generated with JReleaser 1.10.0 at 2024-03-08T15:57:26.53748+01:00

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.0.1-alpha7/streamx-0.0.1-alpha7.zip"
  version "0.0.1-alpha7"
  sha256 "3d256c126b8ba800b9df877ed63a3043fd8f1bff812ce49306fc7ddac5bdc0d6"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.1-alpha7", output
  end
end
