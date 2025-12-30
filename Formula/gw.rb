class Gw < Formula
  desc "git worktree helper"
  homepage "https://github.com/golbin/gw"
  version "0.1.0"
  url "https://github.com/golbin/gw/releases/download/v0.1.0/gw-v0.1.0-x86_64-apple-darwin.tar.gz"
  sha256 "b74c5419d517a4e6ffa228c9bd188b6e7120c56122ee9587785a3e7d66b2bc4c"

  def install
    bin.install "gw"
  end
end
