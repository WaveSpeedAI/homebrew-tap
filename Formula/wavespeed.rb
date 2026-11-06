class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.29/wavespeed-darwin-arm64"
      sha256 "f790bd8fd0ee63905c6d83cb65372fcba2256d53c28fde43c92b7014347ec98b"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.29/wavespeed-darwin-x64"
      sha256 "fc3e8a58927620cd434777a234792f50d10ee85d2c34b16e83efb41420dd3aa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.29/wavespeed-linux-arm64"
      sha256 "1699e0d47d53a3e83aee7e70fb24225776e5eea99eaf0a5939ddbc668fd65fbb"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.29/wavespeed-linux-x64"
      sha256 "aa511a72c8eb0dcfbc2de93f7e3a21ee6fd21edb24a7572b761982eb58e0c26c"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
