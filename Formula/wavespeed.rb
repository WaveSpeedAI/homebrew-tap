class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.28/wavespeed-darwin-arm64"
      sha256 "ca1ff37c082bc286f95654d3e26aaa9be4b3344cdcf248cd9b4d19bfd6594393"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.28/wavespeed-darwin-x64"
      sha256 "1bcdcf4e18e50dac068a39d3ea29e0653e841cb1ea680a71e6701d8cad5636d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.28/wavespeed-linux-arm64"
      sha256 "c37c7ff2ccc3dd78029d32a3842a71affa47bc8590ccdf943ad212da4bdc61a9"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.28/wavespeed-linux-x64"
      sha256 "25f73dece91898dce1a5f7e90639252f850e46d6e95a69810fc6b2b7c5afdb75"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
