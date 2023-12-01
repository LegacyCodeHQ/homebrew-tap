# Generated with JReleaser 1.2.0 at 2023-12-01T13:22:40.157275+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.92.1/eureka-0.92.1.zip"
  version "0.92.1"
  sha256 "c6b375b67eec95f75c4908de68dc3dec8f6317ae893f384de867e79eebc166e0"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.92.1", output
  end
end
