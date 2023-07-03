# Generated with JReleaser 1.2.0 at 2023-07-03T12:19:55.176459+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.68.0/eureka-0.68.0.zip"
  version "0.68.0"
  sha256 "e428ead7627ffb583615910b33344c219bad985869f9a851200e358bc80151c6"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.68.0", output
  end
end
