class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  version "0.4.18"
  license "MIT"

  # Standalone executables from the CLI's GitHub Releases: no Node.js needed.
  on_macos do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.18/wavespeed-darwin-arm64"
      sha256 "cfa67548203dbe048dc881c5060d453f3ca10dbfb120770a3b5b13ce9724bd24"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.18/wavespeed-darwin-x64"
      sha256 "6e78588c11c637a1d1f7b64d83665d7a470522ba9b02a0920569baca90e978b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.18/wavespeed-linux-arm64"
      sha256 "085460858c1751b6b657135c8137a20f8bc2092dcde035798d1f1164dc1a90b9"
    end
    on_intel do
      url "https://github.com/WaveSpeedAI/wavespeed-cli/releases/download/v0.4.18/wavespeed-linux-x64"
      sha256 "0a1e48b05de8605f34790282076554c3257876a346881827deb932615c10125c"
    end
  end

  def install
    bin.install Dir["wavespeed-*"].first => "wavespeed"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wavespeed --version")
  end
end
