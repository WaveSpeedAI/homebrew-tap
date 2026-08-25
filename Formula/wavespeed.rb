class Wavespeed < Formula
  desc "CLI for WaveSpeed AI: generate images, video, audio, and 3D from the terminal"
  homepage "https://wavespeed.ai"
  url "https://registry.npmjs.org/@wavespeed/cli/-/cli-0.4.5.tgz"
  sha256 "a0cb43b51f4c345947c9974283c1c9b86aa2b4a7241e2fa1ed00c554253b6901"
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
