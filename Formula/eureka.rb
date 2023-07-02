# Generated with JReleaser 1.2.0 at 2023-07-02T22:06:03.051929+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.67.2/eureka-0.67.2.zip"
  version "0.67.2"
  sha256 "f4ea1b9d362487ce0371436847f047e790cdd3fd54909d556597b20d68fb31d9"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.67.2", output
  end
end
