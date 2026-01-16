class Pman < Formula
  desc "Tmux Session/Worktree Manager TUI"
  homepage "https://github.com/golbin/pman"
  url "https://github.com/golbin/pman/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9b8892e2503d74a35fc56a6e3ee80f78343880e9a02513d51776c89b670ce415"
  license "MIT"

  depends_on "rust" => :build
  depends_on "tmux"

  def install
    system "cargo", "install", *std_cargo_args
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
