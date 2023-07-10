# Generated with JReleaser 1.2.0 at 2023-07-10T13:26:47.564821+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.73.0/eureka-0.73.0.zip"
  version "0.73.0"
  sha256 "306fb33114a018abdacd5987367a673d8641dbac1180bb8995673fefa34d4298"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.73.0", output
  end
end
