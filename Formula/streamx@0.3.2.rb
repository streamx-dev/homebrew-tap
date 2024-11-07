# Generated with JReleaser 1.12.0 at 2024-06-03T10:24:29.012736+02:00

class StreamxAT032 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.3.2/streamx-0.3.2.zip"
  version "0.3.2"
  sha256 "8a27fe067d680730b0c326a9e8e164c8c54c408f4c829fd9c950c9ccc84b3628"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.2", output
  end
end
