# Generated with JReleaser 1.2.0 at 2023-07-22T22:13:23.229846+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.88.0/eureka-0.88.0.zip"
  version "0.88.0"
  sha256 "63f0c81c2682d9851d855579f166c0583c8c541390e2b06e1ee8776c711d575e"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.88.0", output
  end
end
