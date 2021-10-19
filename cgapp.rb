# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cgapp < Formula
  desc "A powerful CLI for the Create Go App project. Create a new production-ready project with backend, frontend and deploy automation by running one CLI command!"
  homepage "https://create-go.app/"
  version "v3.2.0"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/create-go-app/cli/releases/download/v3.2.0/cgapp_v3.2.0_macOS_x86_64.tar.gz"
      sha256 "a9308c98272ff595e9d5e9376b0c2ddf171929e3332a47573ad560930defe681"
    end
    if Hardware::CPU.arm?
      url "https://github.com/create-go-app/cli/releases/download/v3.2.0/cgapp_v3.2.0_macOS_arm64.tar.gz"
      sha256 "67098675398f4a63f9dd626e3d619da7b05936c96f79b94f763a789b8d8dc0bd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/create-go-app/cli/releases/download/v3.2.0/cgapp_v3.2.0_Linux_x86_64.tar.gz"
      sha256 "6b6d4f724f107f30a75cf54111b73496b6844ee356b46edea33ecb5aafc8825b"
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
