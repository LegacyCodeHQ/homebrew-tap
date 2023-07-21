# Generated with JReleaser 1.2.0 at 2023-07-21T19:31:44.823861+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.87.3/eureka-0.87.3.zip"
  version "0.87.3"
  sha256 "ff9a0f6007037efb3bf11c5f5555498f92bb0ace860b3d86a893b22355726cc9"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.87.3", output
  end
end
