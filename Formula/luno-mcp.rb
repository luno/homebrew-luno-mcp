# Install with:
#   brew tap luno/luno-mcp
#   brew install luno-mcp

class LunoMcp < Formula
  desc "MCP server for the Luno cryptocurrency exchange API"
  homepage "https://github.com/luno/luno-mcp"
  license "MIT"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-darwin-arm64.tar.gz"
      sha256 "7d51670f3a8dd10266b05ab2baa61c13352a8a3da4d559d64f964590fcec9768"
    end

    on_intel do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-darwin-amd64.tar.gz"
      sha256 "c104e31697d40663c8058cc661a7cef48e9831a37422223036ebafdbd1f691b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-linux-arm64.tar.gz"
      sha256 "9d00afdb1967921aa194f7c80c4cf557ceeda99a3bd98b4ae1aa1eb1d14ea852"
    end

    on_intel do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-linux-amd64.tar.gz"
      sha256 "5ae3f1234441cc3c529d58675d26ea7c92c4c2748794c308c4789a90d5beecee"
    end
  end

  def install
    bin.install "luno-mcp"
  end

  test do
    assert_predicate bin/"luno-mcp", :exist?
  end
end
