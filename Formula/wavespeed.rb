class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  version "0.4.16"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.16/wavespeed-darwin-arm64"
      sha256 "7974125dbfba2a9a755673fb675dfe5cf79ae55bc0d70029b8e1dedc30dd2c9b"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.16/wavespeed-darwin-x64"
      sha256 "e2834f01de70dfc180e077e4114c4bf76c7bb66a539952698b0da1300c1db880"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.16/wavespeed-linux-arm64"
      sha256 "6a650a89c0a46b7d6adc2a602d695bb9935abc7b4b634e7ee9171587ddca8115"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.16/wavespeed-linux-x64"
      sha256 "ade1599336ad2b04fc7a6dd858871e28e125a950100da7e878a0b5ae4b1997d2"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
