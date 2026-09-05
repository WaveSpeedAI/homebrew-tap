class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  url "https://registry.npmjs.org/@wavespeed/cli/-/cli-0.4.7.tgz"
  sha256 "8d667a1d21d146eb0b41bf9598c607fa8ebd984015e9a885ab5dd50d32e0dfc3"
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
