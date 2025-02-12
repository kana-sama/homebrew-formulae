class Asar < Formula
  desc "Official repository of the SNES assembler Asar, originally created by Alcaro"
  homepage "https://github.com/RPGHacker/asar"
  url "https://github.com/RPGHacker/asar", using: :git, branch: "asar_19"
  version "1.91"
  license "GPL-3.0-or-later"

  depends_on "cmake" => :build

  def install
    system "cmake", "src", *std_cmake_args
    system "make"
    system "make", "run-tests"
    system "make", "install"
  end

  test do
    assert shell_output("#{bin}/asar --version").start_with?("Asar 1.91,")
  end
end
