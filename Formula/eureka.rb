# Generated with JReleaser 1.2.0 at 2023-07-21T19:59:23.38439+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.87.4/eureka-0.87.4.zip"
  version "0.87.4"
  sha256 "b43b168fa8aeba9c6d24678d674e893591655768aa853e7dcf313d87f070e5c1"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.87.4", output
  end
end
