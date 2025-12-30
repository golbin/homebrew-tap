class Gw < Formula
  desc "git worktree helper"
  homepage "https://github.com/golbin/gw"
  version "0.1.0"
  url "https://github.com/golbin/gw/releases/download/v0.1.0/gw-v0.1.0-x86_64-apple-darwin.tar.gz"
  sha256 "105ce1859e9dc8ffb8a9f5a4bd7653b8082beee6b8be24684692f7d5dd93a73b"

  def install
    bin.install "gw"
  end
end
