class MailsendGo < Formula
  desc "A CLI tool to send mail via SMTP protocol"
  homepage "https://github.com/muquit/mailsend-go"
  version "1.0.13"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/muquit/mailsend-go/releases/download/v1.0.13/mailsend-go-v1.0.13-darwin-arm64.d.tar.gz"
    sha256 "af83cb504c5367d368cb7612af30ceab11a5ba33067543c164c004699bdce4d2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/muquit/mailsend-go/releases/download/v1.0.13/mailsend-go-v1.0.13-darwin-amd64.d.tar.gz"
    sha256 "28b22d05e04e4c81941a3543c59c67daa0dce7b906cd7d523fa514ed57028222"
  end
  
  def install
    if Hardware::CPU.arm?
      bin.install "mailsend-go-v#{version}-darwin-arm64" => "mailsend-go"
    else
      bin.install "mailsend-go-v#{version}-darwin-amd64" => "mailsend-go"
    end
  end
end
