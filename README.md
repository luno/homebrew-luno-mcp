# homebrew-luno-mcp

Homebrew tap for [luno-mcp](https://github.com/luno/luno-mcp) — a Model Context Protocol (MCP) server that connects AI assistants like Claude to the [Luno](https://www.luno.com) cryptocurrency exchange API.

## Installation

```bash
brew tap luno/luno-mcp
brew install luno-mcp
```

## Usage with Claude Desktop

Add the following to your Claude Desktop config (`~/Library/Application Support/Claude/claude_desktop_config.json`):

```json
{
  "mcpServers": {
    "luno": {
      "command": "luno-mcp",
      "args": ["--transport", "stdio"],
      "env": {
        "LUNO_API_KEY_ID": "your_api_key_id",
        "LUNO_API_SECRET": "your_api_secret"
      }
    }
  }
}
```

API keys can be created in the [Luno API settings](https://www.luno.com/wallet/security/api).

## Updating

```bash
brew upgrade luno-mcp
```

## More information

See the [luno-mcp repository](https://github.com/luno/luno-mcp) for full documentation, available tools, and other installation methods.
