# Generated with JReleaser 1.2.0 at 2023-06-29T11:15:00.719249+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.65.0/eureka-0.65.0.zip"
  version "0.65.0"
  sha256 "c19e4e59fd67a9647f5e3a8fead5e02b30d71adee222411ff0cdd26c07e16531"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.65.0", output
  end
end
