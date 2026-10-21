class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  version "0.4.20"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.20/wavespeed-darwin-arm64"
      sha256 "48b4824ee64af7f7e15c8fe9ad6153f186ac9b06253549155494d40b624b4fa6"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.20/wavespeed-darwin-x64"
      sha256 "695fc6254a03d3e576b7eb89deaac29271a59cb77fa21dfc406174f39c0aff6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.20/wavespeed-linux-arm64"
      sha256 "f9e0154d94773cbfcd43e5791f7fbf71d90046d523412451f8170639af5f75c0"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.20/wavespeed-linux-x64"
      sha256 "83a1a89772278a45e7b5321d84783a2d184f41d346d7f0715b1d9845752f1952"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
