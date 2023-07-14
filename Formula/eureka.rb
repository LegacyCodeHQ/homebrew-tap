# Generated with JReleaser 1.2.0 at 2023-07-14T09:27:10.80679+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.78.0/eureka-0.78.0.zip"
  version "0.78.0"
  sha256 "b8d67eb474502e6bd3000a71726157315f919eab057492d4ce8304a4a00ac06d"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.78.0", output
  end
end
