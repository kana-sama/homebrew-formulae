class Nesasm < Formula
  desc "NES 6502 assembler"
  homepage "https://github.com/camsaul/nesasm"
  url "https://github.com/camsaul/nesasm.git", using: :git
  version "3.1"

  def install
    system "make", "-C", "source", "CFLAGS=-Wno-int-conversion -O4"
    bin.install "nesasm"
  end

  test do
    assert shell_output(bin/"nesasm").start_with?("NES Assembler (v3.1)")
  end
end
