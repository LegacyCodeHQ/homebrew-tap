# Generated with JReleaser 1.2.0 at 2023-04-23T21:57:12.557331+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.39.0/twd-0.39.0.zip"
  version "0.39.0"
  sha256 "9e7254655f8d35c03a0f4132a3719f896fa3df000435c10fc3e12cd3db45f491"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.39.0", output
  end
end
