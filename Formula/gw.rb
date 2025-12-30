class Gw < Formula
  desc "git worktree helper"
  homepage "https://github.com/golbin/gw"
  version "0.1.0"
  url "https://github.com/golbin/gw/releases/download/v0.1.0/gw-v0.1.0-x86_64-apple-darwin.tar.gz"
  sha256 "7fab10939c8be5f4cb0fdb4e8e6c287aab3b11894b12eb2c67a1770fefd1f743"

  def install
    bin.install "gw"
  end
end
