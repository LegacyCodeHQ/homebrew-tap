# Generated with JReleaser 1.2.0 at 2023-07-11T16:39:17.233021+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.74.0/eureka-0.74.0.zip"
  version "0.74.0"
  sha256 "022a4c7c5f6271594d275294b7f9a249365a92bb1492e93d1093ae8fd9daec8b"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.74.0", output
  end
end
