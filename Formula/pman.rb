class Pman < Formula
  desc "Tmux Session/Worktree Manager TUI"
  homepage "https://github.com/golbin/pman"
  url "https://github.com/golbin/pman/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "e22ee644806841b218b041402b3feafaabcdc56b79b9bf8d57172cd1619df207"
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
