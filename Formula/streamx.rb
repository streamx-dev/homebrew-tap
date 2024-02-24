# Generated with JReleaser 1.10.0 at 2024-02-24T13:12:46.115062+01:00

class Streamx < Formula
  desc "CLI for StreamX"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli/releases/download/0.0.1-alpha1/streamx-0.0.1-alpha1.zip"
  version "0.0.1-alpha1"
  sha256 "596515de399d439efdadd4275ee7ec1cd74270f8bc4cb31f97d86f6e872b82d6"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.1-alpha1", output
  end
end
