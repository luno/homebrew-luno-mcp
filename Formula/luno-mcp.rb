# Install with:
#   brew tap luno/luno-mcp
#   brew install luno-mcp

class LunoMcp < Formula
  desc "MCP server for the Luno cryptocurrency exchange API"
  homepage "https://github.com/luno/luno-mcp"
  license "MIT"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-darwin-arm64.tar.gz"
      sha256 "8f505503619427aa2aab95b72d36a60872e89b206391d02f8a6c51780fe41063"
    end

    on_intel do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-darwin-amd64.tar.gz"
      sha256 "b3607bb412de49343fe16fe220d57d24572fffcd3de2d9f53929dd93ee62f0e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-linux-arm64.tar.gz"
      sha256 "7a775bd2f20f1cc26b5fedf278ade923a09fdf2d2b8c1f8cff4876f84f21f341"
    end

    on_intel do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-linux-amd64.tar.gz"
      sha256 "4974dd06273538f1582c64d0ae36ad024b7c2983000a536626629cb4e8e7a319"
    end
  end

  def install
    bin.install "luno-mcp"
  end

  test do
    assert_predicate bin/"luno-mcp", :exist?
  end
end
