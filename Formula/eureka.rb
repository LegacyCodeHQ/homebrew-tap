# Generated with JReleaser 1.2.0 at 2023-07-26T16:38:10.878056+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.90.1/eureka-0.90.1.zip"
  version "0.90.1"
  sha256 "f1c40635ad57ee96db24b31dfab30f92d16c03604ccd9e4d6f7bd5ac3ff539dd"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.90.1", output
  end
end
