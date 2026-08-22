class Dotmatch < Formula
  desc "Deterministic known-target short-DNA assignment engine"
  homepage "https://dnncha.github.io/dotmatch/"
  url "https://github.com/dnncha/dotmatch/releases/download/v0.2.2/dotmatch-0.2.2.tar.gz"
  sha256 "c441aaafb6b29db51560d3fc68c52a8ad01ed0f08158a89544c1d9366f12fce8"
  license "Apache-2.0"

  uses_from_macos "zlib"

  def install
    system ENV.cc, "-O3", "-std=c11", "-Wall", "-Wextra", "-Wpedantic",
           "-Iinclude", "-DDOTMATCH_VERSION=\"#{version}\"", "src/qda.c", "src/qdalign.c",
           "src/qdmetal_stub.c", "-o", "dotmatch", "-lz", "-pthread"
    bin.install "dotmatch"
  end

  test do
    assert_equal "dotmatch #{version}", shell_output("#{bin}/dotmatch --version").chomp
    assert_equal "1", shell_output("#{bin}/dotmatch dist ACGT AGGT").chomp
  end
end
