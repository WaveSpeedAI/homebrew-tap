class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.24/wavespeed-darwin-arm64"
      sha256 "d9673c67776a48fa5bd0021a01844e4bb74a458848021388166944d023e1418a"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.24/wavespeed-darwin-x64"
      sha256 "5ab1e1278322735142825fcf7dbac504ff579372e93f1c93a6ae6e7b54702535"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.24/wavespeed-linux-arm64"
      sha256 "7f0cfa50ab1fe18e3ca59dbc915c84ccba402dab9c0d93a48070fa34d470cc92"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.24/wavespeed-linux-x64"
      sha256 "5f1db4f416a594e43873e38c6bbdf7a3eb6f0116eb8120b2585710bc0067c03b"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
