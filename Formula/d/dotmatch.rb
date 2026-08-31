class Dotmatch < Formula
  desc "Deterministic known-target short-DNA assignment engine"
  homepage "https://dnncha.github.io/dotmatch/"
  url "https://github.com/dnncha/dotmatch/releases/download/v0.4.0/dotmatch-0.4.0.tar.gz"
  sha256 "367cb89e0b54e35286d51107e487f8656aa0f1277eeb9716978b4087ee9864bb"
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
