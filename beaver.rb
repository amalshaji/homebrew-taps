# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Beaver < Formula
  desc ""
  homepage "https://github.com/amalshaji/beaver"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/amalshaji/beaver/releases/download/0.1.0/beaver_0.1.0_Darwin_arm64.zip"
      sha256 "7cfef7077474518750f65218e4ec3cffe3dbd1f0a9b090f814cffb00c2e9d0fc"

      def install
        bin.install "beaver"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/amalshaji/beaver/releases/download/0.1.0/beaver_0.1.0_Darwin_x86_64.zip"
      sha256 "52a221c20011b175585c5063b2609acedfb51c71d92c21d1a0da693c763164b1"

      def install
        bin.install "beaver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/amalshaji/beaver/releases/download/0.1.0/beaver_0.1.0_Linux_arm64.zip"
      sha256 "ad12c46ba861dd2a0349b01709a65edcbfc1d7cb6b6260b4e2322bb7b80471d8"

      def install
        bin.install "beaver"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/amalshaji/beaver/releases/download/0.1.0/beaver_0.1.0_Linux_x86_64.zip"
      sha256 "21a5e5ab2a11b0bc4ae6c8770c56fc210968fc7524bf8ede53213b7a7a6a6563"

      def install
        bin.install "beaver"
      end
    end
  end
end
