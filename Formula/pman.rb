class Pman < Formula
  desc "Tmux Session/Worktree Manager TUI"
  homepage "https://github.com/golbin/pman"
  url "https://github.com/golbin/pman/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0d2d42920619f8ab9cce29fd24f03e64db6407e248ce7de28fad93682395078b"
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
