class Asar < Formula
  desc "(Now) official repository of the SNES assembler Asar, originally created by Alcaro"
  homepage "https://github.com/RPGHacker/asar"
  license "NOASSERTION"
  version "1.91"
  
  url "https://github.com/RPGHacker/asar",
    :using => :git,
    :branch => "asar_19"

  depends_on "cmake" => :build

  def install
    system "cmake", "src", *std_cmake_args
    system "make"
    system "make", "run-tests"
    system "make", "install"
  end
end
