# Generated with JReleaser 1.2.0 at 2023-07-08T18:12:39.770727+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.71.0/eureka-0.71.0.zip"
  version "0.71.0"
  sha256 "527a407f1fe61887114564444d8bc991e108f3725482016d376b6c21071657c3"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.71.0", output
  end
end
