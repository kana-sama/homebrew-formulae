class Nesasm < Formula
  desc "NES 6502 assembler"
  homepage "https://github.com/camsaul/nesasm"
  license "NOASSERTION"
  version "3.1"
  
  url "https://github.com/camsaul/nesasm.git",
    :using => :git

  def install
    system "make", "-C", "source", "CFLAGS=-Wno-int-conversion\ -O4"
    bin.install "nesasm"
  end
end
