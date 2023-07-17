# Generated with JReleaser 1.2.0 at 2023-07-17T22:33:11.215492+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.86.0/eureka-0.86.0.zip"
  version "0.86.0"
  sha256 "fbc957f77f9af61592a9dcf488fba09656a95e26b2e98d2518a430fde2636f30"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.86.0", output
  end
end
