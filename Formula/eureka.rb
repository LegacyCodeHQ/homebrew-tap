# Generated with JReleaser 1.2.0 at 2023-07-08T16:15:47.506748+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.70.0/eureka-0.70.0.zip"
  version "0.70.0"
  sha256 "22266e33fd4042ecf7ba0391d0f4bb00b779f67b9e8426654e8058be519083d8"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.70.0", output
  end
end
