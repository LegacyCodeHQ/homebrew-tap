# Generated with JReleaser 1.2.0 at 2023-07-16T01:07:49.633415+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.85.0/eureka-0.85.0.zip"
  version "0.85.0"
  sha256 "e871d8bbc1f4010a0f5f091d021e05cfe7c591b82b74ac58ad65529f4beb7cba"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.85.0", output
  end
end
