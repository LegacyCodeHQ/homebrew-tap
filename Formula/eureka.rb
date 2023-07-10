# Generated with JReleaser 1.2.0 at 2023-07-10T11:15:28.997995+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.72.0/eureka-0.72.0.zip"
  version "0.72.0"
  sha256 "75c2542e7c730a4f17392069b51780c6785638de3aab8731979ee59b4ffc093a"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.72.0", output
  end
end
