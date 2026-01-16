class Pman < Formula
  desc "Tmux Session/Worktree Manager TUI"
  homepage "https://github.com/golbin/pman"
  url "https://github.com/golbin/pman/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "2ac5f6d0705ffff639971a26b38a0f346c0fd5c81ef1310580e0833360bf9e7e"
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
