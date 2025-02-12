class Pdnew < Formula
  desc "CLI tool for creating new project for Playdate"
  homepage "https://github.com/fnc12/pdnew"
  license "NOASSERTION"
  version "1.0"
  
  url "https://github.com/fnc12/pdnew",
    :using => :git,
    :branch => "main"

  depends_on "cmake" => :build
  depends_on "catch2" => :build

  def install
    system "sed", "-i", "", "s/FetchContent_MakeAvailable(Catch2)/find_package(Catch2 3 CONFIG)/", "CMakeLists.txt"
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end
end
