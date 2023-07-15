# Generated with JReleaser 1.2.0 at 2023-07-15T16:52:53.047963+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.83.0/eureka-0.83.0.zip"
  version "0.83.0"
  sha256 "ab886ded15497b7b369756387c95dfc81e5ce31a819a331ffeb72295be8b32c0"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.83.0", output
  end
end
