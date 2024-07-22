# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class Betctl < Formula
  desc ""
  homepage ""
  version "2.157.0"

  on_macos do
    on_intel do
      url "https://github.com/superbet-group/betting.cli/releases/download/v2.157.0/betctl_2.157.0_macos_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "470fbf894c0c94c402ed46e7d9a933784fdc3c9009740ae42ae19123632ae5c8"

      def install
        bin.install "betctl"
        prefix.install "betctl-p10k.zsh"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    on_arm do
      url "https://github.com/superbet-group/betting.cli/releases/download/v2.157.0/betctl_2.157.0_macos_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c62da71ccceb72670cc5b1a73e5df8609542528fa69e37d64c4971971b3dae30"

      def install
        bin.install "betctl"
        prefix.install "betctl-p10k.zsh"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/superbet-group/betting.cli/releases/download/v2.157.0/betctl_2.157.0_linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "e9006363f2d5de02d1fe9f4e6f17019fcce449e9ab18abd3fdd92d4e7f3dfba5"

        def install
          bin.install "betctl"
          prefix.install "betctl-p10k.zsh"
          generate_completions_from_executable(bin/"betctl", "completion")
        end
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
