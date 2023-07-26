# Generated with JReleaser 1.2.0 at 2023-07-26T16:57:20.160792+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.90.2/eureka-0.90.2.zip"
  version "0.90.2"
  sha256 "90aff8e9fe72d2693e603f393ccb7fef3127324ae79d4a660e388839da2f7278"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.90.2", output
  end
end
