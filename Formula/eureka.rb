# Generated with JReleaser 1.2.0 at 2023-07-23T09:54:10.433227+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.89.0/eureka-0.89.0.zip"
  version "0.89.0"
  sha256 "48358e86b8e164ff38dcb092c7885ada2edd58ac68d312ee5f3762681519d0bc"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.89.0", output
  end
end
