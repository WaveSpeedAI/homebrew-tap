class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.25/wavespeed-darwin-arm64"
      sha256 "f9c45afda26caff62ad4d3a7988823c7359a27384d4d9a339d4768bbc993b291"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.25/wavespeed-darwin-x64"
      sha256 "80e429692ecde2b112de04fe80856049f9963495402ce899b38148741be5f079"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.25/wavespeed-linux-arm64"
      sha256 "50292b86be010c5627c44356d007fa69a1348c7bd9ba74dacff6df217933fc01"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.25/wavespeed-linux-x64"
      sha256 "271137937cfb464281ae758d5da8ae5194beb8205c6ec9166a0b58a1303e5c6e"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
