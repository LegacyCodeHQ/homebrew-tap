# Generated with JReleaser 1.2.0 at 2023-06-03T10:08:17.751232+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.55.0/twd-0.55.0.zip"
  version "0.55.0"
  sha256 "308056b15e28779b02dc93d7c749cb5e9c64b6e467a9b5d64b4d42082b6d9655"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.55.0", output
  end
end
