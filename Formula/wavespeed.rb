class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.31/wavespeed-darwin-arm64"
      sha256 "6b8a41b17c7d8697ca4531346fb3cec766d8e4d68b5d52ecbae9b9411da2b5ed"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.31/wavespeed-darwin-x64"
      sha256 "9097457355a5ccf822c58db604fd2e2f1469918257ff6b6309717aa9fa5acdbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.31/wavespeed-linux-arm64"
      sha256 "4f37c8e07a11dce3354a2a3ff626019618f82a9491c7dc7b29539cd82966b5ba"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.31/wavespeed-linux-x64"
      sha256 "3a03ac3ac2df1adc6a031c10eff3f5d80d283d1aac58fa52a4774f0812ffd563"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
