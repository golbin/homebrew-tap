class Gw < Formula
  desc "git worktree helper"
  homepage "https://github.com/golbin/gw"
  version "0.1.0"
  url "https://github.com/golbin/gw/releases/download/v0.1.0/gw-v0.1.0-x86_64-apple-darwin.tar.gz"
  sha256 "6d86af698e8612ab0d84ba9b160e2f915955d55fbd903671461a725064da9a87"

  def install
    bin.install "gw"
  end
end
