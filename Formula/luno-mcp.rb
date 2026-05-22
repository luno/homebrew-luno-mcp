# Install with:
#   brew tap luno/luno-mcp
#   brew install luno-mcp

class LunoMcp < Formula
  desc "MCP server for the Luno cryptocurrency exchange API"
  homepage "https://github.com/luno/luno-mcp"
  license "MIT"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-darwin-arm64.tar.gz"
      sha256 "229804a6e053b5d5e0049037af00e2ac2979224c98b27bf81cf5bb2cd1c3b2fb"
    end

    on_intel do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-darwin-amd64.tar.gz"
      sha256 "ef7a8a44eab2e65a080f7fb1ef6431736aaa1ad57cd3702828c6de481676bf0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-linux-arm64.tar.gz"
      sha256 "ce7aa1d33c5dd8a390c500cde5757c9f3a0f75aac2a7fcd1db5a34b5ca5118ba"
    end

    on_intel do
      url "https://github.com/luno/luno-mcp/releases/download/v#{version}/luno-mcp-linux-amd64.tar.gz"
      sha256 "31c773524a6133274320ccafd7cc64648734e8d8c44b58c60d4794402b817dfc"
    end
  end

  def install
    bin.install "luno-mcp"
  end

  test do
    assert_predicate bin/"luno-mcp", :exist?
  end
end
