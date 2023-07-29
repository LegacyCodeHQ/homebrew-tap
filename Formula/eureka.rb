# Generated with JReleaser 1.2.0 at 2023-07-29T13:21:48.281886+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.91.0/eureka-0.91.0.zip"
  version "0.91.0"
  sha256 "276df49352f2641ffa63f63be15c32bda91387c28cf4b667420463f26c37b5e3"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.91.0", output
  end
end
