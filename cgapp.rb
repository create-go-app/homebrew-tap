# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cgapp < Formula
  desc "A powerful CLI for the Create Go App project. Create a new production-ready project with backend, frontend and deploy automation by running one CLI command!"
  homepage "https://create-go.app/"
  version "v1.7.5"
  license "Apache-2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/create-go-app/cli/releases/download/v1.7.5/cgapp_v1.7.5_macOS_x86_64.tar.gz"
    sha256 "e8b87032c8345d538083dec588c5a66ffd20e64e375ab990c181afb7e047f754"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/create-go-app/cli/releases/download/v1.7.5/cgapp_v1.7.5_macOS_arm64.tar.gz"
    sha256 "07c5a20bdd7dde0d5af59b6054b8fcf1aeab6952a01f93d6e44944bdc705ff0d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/create-go-app/cli/releases/download/v1.7.5/cgapp_v1.7.5_Linux_x86_64.tar.gz"
    sha256 "117fdd04a98a3172960aa1d8540563a162b794bd290da514b07da3109a8bde40"
  end

  depends_on "git"
  depends_on "go"

  def install
    bin.install "cgapp"
  end

  def caveats; <<~EOS
    Create a new project via interactive console UI into current folder by using `cgapp create` command.
  EOS
  end
end
