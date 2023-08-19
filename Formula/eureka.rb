# Generated with JReleaser 1.2.0 at 2023-08-19T08:56:05.433488+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.92.0/eureka-0.92.0.zip"
  version "0.92.0"
  sha256 "7eae631a92b5861b1ba559cfa5e3ed118719410d5c60f5d389ec9d222f11dbd6"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.92.0", output
  end
end
