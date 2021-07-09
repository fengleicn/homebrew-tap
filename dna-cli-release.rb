# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DnaCli < Formula
  desc "You can download by yourself from https://git.dian.so/devops/dna-cli/-/raw/master/release/dna-cli-0.0.1"
  homepage ""
  url "https://git.dian.so/devops/dna-cli/-/raw/master/release/dna-cli-0.0.1"
  sha256 "74d5a8ff67a9a7afe0634802cdb6f8215404e4ea2a4bf2d2127a72c55bf63fa5"
  license "BSD-2-Clause"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "mv", "dna-cli-0.0.1", "dna-cli"
    bin.install "dna-cli"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test dna-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
