class C4 < Formula
  desc "C4 architecture visualization tool"
  homepage "https://github.com/panbanda/c4"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.4/c4_0.1.4_aarch64-apple-darwin.tar.gz"
      sha256 "87aba0b2b9aab0132be211091524b182b8607a22c25189c8ae9089f580fb01ee"
    else
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.4/c4_0.1.4_x86_64-apple-darwin.tar.gz"
      sha256 "4930a8208adda5667532e737685c67af413d7d2db117ca98b2b0df7e21d71193"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.4/c4_0.1.4_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3a9b580ae8be953cdeea59dafdef3091613ba21eead9ec5c406971090c0964c5"
    else
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.4/c4_0.1.4_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cdf68fc3f2c15f5946d818c650273af4ad67b5461bce3e8e803effd3f9741a75"
    end
  end

  def install
    bin.install "c4"
  end

  test do
    system "#{bin}/c4", "--version"
  end
end
