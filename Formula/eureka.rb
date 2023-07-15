# Generated with JReleaser 1.2.0 at 2023-07-15T22:32:57.5739+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.84.0/eureka-0.84.0.zip"
  version "0.84.0"
  sha256 "061f63cce510477d19d62f5b346e737d307ff92143701ae7456bab9578690c91"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.84.0", output
  end
end
