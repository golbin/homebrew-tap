class Pman < Formula
  desc "Tmux Session/Worktree Manager TUI"
  homepage "https://github.com/golbin/pman"
  url "https://github.com/golbin/pman/releases/download/v0.1.4/pman-v0.1.4-darwin-arm64.tar.gz"
  sha256 "b5b17a580154f58950fd2029d7cc022a112bed77db64fbf0de68f624dafc6def"
  license "MIT"

  depends_on :macos
  depends_on "tmux"

  def install
    bin.install "pman"
  end

  def caveats
    <<~EOS
      To set up tmux keybindings, run:
        pman install

      Then reload your tmux config:
        tmux source-file ~/.tmux.conf
    EOS
  end

  test do
    assert_match "pman", shell_output("#{bin}/pman --version")
  end
end
