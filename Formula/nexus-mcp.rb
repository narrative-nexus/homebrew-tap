class NexusMcp < Formula
  desc "MCP server for Narrative Nexus — AI-powered TTRPG companion"
  homepage "https://narrative.sh"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/narrative-nexus/narrative-nexus/releases/download/nexus-mcp/v0.1.0/nexus-mcp_darwin_arm64.tar.gz"
      sha256 "ef1b46c2a0cb2618a0d17b078ccc0010318616c8adfe9b5799e7a3f5fe89cf2b"
    else
      url "https://github.com/narrative-nexus/narrative-nexus/releases/download/nexus-mcp/v0.1.0/nexus-mcp_darwin_amd64.tar.gz"
      sha256 "db74766d836b42bcf145d3d7d3ff90c177a48d72ca443bd5f4d5a9bc948081d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/narrative-nexus/narrative-nexus/releases/download/nexus-mcp/v0.1.0/nexus-mcp_linux_arm64.tar.gz"
      sha256 "2c640a40c5708111dc6383b5c8cb01a7c6b520e46232fa83eb112262846cc9f9"
    else
      url "https://github.com/narrative-nexus/narrative-nexus/releases/download/nexus-mcp/v0.1.0/nexus-mcp_linux_amd64.tar.gz"
      sha256 "e37d6d6fb62b7118f57e6565a321197856b5ca2a76bbf6761ae086d97e020cda"
    end
  end

  def install
    bin.install "nexus-mcp"
  end

  test do
    system "#{bin}/nexus-mcp", "--version"
  end
end
