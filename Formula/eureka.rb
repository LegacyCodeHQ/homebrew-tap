# Generated with JReleaser 1.2.0 at 2023-07-05T14:14:50.236743+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.69.0/eureka-0.69.0.zip"
  version "0.69.0"
  sha256 "5f672d98992f98d524ba9951845fd3debd14630d7ae9dd8be15d812618820961"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.69.0", output
  end
end
