# Generated with JReleaser 1.2.0 at 2023-06-28T11:49:41.517906+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.64.0/eureka-0.64.0.zip"
  version "0.64.0"
  sha256 "2d5ccdf6ea49b2bf9ff0a4efa9c3e0efefb4019ee02c7af59cf754c41d5ebb30"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.64.0", output
  end
end
