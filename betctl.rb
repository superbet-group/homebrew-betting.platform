# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class Betctl < Formula
  desc ""
  homepage ""
  version "2.85.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.85.2/betting.test.framework_2.85.2_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "81633196108831cf1fdb01c0cbdd57a02449b8819ef9e3ee78b72fa3765a3d81"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.85.2/betting.test.framework_2.85.2_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c1969ce3ea93472a9c456ec8fb091df48fcacde22fb3b8b9deef63c736794a5e"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.85.2/betting.test.framework_2.85.2_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "17d60064c680694c72ed780569a93a51ac2208de3715e39e1bd7d25c17c21115"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.85.2/betting.test.framework_2.85.2_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d12048e1d0a300567c2a17f85e0c2d84506adc07a0b5d450d64662026cbf4756"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end
end
