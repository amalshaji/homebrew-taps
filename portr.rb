# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Portr < Formula
  desc ""
  homepage "https://github.com/amalshaji/portr"
  version "0.0.25-beta"

  on_macos do
    on_intel do
      url "https://github.com/amalshaji/portr/releases/download/0.0.25-beta/portr_0.0.25-beta_Darwin_x86_64.zip"
      sha256 "ce19869b43ed7c2e8bf79d5cd6cc786bab6f868c6566e4e390f6bbf1fe6facfc"

      def install
        bin.install "portr"
      end
    end
    on_arm do
      url "https://github.com/amalshaji/portr/releases/download/0.0.25-beta/portr_0.0.25-beta_Darwin_arm64.zip"
      sha256 "a8e97c4bae3e73bd44d3d84f7424ed2ecb8cbd819f7f68f53b88ad0af3a80c51"

      def install
        bin.install "portr"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/amalshaji/portr/releases/download/0.0.25-beta/portr_0.0.25-beta_Linux_x86_64.zip"
        sha256 "a997f1af9879f629eff3eb05340c8f66bec30693ac022231b68177a678d49bc2"

        def install
          bin.install "portr"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/amalshaji/portr/releases/download/0.0.25-beta/portr_0.0.25-beta_Linux_arm64.zip"
        sha256 "f5b87b4a267303d85de0fb99b0374834976722a70432171bbf9d0a88ddf0dca9"

        def install
          bin.install "portr"
        end
      end
    end
  end
end
