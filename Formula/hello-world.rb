class HelloWorld < Formula
  desc "Simple hello world utility"
  homepage "https://github.com/muquit/hello-world"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/muquit/hello-world/releases/download/v1.0.1/hello-world-v1.0.1-darwin-arm64.tar.gz"
    sha256 "2f19e0d0a763c248f5d1e2cc4f9519029dfeb0732e14597da6916f58488a6311"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/muquit/hello-world/releases/download/v1.0.1/hello-world-v1.0.1-darwin-amd64.d.tar.gz"
    sha256 "29da5466839e7eaab10db6a7b34100eff1362aaa8fdb28d4d0473207966b4f73"
  end

  def install
    bin.install "hello-world-v#{version}-darwin-#{Hardware::CPU.arch}"
  end
end
