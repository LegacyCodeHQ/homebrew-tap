# Generated with JReleaser 1.2.0 at 2023-05-30T20:15:55.134359+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.53.0/twd-0.53.0.zip"
  version "0.53.0"
  sha256 "d0b74675658d271c83d16568ba87c02d6f8df1a131b2975351dfbcfc03867482"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.53.0", output
  end
end
