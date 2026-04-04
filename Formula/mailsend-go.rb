class MailsendGo < Formula
  desc "A CLI tool to send mail via SMTP protocol"
  homepage "https://github.com/muquit/mailsend-go"
  version "1.0.11"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/muquit/mailsend-go/releases/download/v1.0.11/mailsend-go-v1.0.11-darwin-arm64.d.tar.gz"
    sha256 "3acb085287119fb14dc4a2659e0f29f57fc1528a205bfeb9f3ecf82258110ed2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/muquit/mailsend-go/releases/download/v1.0.11/mailsend-go-v1.0.11-darwin-amd64.d.tar.gz"
    sha256 "0a053ed90fbb27cac513218d6d15c5fba0dde3ca559221c9410dcc0b674a7d5c"
  end
  
  def install
    if Hardware::CPU.arm?
      bin.install "mailsend-go-v#{version}-darwin-arm64" => "mailsend-go"
    else
      bin.install "mailsend-go-v#{version}-darwin-amd64" => "mailsend-go"
    end
  end
end
