# Generated with JReleaser 1.2.0 at 2023-06-08T08:32:55.028121+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.60.0/eureka-0.60.0.zip"
  version "0.60.0"
  sha256 "0d3698ce7cc7c2a37900fb6152fe426a366c006c705d513ecb09338363091d2e"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.60.0", output
  end
end
