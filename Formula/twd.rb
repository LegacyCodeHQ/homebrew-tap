# Generated with JReleaser 1.2.0 at 2023-05-19T17:18:22.993087+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.47.0/twd-0.47.0.zip"
  version "0.47.0"
  sha256 "e8172fda10a492a4e0f9216d956965c8754f9e878009d5f15d28721896432831"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.47.0", output
  end
end
