# Generated with JReleaser 1.10.0 at 2024-03-18T14:33:41.210224+01:00

class StreamxAT0o1o0 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.1.0/streamx-0.1.0.zip"
  version "0.1.0"
  sha256 "20ed467562fbcb776d214f3b37708252188ea5b6fea5e895dd0796503886246c"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.1.0", output
  end
end
