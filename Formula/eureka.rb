# Generated with JReleaser 1.2.0 at 2023-07-13T12:07:03.450421+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.76.0/eureka-0.76.0.zip"
  version "0.76.0"
  sha256 "92fcbd7e25753570a7ba5e8eb036c9168fdcef4db0e9a33d15d960a4eefb66e1"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.76.0", output
  end
end
