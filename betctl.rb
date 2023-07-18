# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class Betctl < Formula
  desc ""
  homepage ""
  version "2.100.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.100.6/betting.test.framework_2.100.6_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c627dff669459f66317dc7df0bde92055c24e0d8f9625c5d5b82641083bf72a7"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.100.6/betting.test.framework_2.100.6_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3cdb824d796b3aa0cc2de74152f8f8d8e4c6900db41ac98ad866add94a1ab1fd"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.100.6/betting.test.framework_2.100.6_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "17b8708ae03638cb125e5cb587b72dddfb8069d451cfd7376c2c8a4d00024792"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.100.6/betting.test.framework_2.100.6_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4eed2eaf3048aec853ddea7fb941e482488735827f0d673d1789b0264d160826"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end
end
