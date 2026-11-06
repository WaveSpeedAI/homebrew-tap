class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.30/wavespeed-darwin-arm64"
      sha256 "ea4a905128a16a780cbde704d07a4f38e9c8091eaaca12b3cc9ab2feee986545"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.30/wavespeed-darwin-x64"
      sha256 "e9d5d656fb3989bd52a8fd0f67a9b28a9fd72b548cc0b34a5b3c81cd7ea89909"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.30/wavespeed-linux-arm64"
      sha256 "16e4d0c3771debc575395bd0447283029a75cbe495ca8bb09ed8e0cabbecb2ba"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.30/wavespeed-linux-x64"
      sha256 "b4e845689dcb5ee50170852018ebfe10b0a43115b38ffb3e61e37bc5f65d5cbd"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
