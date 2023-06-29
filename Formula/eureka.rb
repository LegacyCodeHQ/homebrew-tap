# Generated with JReleaser 1.2.0 at 2023-06-29T12:22:32.407682+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.66.0/eureka-0.66.0.zip"
  version "0.66.0"
  sha256 "16ac1688203e5fb11e4908ba2a252cb6db3440d586ececbac24193901870f810"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.66.0", output
  end
end
