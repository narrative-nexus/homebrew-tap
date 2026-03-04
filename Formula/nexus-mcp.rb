class NexusMcp < Formula
  desc "MCP server for Narrative Nexus — AI-powered TTRPG companion"
  homepage "https://narrative.sh"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/narrative-nexus/homebrew-tap/releases/download/v0.1.0/nexus-mcp_darwin_arm64.tar.gz"
      sha256 "0df0168bc64055fff2bad0f260e4ec6a6afe51d3cbf4edc3ae33c6ddfd511142"
    else
      url "https://github.com/narrative-nexus/homebrew-tap/releases/download/v0.1.0/nexus-mcp_darwin_amd64.tar.gz"
      sha256 "8021da614d1e6d68fc14785ddfd23c6a981a8c27fcc22c9f5896e66efd4c9eaa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/narrative-nexus/homebrew-tap/releases/download/v0.1.0/nexus-mcp_linux_arm64.tar.gz"
      sha256 "c38deec5bf57949d0630cba573b8f33c4c98f07cb2d74e5bb5d19d458436b2d8"
    else
      url "https://github.com/narrative-nexus/homebrew-tap/releases/download/v0.1.0/nexus-mcp_linux_amd64.tar.gz"
      sha256 "8a278668a63af00bcf7a3a3874486bc5d17213aded2206bb09630885ace1ce30"
    end
  end

  def install
    bin.install "nexus-mcp"
  end

  test do
    system "#{bin}/nexus-mcp", "--version"
  end
end
