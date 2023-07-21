# Generated with JReleaser 1.2.0 at 2023-07-21T13:28:29.166294+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.87.1/eureka-0.87.1.zip"
  version "0.87.1"
  sha256 "9d4fa9d4fec2bc9669eb9927646987e0c30b67b1ec27e0e7d658fcdb8c15f152"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.87.1", output
  end
end
