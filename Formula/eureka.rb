# Generated with JReleaser 1.2.0 at 2023-07-01T23:08:21.391786+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.67.1/eureka-0.67.1.zip"
  version "0.67.1"
  sha256 "3aacb6ce9624b7a43bdb02d69f8683689249586b9560032d8d833f724c546ffd"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.67.1", output
  end
end
