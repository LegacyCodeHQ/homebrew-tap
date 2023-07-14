# Generated with JReleaser 1.2.0 at 2023-07-14T23:04:25.818424+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.81.0/eureka-0.81.0.zip"
  version "0.81.0"
  sha256 "8fac1f4f358ab9ef98fd7066ee71b360ce6830f496df9648d49b03bfef308885"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.81.0", output
  end
end
