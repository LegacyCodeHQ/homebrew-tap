# Generated with JReleaser 1.16.0 at 2025-02-11T11:40:47.038787+05:30

class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.93.0/eureka-0.93.0.zip"
  version "0.93.0"
  sha256 "f4c08441e7bda7dd7fe2ac3a74250cfd612c52e340b174705d1246eae71d6496"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.93.0", output
  end
end
