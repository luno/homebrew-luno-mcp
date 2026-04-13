# Install with:
#   brew tap luno/luno-mcp
#   brew install luno-mcp

class LunoMcp < Formula
  desc "MCP server for the Luno cryptocurrency exchange API"
  homepage "https://github.com/luno/luno-mcp"
  license "MIT"
  version "PLACEHOLDER"

  on_macos do
    on_arm do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64_SHA256"
    end

    on_intel do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64_SHA256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    end

    on_intel do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64_SHA256"
    end
  end

  def install
    bin.install "luno-mcp"
  end

  test do
    assert_predicate bin/"luno-mcp", :exist?
  end
end
