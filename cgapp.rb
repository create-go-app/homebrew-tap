# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cgapp < Formula
  desc "A powerful CLI for the Create Go App project. Create a new production-ready project with backend, frontend and deploy automation by running one CLI command!"
  homepage "https://create-go.app/"
  version "v3.1.2"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/create-go-app/cli/releases/download/v3.1.2/cgapp_v3.1.2_macOS_arm64.tar.gz"
      sha256 "d88240f70cdefeaf8c26f5c2b272d16f6b4fec7042776670fe5a6d94ac8f6c95"
    end
    if Hardware::CPU.intel?
      url "https://github.com/create-go-app/cli/releases/download/v3.1.2/cgapp_v3.1.2_macOS_x86_64.tar.gz"
      sha256 "d87d103e89725dc6751d7e6ffb40ec331505d40f2941900e07e3c40c86f5e970"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/create-go-app/cli/releases/download/v3.1.2/cgapp_v3.1.2_Linux_x86_64.tar.gz"
      sha256 "75b951b454cd27415a9d6a784785a03e4119c68f83150ba6a52dd6f3cbf320c7"
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
