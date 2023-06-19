# Generated with JReleaser 1.2.0 at 2023-06-19T17:41:29.161869+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.63.0/eureka-0.63.0.zip"
  version "0.63.0"
  sha256 "c8c6123e7817e0cfd62f0926a2406f36cb5f7c434c582209d2324e7ce6bd7570"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.63.0", output
  end
end
