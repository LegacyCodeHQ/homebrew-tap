# Generated with JReleaser 1.2.0 at 2023-06-29T17:36:17.26439+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.66.1/eureka-0.66.1.zip"
  version "0.66.1"
  sha256 "86aee86ec59793a5f0d2e15e0cfeeba882cb4e4b0549bd44178732fa80a0d51e"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.66.1", output
  end
end
