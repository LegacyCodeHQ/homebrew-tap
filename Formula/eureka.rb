# Generated with JReleaser 1.2.0 at 2023-07-14T02:57:02.681183+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.77.0/eureka-0.77.0.zip"
  version "0.77.0"
  sha256 "fa29c24d1df35ecbc8492a943a5cdf49f2d5f1dd38c5c4bf80c2fe76e46dccba"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.77.0", output
  end
end
