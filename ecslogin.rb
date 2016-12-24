# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ecslogin < Formula
  desc "Login to ECS instance or container by ECS service name"
  homepage "https://github.com/suhirotaka/homebrew-ecslogin"
  url "https://github.com/suhirotaka/homebrew-ecslogin/raw/master/ecslogin.tar.gz"
  version "1.0.0"
  sha256 "270a994b90a4e2d93d08f82ff43c1739c71b5ff5e7531217513856c0058710dd"

  # depends_on "cmake" => :build
  depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
#    system "./configure", "--disable-debug",
#                          "--disable-dependency-tracking",
#                          "--disable-silent-rules",
#                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
#    system "make"
    bin.install "ecslogin"
  end

  def caveats
    msg = <<-EOF.undent
ecslogin successfully installed.
EOF
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ecs`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
     system "false"
  end
end
