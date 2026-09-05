class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  url "https://registry.npmjs.org/@wavespeed/cli/-/cli-0.4.8.tgz"
  sha256 "cd66f6d0f948d1f266ae913b007ce469f238ab129eee09c76a9f95fc0005b659"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "wavespeed", shell_output("#{bin}/wavespeed --help")
  end
end
