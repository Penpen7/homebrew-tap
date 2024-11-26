class Workq < Formula
  desc "A simple temporary workspace manager"
  homepage "https://github.com/Penpen7/workq"
  head "https://github.com/Penpen7/workq.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Penpen7/workq/releases/download/v0.0.1/workq-aarch64-apple-darwin.tar.gz"
      sha256 "65eb536433f36e74baf282b85a15603fbe130c9a054133ab03aae9db4c8ac80f"
    else
      url "https://github.com/Penpen7/workq/releases/download/v0.0.1/workq-x86_64-apple-darwin.tar.gz"
      sha256 "68058a16fa0cdbb2f97198fa2e4fb7d13c5634c750f90a0df6bfe84e6f1e59c4"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/Penpen7/workq/releases/download/v0.0.1/workq-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/Penpen7/workq/releases/download/v0.0.1/workq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02751ba3d4f281c111ce35ca7380a04da2df191a8d1a2224212b1ef60032815a"
    end
  end

  def install
    bin.install "workq"
  end
end
