# Generated with JReleaser 1.2.0 at 2023-06-15T08:55:08.243111+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.62.0/eureka-0.62.0.zip"
  version "0.62.0"
  sha256 "a6db841f011abaf5dcf7cfc387348e177e17192cb6c6ef3509a6b3495e6360a5"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.62.0", output
  end
end
