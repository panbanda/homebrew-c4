class C4 < Formula
  desc "C4 architecture visualization tool"
  homepage "https://github.com/panbanda/c4"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.5/c4_0.1.5_aarch64-apple-darwin.tar.gz"
      sha256 "56d702fe2cb21d5c88667b3877f2bacef4d40e5831d766ec26ca5fce3f11458e"
    else
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.5/c4_0.1.5_x86_64-apple-darwin.tar.gz"
      sha256 "ded580eb3627b462e1fb4ad7983ed0c2ef92dc0e8c44456292773bb7c93188f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.5/c4_0.1.5_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a39c17d15c80af5e852cd23f9bff10195059bd2d56de0320e9bcc3aa433f022"
    else
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.5/c4_0.1.5_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f427811b19f1805d56e6b60ec5bd2f3dd5b79036b4b4674e8cbd3c8049abe3b"
    end
  end

  def install
    bin.install "c4"
  end

  test do
    system "#{bin}/c4", "--version"
  end
end
