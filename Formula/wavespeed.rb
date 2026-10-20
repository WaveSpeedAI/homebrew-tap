class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  version "0.4.19"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.19/wavespeed-darwin-arm64"
      sha256 "668ea88f24b7bb7add2b755e71db80e685c7b2fb1a83cb79ab20dc122217a166"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.19/wavespeed-darwin-x64"
      sha256 "82822249db8397ac5b835f115b1f1fdb3e97b67ab222d8cd4333631e825c0355"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.19/wavespeed-linux-arm64"
      sha256 "c4eafbfaaf6df5c8e3a225fd33e30e6712b75cca3f144c9ed3c71aba0ab7d2c0"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.19/wavespeed-linux-x64"
      sha256 "d8a130934d0b038d1b7fd1ee67ccbab7b333fe159c03138fde57e2b276fac766"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
