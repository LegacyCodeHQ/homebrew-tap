# Generated with JReleaser 1.2.0 at 2023-05-18T05:23:57.193403+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.42.0/twd-0.42.0.zip"
  version "0.42.0"
  sha256 "754e23a2154f20d1e428ed229e75e8607e1202445b00b03ec9e963fe33405883"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.42.0", output
  end
end
