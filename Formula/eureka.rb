# Generated with JReleaser 1.2.0 at 2023-06-07T21:00:59.32862+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.59.1/eureka-0.59.1.zip"
  version "0.59.1"
  sha256 "e0cbf52663185db21b21741afb8081303280172631084b472e31670e8b587c4a"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.59.1", output
  end
end
