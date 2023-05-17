# Generated with JReleaser 1.2.0 at 2023-05-17T15:23:31.805142+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.40.0/twd-0.40.0.zip"
  version "0.40.0"
  sha256 "3926f1347487f4c506e81751c5adca8ab156cbd259903e3e22565c926141f494"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.40.0", output
  end
end
