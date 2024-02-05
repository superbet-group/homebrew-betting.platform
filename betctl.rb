# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class Betctl < Formula
  desc ""
  homepage ""
  version "2.138.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.138.2/betctl_2.138.2_macos_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0643c35957c89c6e6764fa651eca3daacd43605a781644a4873273e14256bd5c"

      def install
        bin.install "betctl"
        prefix.install "betctl-p10k.zsh"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.138.2/betctl_2.138.2_macos_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "62567b5bfa0d579682dbdfc00f23bfba7d035aacab48e04f6a70bbdb062c4e8c"

      def install
        bin.install "betctl"
        prefix.install "betctl-p10k.zsh"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.138.2/betctl_2.138.2_linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "137578bc6f48bbf2633941774821c5ecffb81fb48cc0914569b04256039a7bf3"

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
