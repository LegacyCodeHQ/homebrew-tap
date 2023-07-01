# Generated with JReleaser 1.2.0 at 2023-07-01T21:38:41.45096+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.67.0/eureka-0.67.0.zip"
  version "0.67.0"
  sha256 "d653bdfd2a27709611ca59f36cb908d79db4623c77642d08e9edcb534c54a2dc"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.67.0", output
  end
end
