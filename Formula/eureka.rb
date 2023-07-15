# Generated with JReleaser 1.2.0 at 2023-07-15T09:44:41.245521+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.82.0/eureka-0.82.0.zip"
  version "0.82.0"
  sha256 "06e202d81b746eb32a5df9585628bca55630ceee85a840aaf3a5f16e4a25fbf0"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.82.0", output
  end
end
