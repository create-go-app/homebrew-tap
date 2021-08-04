# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cgapp < Formula
  desc "A powerful CLI for the Create Go App project. Create a new production-ready project with backend, frontend and deploy automation by running one CLI command!"
  homepage "https://create-go.app/"
  version "v2.2.6"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/create-go-app/cli/releases/download/v2.2.6/cgapp_v2.2.6_macOS_x86_64.tar.gz"
      sha256 "0e5064edcb4374b3f17934b16036b2dabbfdf402728aed1a886e0ebec2828cc4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/create-go-app/cli/releases/download/v2.2.6/cgapp_v2.2.6_macOS_arm64.tar.gz"
      sha256 "527e05a256fe66d783658202b6e093a77e94e2e10917e659b1d012576488d1e4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/create-go-app/cli/releases/download/v2.2.6/cgapp_v2.2.6_Linux_x86_64.tar.gz"
      sha256 "0c0c1904e6d503f2b0b6cfcafe2545b78305edbbc75166007c80b5f2e0ee1286"
    end
  end

  depends_on "git"
  depends_on "go"

  def install
    bin.install "cgapp"
  end

  def caveats; <<~EOS
    Create a new project via interactive console UI into current folder by using `cgapp create` command. A helpful documentation and next steps with your project is here https://create-go.app/
  EOS
  end
end
