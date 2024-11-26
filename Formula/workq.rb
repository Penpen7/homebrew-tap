class Workq < Formula
  desc "A simple temporary workspace manager"
  homepage "https://github.com/Penpen7/workq"
  head "https://github.com/Penpen7/workq.git", branch: "main"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/Penpen7/workq/releases/download/v0.0.1/workq-aarch64-apple-darwin.tar.gz"
      sha256 "87d2f9415efb09f3f14b391be90c5698bc2501907021bb3e112d83ddc829941f"
    else
      url "https://github.com/Penpen7/workq/releases/download/v0.0.1/workq-x86_64-apple-darwin.tar.gz"
      sha256 "185c0bd21eb3178f53eb798e3d0089b25211afcc496ce2c56f76828c7b13aa04"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/Penpen7/workq/releases/download/v0.0.1/workq-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/Penpen7/workq/releases/download/v0.0.1/workq-x86_64-unknown-linux-musl.tar.gz"
      sha256 "11df0c301a8bdb724e59111772a738162079529e4baadd375e7e3a72916745e9"
    end
  end

  def install
    bin.install "workq"
  end
end
