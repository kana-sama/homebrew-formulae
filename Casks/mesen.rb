cask "mesen" do
  name "Meson"
  desc "Multi-system emulator (NES, SNES, GB, GBA, PCE, SMS/GG) for Windows, Linux and macOS"
  homepage "https://github.com/SourMesen/Mesen2"
  version :latest
  
  depends_on formula: "sdl2"
  
  sha256 :no_check
  url "https://nightly.link/SourMesen/Mesen2/workflows/build/master/Mesen%20(macOS%20-%20macos-14%20-%20clang_aot).zip",
    verified: "nightly.link"

  app "Mesen.app"
  binary "#{appdir}/Mesen.app/Contents/MacOS/Mesen", target: "mesen"
end
