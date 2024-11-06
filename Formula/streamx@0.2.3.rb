# Generated with JReleaser 1.10.0 at 2024-04-02T10:36:44.740067+02:00

class StreamxAT0o2o3 < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.2.3/streamx-0.2.3.zip"
  version "0.2.3"
  sha256 "d1a5a87c6b2f3bfefd9582361341bf71687973fa5dd754a90d11f8ee4611e5e5"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.3", output
  end
end
