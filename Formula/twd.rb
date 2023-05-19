# Generated with JReleaser 1.2.0 at 2023-05-19T23:19:22.366733+05:30
class Twd < Formula
  desc "Understand and break down large classes without breaking a sweat."
  homepage "https://github.com/LegacyCodeHQ/tumbleweed"
  url "https://github.com/LegacyCodeHQ/tumbleweed/releases/download/twd-0.48.0/twd-0.48.0.zip"
  version "0.48.0"
  sha256 "365e621eac9a6cffb1b15dd76eb890a107d6f6ae347fc6ceb02b534ca3fc8134"
  license "Apache-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/twd" => "twd"
  end

  test do
    output = shell_output("#{bin}/twd --version")
    assert_match "0.48.0", output
  end
end
