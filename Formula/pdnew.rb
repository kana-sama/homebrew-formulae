class Pdnew < Formula
  desc "CLI tool for creating new project for Playdate"
  homepage "https://github.com/fnc12/pdnew"
  url "https://github.com/fnc12/pdnew", using: :git, branch: "main"
  version "1.0"

  depends_on "catch2" => :build
  depends_on "cmake" => :build

  def install
    system "sed", "-i", "", "s/FetchContent_MakeAvailable(Catch2)/find_package(Catch2 3 CONFIG)/", "CMakeLists.txt"
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install"
  end

  test do
    assert shell_output(bin/"pdnew").start_with?("missing project name after pdnew")
  end
end
