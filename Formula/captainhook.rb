# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Captainhook < Formula
  desc "CaptainHook is a flexible git hooks manager that makes sharing git hooks a breeze"
  homepage "http://captainhook.info/"
  version "1.2.1"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/captainhook-go/captainhook/releases/download/1.2.1/captainhook_Darwin_x86_64.tar.gz"
      sha256 "7172396362c8c499423c32310d3e0796aa22203bb88d877b1f0ce9108ff556ba"

      def install
        bin.install "captainhook"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/captainhook-go/captainhook/releases/download/1.2.1/captainhook_Darwin_arm64.tar.gz"
      sha256 "6dc376e44c214a17694efe9bc440b1ab56ac071afb0b3031071b5338e1e3ae92"

      def install
        bin.install "captainhook"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/captainhook-go/captainhook/releases/download/1.2.1/captainhook_Linux_x86_64.tar.gz"
        sha256 "64c0c6b7877244e84a50f4109fd396da89b1ff0ce2f67b4c6d20935ff7795127"

        def install
          bin.install "captainhook"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/captainhook-go/captainhook/releases/download/1.2.1/captainhook_Linux_arm64.tar.gz"
        sha256 "cdecc2e1eaff458212ab8458f7058f563885a449a10c6fe3c2774ee62dbaec94"

        def install
          bin.install "captainhook"
        end
      end
    end
  end
end
