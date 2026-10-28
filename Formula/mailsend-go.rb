class MailsendGo < Formula
  desc "A CLI tool to send mail via SMTP protocol"
  homepage "https://github.com/muquit/mailsend-go"
  version "1.0.14"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/muquit/mailsend-go/releases/download/v1.0.14/mailsend-go-v1.0.14-darwin-arm64.d.tar.gz"
    sha256 "4fa5c20ff5f04f18c0ffa6bed335e8aed2407b39d92b3fda700489e2904371a8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/muquit/mailsend-go/releases/download/v1.0.14/mailsend-go-v1.0.14-darwin-amd64.d.tar.gz"
    sha256 "95a8d6bc484a97271e9cab5203eef1c1c1a943c166b9ac323c4baf485caed421"
  end
  
  def install
    if Hardware::CPU.arm?
      bin.install "mailsend-go-v#{version}-darwin-arm64" => "mailsend-go"
    else
      bin.install "mailsend-go-v#{version}-darwin-amd64" => "mailsend-go"
    end
  end
end
