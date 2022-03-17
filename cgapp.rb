# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cgapp < Formula
  desc "A powerful CLI for the Create Go App project. Create a new production-ready project with backend, frontend and deploy automation by running one CLI command!"
  homepage "https://create-go.app/"
  version "v3.6.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/create-go-app/cli/releases/download/v3.6.1/cgapp_v3.6.1_macOS_arm64.tar.gz"
      sha256 "3a9936c844a96d29e6d1f46c7f743c3a8dd5a744ddad40b1e88bada5dac38120"

      def install
        bin.install "cgapp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/create-go-app/cli/releases/download/v3.6.1/cgapp_v3.6.1_macOS_x86_64.tar.gz"
      sha256 "05480df3bb20114deeb132dbbc9cb85d5f3ee3bb61e84ba5a5f03a287335e7d4"

      def install
        bin.install "cgapp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/create-go-app/cli/releases/download/v3.6.1/cgapp_v3.6.1_Linux_x86_64.tar.gz"
      sha256 "b5e7013aa8e11a3588a51d49dd7395c50efa9582a738f7bafeb9a321dd72adf2"

      def install
        bin.install "cgapp"
      end
    end
  end

  depends_on "npm"
  depends_on "git"
  depends_on "go"

  def caveats; <<~EOS
    Create a new project via interactive console UI into current folder by using `cgapp create` command. A helpful documentation and next steps with your project is here https://create-go.app/
  EOS
  end
end
