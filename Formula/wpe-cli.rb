# This file was generated by GoReleaser. DO NOT EDIT.
class WpeCli < Formula
  desc "WP Engine DevKit Command Line Interface"
  homepage "https://wpengine.com"
  version "0.14.6"
  bottle :unneeded

  if OS.mac?
    url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.14.6/wpe-cli_0.14.6_darwin_amd64.tar.gz"
    sha256 "d820bcb1c230a9b13d2b3a41e2f9dd8c2af5a293e6f0d4567b6fa307df68b4b3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.14.6/wpe-cli_0.14.6_linux_amd64.tar.gz"
      sha256 "241bc107ed0cb8e6a0b8a5856fbb757e10a9354e6260661177b6cc13b5b0c959"
    end
  end
  
  devel do
    url "https://s3-us-east-2.amazonaws.com/wpeclinightly/wpe-cli/nightly/wpe-cli_nightly_darwin_amd64.tar.gz"
  end

  def install
    bin.install "wpe"
  end

  test do
    system "#{bin}/wpe version"
  end
end
