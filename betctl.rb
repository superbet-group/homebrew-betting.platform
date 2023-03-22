# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class Betctl < Formula
  desc ""
  homepage ""
  version "2.84.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.84.21/betting.test.framework_2.84.21_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ffb09870c7bcc443bbda548ecee6943b98b9090ed2a54b65da35a538392ee73e"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.84.21/betting.test.framework_2.84.21_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "47983beeaf485da96eaa4db62800e605a0cdbd7710135767b0954079f22098a3"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.84.21/betting.test.framework_2.84.21_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ad069fa22dbbea817644c840992cc63464424406cff47ab59f9ce4b8c3209579"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/superbet-group/betting.test.framework/releases/download/v2.84.21/betting.test.framework_2.84.21_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b1351f75e4c590137ac6b14c472f881159b1cc9d2008bebc4ad0957a7106c9c7"

      def install
        bin.install "betctl"
        generate_completions_from_executable(bin/"betctl", "completion")
      end
    end
  end
end
