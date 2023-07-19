# Generated with JReleaser 1.2.0 at 2023-07-19T19:53:41.511356+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.87.0/eureka-0.87.0.zip"
  version "0.87.0"
  sha256 "9e91c8362f0f017fec6a24c35e966ea08ca3b8fe341a98502021943a196debb9"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.87.0", output
  end
end
