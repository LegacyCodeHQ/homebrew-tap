# Generated with JReleaser 1.2.0 at 2023-07-26T12:40:14.166376+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.90.0/eureka-0.90.0.zip"
  version "0.90.0"
  sha256 "f555804baa4a4aad0537bddde02b5685cbcab93c7ca7659fea0d754d514ca34d"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.90.0", output
  end
end
