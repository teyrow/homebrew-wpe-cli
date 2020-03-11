# This file was generated by GoReleaser. DO NOT EDIT.
class WpeCli < Formula
  desc "WP Engine DevKit Command Line Interface"
  homepage "https://wpengine.com"
  version "0.16.8"
  bottle :unneeded

  if OS.mac?
    url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.16.8/wpe-cli_0.16.8_darwin_amd64.tar.gz"
    sha256 "2052b6105cb63dc37e15c1a3f3fd1fd544faa5ee73ee2261aed25b910a4039b1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.16.8/wpe-cli_0.16.8_linux_amd64.tar.gz"
      sha256 "bc3b84948942ce39bd9322cf096fd0efd87c7f7670f6a33148cd155f7643da83"
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
