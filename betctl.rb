# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class Betctl < Formula
  desc ""
  homepage ""
  version "2.135.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.135.0/betctl_2.135.0_macos_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "2fb7bdc5c39a4bf0b7ce5612023f3f72f23bc891f733944a0fcdd48fa739443e"

      def install
        bin.install "betctl"
        prefix.install "betctl-p10k.zsh"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.135.0/betctl_2.135.0_macos_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ab3d40bc8213c928388733e1471c48c394c6dbaa647327619feaff9431eb36aa"

      def install
        bin.install "betctl"
        prefix.install "betctl-p10k.zsh"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.135.0/betctl_2.135.0_linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "30e6818003726b22e33bf08a05bc86e44ec49c666f211a60c3db3bad193f4d5a"

      def install
        bin.install "betctl"
        prefix.install "betctl-p10k.zsh"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end

  def caveats
    <<~EOS
      To activate powerlevel10k integration, add the following line to .zshrc:

        source #{opt_prefix}/betctl-p10k.zsh

      Good luck with your testing endeavours :)
    EOS
  end

  test do
    system "#{bin}/betctl --help"
  end
end
