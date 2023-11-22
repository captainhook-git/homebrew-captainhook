# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Captainhook < Formula
  desc "CaptainHook is a flexible git hooks manager that makes sharing git hooks a breeze"
  homepage "http://captainhook.info/"
  version "0.9.12"
  license "MIT"

  depends_on "git"
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/captainhook-go/captainhook/releases/download/0.9.12/captainhook_Darwin_arm64.tar.gz"
      sha256 "0c6121418ac11fd7738e2d0cb5e9284024c02df745b3f6727e8363cda6e2def3"

      def install
        bin.install "captainhook"
        ln_s "captainhook", "#{HOMEBREW_PREFIX}/bin/git-ch", :force => true
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/captainhook-go/captainhook/releases/download/0.9.12/captainhook_Darwin_x86_64.tar.gz"
      sha256 "cc31ddfe96bb6f4f660c761352d7da30327cce8757a38e9882352ea6b2f51963"

      def install
        bin.install "captainhook"
        ln_s captainhook, "#{HOMEBREW_PREFIX}/bin/git-ch", :force => true
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/captainhook-go/captainhook/releases/download/0.9.12/captainhook_Linux_arm64.tar.gz"
      sha256 "d3f96fdab3a8d00816a4b910dea07b7fb22ca923c5fc09f9beed45047b953221"

      def install
        bin.install "captainhook"
        ln_s captainhook, "#{HOMEBREW_PREFIX}/bin/git-ch", :force => true
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/captainhook-go/captainhook/releases/download/0.9.12/captainhook_Linux_x86_64.tar.gz"
      sha256 "9560b78e1a63e8493b07aa58209613788a5504e163f1e5050dd663dfb581f96e"

      def install
        bin.install "captainhook"
        ln_s captainhook, "#{HOMEBREW_PREFIX}/bin/git-ch", :force => true
      end
    end
  end
end
