# Generated with JReleaser 1.2.0 at 2023-06-07T15:09:02.758347+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.59.0/eureka-0.59.0.zip"
  version "0.59.0"
  sha256 "1bcfc9c98e8ffa602adf2c82d3487c267d4346d064fef08331e6c717fd2f3f6c"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.59.0", output
  end
end
