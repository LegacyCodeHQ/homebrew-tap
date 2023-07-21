# Generated with JReleaser 1.2.0 at 2023-07-21T15:21:42.658993+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.87.2/eureka-0.87.2.zip"
  version "0.87.2"
  sha256 "cec3df581f77044d09b0fd3c0e54ec0c14b7eaae14f5a625dd5790ba6031a247"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.87.2", output
  end
end
