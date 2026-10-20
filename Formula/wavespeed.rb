class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  version "0.4.17"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.17/wavespeed-darwin-arm64"
      sha256 "fc2ed333e90a19c4793603b91068470a576928f71b736bff69f1fae3cdaba059"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.17/wavespeed-darwin-x64"
      sha256 "75a33a43a05301e1e6d21e59fc3925cb992dc6569cb952db72c30d5bda61ddaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.17/wavespeed-linux-arm64"
      sha256 "6149ce835acfcbf739a9d9aa1845bdee8eaa90b0acd52d428879e84d08e8f6b1"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.17/wavespeed-linux-x64"
      sha256 "55eeb1efa082b131a1ee361e2c1390500251727199f978d954a72013b091946b"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
