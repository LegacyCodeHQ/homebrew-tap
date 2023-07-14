# Generated with JReleaser 1.2.0 at 2023-07-14T16:20:18.114544+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.79.0/eureka-0.79.0.zip"
  version "0.79.0"
  sha256 "de38c39233036e202634960074e8e09834863068f78cc076a5deefb3535a9e80"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.79.0", output
  end
end
