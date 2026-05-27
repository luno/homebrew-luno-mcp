# Install with:
#   brew tap luno/luno-mcp
#   brew install luno-mcp

class LunoMcp < Formula
  desc "MCP server for the Luno cryptocurrency exchange API"
  homepage "https://github.com/luno/luno-mcp"
  license "MIT"
  version "0.6.3"

  on_macos do
    on_arm do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-darwin-arm64.tar.gz"
      sha256 "e052c69e1353cf057aa3486c70577c9945f2ea2173984ff1e58d468628a57875"
    end

    on_intel do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-darwin-amd64.tar.gz"
      sha256 "25cbc9487e352338e671fb96d41933787f845ddf54f8266e3cf4b168d5d0122f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-linux-arm64.tar.gz"
      sha256 "427bde9b8aef144bd643936f65ec624060fcb856cad9a267a35ce02c54d229f8"
    end

    on_intel do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-linux-amd64.tar.gz"
      sha256 "17f5cbc0c4966b907841f18d997723a2651c42bdfe7d8dbc4c61ba11800ba3d5"
    end
  end

  def install
    bin.install "luno-mcp"
  end

  test do
    assert_predicate bin/"luno-mcp", :exist?
  end
end
