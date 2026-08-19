class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  url "https://registry.npmjs.org/@wavespeed/cli/-/cli-0.4.2.tgz"
  sha256 "4a650819ad8d41cf22c95b4aa1b41046e1bf6b9aa8963a7b2c356469df0c0003"
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
