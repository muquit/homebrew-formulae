class MailsendGo < Formula
  desc "A CLI tool to send mail via SMTP protocol"
  homepage "https://github.com/muquit/mailsend-go"
  version "1.0.12"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/muquit/mailsend-go/releases/download/v1.0.12/mailsend-go-v1.0.12-darwin-arm64.d.tar.gz"
    sha256 "ea129adcf3e513d7ce05e7b604f0dd933029d2e5eb27dcb7c261aefcc99a57cb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/muquit/mailsend-go/releases/download/v1.0.12/mailsend-go-v1.0.12-darwin-amd64.d.tar.gz"
    sha256 "e1d33568309f1951e95d430793492c3b1d9565498987ec4dd0a3f79a9b1b2b0b"
  end
  
  def install
    if Hardware::CPU.arm?
      bin.install "mailsend-go-v#{version}-darwin-arm64" => "mailsend-go"
    else
      bin.install "mailsend-go-v#{version}-darwin-amd64" => "mailsend-go"
    end
  end
end
