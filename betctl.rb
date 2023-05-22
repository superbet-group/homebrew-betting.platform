# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class Betctl < Formula
  desc ""
  homepage ""
  version "2.93.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.93.0/betting.test.framework_2.93.0_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "3ba281fa405f287dddb6057a3d7e8020b8a0ce2509de39e82050ba47ee4d4645"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.93.0/betting.test.framework_2.93.0_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "246651e31ff5de64d77dcab1848467e6aae880786ab516eb9d6ab69df31e3600"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.93.0/betting.test.framework_2.93.0_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a19c25a54b9e3f757d6f485814bb7ccb338a2fa7c7b3def94e051a87803b38d7"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.93.0/betting.test.framework_2.93.0_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "0ed311b8a3d01ac8ba70c07d0d33935b8253074295a7548ac08723aac8b82432"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end
end
