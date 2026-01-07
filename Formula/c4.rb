class C4 < Formula
  desc "C4 architecture visualization tool"
  homepage "https://github.com/panbanda/c4"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.3/c4_0.1.3_aarch64-apple-darwin.tar.gz"
      sha256 "523c8df016371ca426a2ce318b523bfcc8fbb3b677af7f645d449e3a75cd112d"
    else
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.3/c4_0.1.3_x86_64-apple-darwin.tar.gz"
      sha256 "388ca07d9c351d441fb5d1be64da7e6460008fcd6a4319aa8a4c156a70ab71c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.3/c4_0.1.3_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14b52975f216514975075a664332aa31a1cfdcc885498ae51e2de89c3856b7ef"
    else
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.3/c4_0.1.3_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bb5c31d572ae7b9ab7927ed4b2c6a1a9b4d7689dd7bd07fb7b9d75e0e3abd58"
    end
  end

  def install
    bin.install "c4"
  end

  test do
    system "#{bin}/c4", "--version"
  end
end
