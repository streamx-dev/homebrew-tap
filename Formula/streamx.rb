# Generated with JReleaser 1.10.0 at 2024-02-24T13:23:15.68177+01:00

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.0.1-alpha2/streamx-0.0.1-alpha2.zip"
  version "0.0.1-alpha2"
  sha256 "d4becabdbc73a4ecbf0ba1f132faf997d1752dbb4c33d737d9d9a280f127752f"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.1-alpha2", output
  end
end
