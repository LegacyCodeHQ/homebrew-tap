# Generated with JReleaser 1.2.0 at 2023-07-12T20:22:16.53924+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.75.0/eureka-0.75.0.zip"
  version "0.75.0"
  sha256 "11c757aafb343badafa99833f43aad2668bb45ef44dff5572a26709f51320e34"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.75.0", output
  end
end
