# Generated with JReleaser 1.2.0 at 2023-07-14T16:53:41.502057+05:30
class Eureka < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/eureka"
  url "https://github.com/LegacyCodeHQ/eureka/releases/download/eureka-0.80.0/eureka-0.80.0.zip"
  version "0.80.0"
  sha256 "ddfe2416cfd9ced715081ebcdc68e423843463a761f2326319938e3387b98e2c"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/eureka" => "eureka"
  end

  test do
    output = shell_output("#{bin}/eureka --version")
    assert_match "0.80.0", output
  end
end
