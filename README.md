# Turbo Flow Claude v3.4.1

<div align="center">

![Version](https://img.shields.io/badge/version-3.4.1-blue?style=for-the-badge)
![Claude Flow](https://img.shields.io/badge/Claude_Flow-V3-purple?style=for-the-badge)
![RuVector](https://img.shields.io/badge/RuVector-Neural_Engine-green?style=for-the-badge)
![Skills](https://img.shields.io/badge/Skills-36_Built_in-orange?style=for-the-badge)
![Plugins](https://img.shields.io/badge/Plugins-15-critical?style=for-the-badge)
![License](https://img.shields.io/badge/license-MIT-orange?style=for-the-badge)

**Complete Agentic Development Environment - Claude Flow V3 + RuVector + Plugins**

[Quick Start](#-quick-start) | [Installation](#-what-gets-installed) | [Skills](#-skills-36-built-in) | [Plugins](#-plugins-15-total) | [Commands](#️-key-commands) | [Resources](#-resources)

</div>

---

## What's New in v3.4.1

| Metric | v3.3.0 | v3.4.1 | Change |
|--------|--------|--------|--------|
| Installation Steps | 18 | **15** | -3 (streamlined) |
| Native Skills | 36 (claimed install) | **36 built-in** | Clarified |
| Plugins | 15 | **15** | - |
| Custom Skills | 5 | **5** | - |
| Bash Aliases | 50+ | **50+** | - |

### Major Fixes in v3.4.1

- **FIXED:** Removed non-existent `skill install` command (skills are built-in to claude-flow)
- **FIXED:** Changed `plugin` to `plugins` (correct subcommand)
- **FIXED:** Added npm fallback for Claude Code installation
- **FIXED:** Manual MCP config creation when `claude mcp add` fails
- **FIXED:** Removed Unicode characters for better terminal compatibility
- **FIXED:** Removed verbose `set -x` from post-setup.sh

---

## Architecture

```
+------------------------------------------------------------------+
|                    TURBO FLOW v3.4.1                              |
+------------------------------------------------------------------+
|  INTERFACE                                                        |
|  +---------------+  +---------------+  +---------------+           |
|  | Claude Code   |  | Agent Browser |  |  Statusline   |           |
|  |     CLI       |  |  Automation   |  |     Pro       |           |
|  +---------------+  +---------------+  +---------------+           |
+------------------------------------------------------------------+
|  NEURAL ENGINE: RuVector                                          |
|  +-------+  +-------+  +-------+  +-------+  +-------+            |
|  | SONA  |  | HNSW  |  |  MoE  |  | EWC++ |  |  GNN  |            |
|  +-------+  +-------+  +-------+  +-------+  +-------+            |
+------------------------------------------------------------------+
|  ORCHESTRATION: Claude Flow V3                                    |
|  60+ Agents  |  175+ MCP Tools  |  Background Workers             |
+------------------------------------------------------------------+
|  SKILLS (36 Built-in to Claude Flow)                              |
|  +--------------------------------------------------------------+ |
|  | Core(6) | AgentDB(4) | GitHub(4) | V3Dev(9) | Reasoning(2)  | |
|  | FlowNexus(3) | Additional(8)                                   | |
|  +--------------------------------------------------------------+ |
+------------------------------------------------------------------+
|  PLUGINS (15 Total)                                               |
|  +--------------------------------------------------------------+ |
|  | QE(2) | CodeIntel(1) | Cognitive(2) | Perf(3) | Neural(2)    | |
|  | Domain(3) | WASM(1) | Upstream(1)                            | |
|  +--------------------------------------------------------------+ |
+------------------------------------------------------------------+
|  MEMORY SYSTEM                                                    |
|  HNSW Vector Search | AgentDB SQLite | LearningBridge | 3-Scope  |
+------------------------------------------------------------------+
|  TESTING          |  SECURITY        |  SPECS                      |
|  Agentic QE       |  Security Scan   |  OpenSpec                   |
+------------------------------------------------------------------+
```

---

## Quick Start

### DevPod Installation

<details>
<summary><b>macOS</b></summary>

```bash
brew install loft-sh/devpod/devpod
```
</details>

<details>
<summary><b>Windows</b></summary>

```bash
choco install devpod
```
</details>

<details>
<summary><b>Linux</b></summary>

```bash
curl -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64"
sudo install devpod /usr/local/bin
```
</details>

### Launch

```bash
devpod up https://github.com/marcuspat/turbo-flow-claude --ide vscode
```

---

## What Gets Installed

The `setup.sh` script installs the complete stack in **15 automated steps**:

### Step 1: Build Tools

| Package | Purpose |
|:--------|:--------|
| `build-essential` | C/C++ compiler (gcc, g++, make) |
| `python3` | Python runtime |
| `git` | Version control |
| `curl` | HTTP client |
| `jq` | JSON processor (required for statusline) |

---

### Step 2: Claude Code CLI

Installs Claude Code CLI with fallback methods:
- Primary: npm install `@anthropic-ai/claude-code`
- Fallback: Official installer from `claude.ai/install.sh`

---

### Step 3: Claude Flow V3 + RuVector

> **Delegated to official installer** - handles everything automatically

| Component | Purpose |
|:----------|:--------|
| Node.js 20+ | JavaScript runtime |
| Claude Code CLI | AI coding assistant |
| `claude-flow@alpha` | 60+ agents, 175+ MCP tools |
| `ruvector` | Vector DB + GNN + self-learning |

---

### Step 4: Claude Flow Browser

Integrated browser automation with 59 MCP tools:
- browser/open, browser/snapshot, browser/click
- Trajectory learning, security scanning

---

### Step 5: Plugins (15)

> **Note:** Plugins are installed via `claude-flow plugins install -n <name>`

#### Quality Engineering Plugins (2)

| Plugin | Purpose |
|:-------|:--------|
| `agentic-qe` | Autonomous quality engineering, test generation |
| `test-intelligence` | Smart test selection, coverage optimization |

#### Code Intelligence Plugins (1)

| Plugin | Purpose |
|:-------|:--------|
| `code-intelligence` | AST analysis, code understanding, refactoring |

#### Cognitive Plugins (2)

| Plugin | Purpose |
|:-------|:--------|
| `cognitive-kernel` | Meta-cognition, self-reflection, reasoning |
| `hyperbolic-reasoning` | Hyperbolic geometry for complex reasoning |

#### Performance Plugins (3)

| Plugin | Purpose |
|:-------|:--------|
| `perf-optimizer` | Performance profiling, optimization suggestions |
| `quantum-optimizer` | Quantum-inspired optimization algorithms |
| `prime-radiant` | Predictive performance modeling |

#### Neural Plugins (2)

| Plugin | Purpose |
|:-------|:--------|
| `neural-coordination` | Multi-agent neural coordination |
| `ruvector-upstream` | Direct RuVector integration |

#### Domain-Specific Plugins (3)

| Plugin | Purpose |
|:-------|:--------|
| `financial-risk` | Financial modeling, risk assessment |
| `healthcare-clinical` | Clinical workflows, medical terminology |
| `legal-contracts` | Contract analysis, legal document processing |

#### Infrastructure Plugins (2)

| Plugin | Purpose |
|:-------|:--------|
| `gastown-bridge` | WASM bridge for high-performance computing |
| `teammate-plugin` | Team collaboration, role assignment |

---

### Steps 6-8: Memory, MCP, and Custom Skills

| Component | Purpose |
|:----------|:--------|
| Memory System | HNSW vector search, AgentDB SQLite |
| MCP Server | 175+ tools registered |
| Security Analyzer | Vulnerability scanning |
| UI UX Pro Max | UI/UX design assistance |
| Worktree Manager | Git worktree management |

---

### Step 9: Statusline Pro

Multi-component statusline across 3 lines:

```
LINE 1: [Project] name | [Model] Sonnet | [Git] branch | [v] version
LINE 2: [Tokens] 50k/200k | [Ctx] #######--- 65% | [Cost] $1.23 | [Time] 5m
LINE 3: [+150] [-50] | [READY]
```

---

### Steps 10-13: Workspace, Aliases, Doctor

| Component | Purpose |
|:----------|:--------|
| Workspace directories | src, tests, docs, scripts, config, plans |
| Bash aliases | 50+ shortcuts |
| Doctor check | System diagnostics |

---

## Skills (36 Built-in)

> **IMPORTANT:** Skills are **built-in to Claude Flow** - they are NOT installed via a command. They are available automatically when Claude Flow is initialized.

### Core Skills (6)

| Skill | Purpose |
|:------|:--------|
| `sparc-methodology` | SPARC development methodology |
| `swarm-orchestration` | Multi-agent coordination |
| `github-code-review` | AI-powered PR reviews |
| `agentdb-vector-search` | HNSW vector search |
| `pair-programming` | Driver/Navigator AI coding |
| `hive-mind-advanced` | Queen-led collective intelligence |

### AgentDB Skills (4)

| Skill | Purpose |
|:------|:--------|
| `agentdb-advanced` | QUIC sync, multi-database |
| `agentdb-learning` | RL algorithms (Q-Learning, etc.) |
| `agentdb-memory-patterns` | Session memory, pattern learning |
| `agentdb-optimization` | Quantization, HNSW indexing |

### GitHub Skills (4)

| Skill | Purpose |
|:------|:--------|
| `github-multi-repo` | Cross-repository coordination |
| `github-project-management` | Issues, project boards, sprints |
| `github-release-management` | Versioning, deployment |
| `github-workflow-automation` | CI/CD pipeline automation |

### V3 Development Skills (9)

| Skill | Purpose |
|:------|:--------|
| `v3-cli-modernization` | Interactive prompts |
| `v3-core-implementation` | DDD domains, clean architecture |
| `v3-ddd-architecture` | Bounded contexts, microkernel |
| `v3-integration-deep` | Deep agentic-flow integration |
| `v3-mcp-optimization` | Sub-100ms MCP response |
| `v3-memory-unification` | Unified AgentDB backend |
| `v3-performance-optimization` | Flash Attention optimization |
| `v3-security-overhaul` | CVE remediation |
| `v3-swarm-coordination` | 15-agent hierarchical mesh |

### ReasoningBank Skills (2)

| Skill | Purpose |
|:------|:--------|
| `reasoningbank-agentdb` | Trajectory tracking |
| `reasoningbank-intelligence` | Pattern recognition, meta-cognition |

### Flow Nexus Skills (3)

| Skill | Purpose |
|:------|:--------|
| `flow-nexus-neural` | Neural network training |
| `flow-nexus-platform` | Auth, sandboxes, deployment |
| `flow-nexus-swarm` | Cloud-based swarm deployment |

### Additional Skills (8)

| Skill | Purpose |
|:------|:--------|
| `agentic-jujutsu` | Quantum-resistant version control |
| `hooks-automation` | Pre/post task hooks |
| `performance-analysis` | Bottleneck detection |
| `skill-builder` | Create custom skills |
| `stream-chain` | Multi-agent streaming |
| `swarm-advanced` | Advanced distributed workflows |
| `verification-quality` | Truth scoring, rollback |
| `dual-mode` | Dual-mode operations |

---

## Plugins (15 Total)

### Plugin Quick Commands

```bash
# Quality Engineering
plugin-qe              # Run agentic-qe
plugin-test-intel      # Run test-intelligence

# Code Intelligence
plugin-code-intel      # Run code-intelligence

# Cognitive
plugin-cognitive       # Run cognitive-kernel
plugin-hyperbolic      # Run hyperbolic-reasoning

# Performance
plugin-perf            # Run perf-optimizer
plugin-quantum         # Run quantum-optimizer
plugin-prime           # Run prime-radiant

# Neural
plugin-neural          # Run neural-coordination

# Domain
plugin-financial       # Run financial-risk
plugin-healthcare      # Run healthcare-clinical
plugin-legal           # Run legal-contracts
```

---

## Directory Structure

```
~/.claude/
├── skills/
│   └── (custom skills only - security-analyzer, ui-ux-pro-max, worktree-manager)
├── commands/
│   └── prd2build.md
├── settings.json
├── turbo-flow-statusline.sh
└── claude_desktop_config.json (MCP config)

~/.config/claude/
└── mcp.json (alternative MCP config)

$WORKSPACE/
├── src/
├── tests/
├── docs/
├── scripts/
├── config/
├── plans/
├── .claude-flow/
│   ├── memory/
│   │   └── agent.db
│   ├── plugins/
│   └── config.yaml
├── .swarm/
│   └── memory.db
├── package.json
└── .claude-flow-prompts.md
```

---

## Post-Setup

```bash
# 1. Reload shell
source ~/.bashrc

# 2. Verify installation
turbo-status

# 3. Get help
turbo-help

# 4. Run post-setup verification
./post-setup.sh
```

---

## Key Commands

<details>
<summary><b>Status & Help</b></summary>

```bash
turbo-status    # Check all components
turbo-help      # Complete command reference
cf-doctor       # Claude Flow health check
```
</details>

<details>
<summary><b>RuVector</b></summary>

```bash
ruv                  # Start RuVector
ruv-stats            # Learning statistics
ruv-route "task"     # Route to best agent
ruv-remember "ctx"   # Store in memory
ruv-recall "query"   # Search memory
ruv-viz              # Start visualization dashboard
```
</details>

<details>
<summary><b>Claude Flow V3</b></summary>

```bash
cf-init              # Initialize workspace
cf-wizard            # Interactive setup
cf-swarm             # Hierarchical swarm
cf-mesh              # Mesh swarm
cf-doctor            # Health check
cf-daemon            # Start daemon
cf-mcp               # Start MCP server
cf-memory            # Memory operations
cf-plugins           # Plugin management
```
</details>

<details>
<summary><b>Memory & Neural</b></summary>

```bash
mem-search           # Search memory
mem-vsearch          # Vector search (HNSW)
mem-vstore           # Store vector
mem-stats            # Memory statistics
neural-train         # Train neural
neural-patterns      # Neural patterns
```
</details>

<details>
<summary><b>Browser Automation</b></summary>

```bash
cfb-open <url>       # Open URL via MCP
cfb-snap             # Take snapshot
cfb-click            # Click element
cfb-fill             # Fill form
cfb-trajectory       # Start trajectory learning
cfb-learn            # Save pattern
```
</details>

<details>
<summary><b>Workflow</b></summary>

```bash
wt-status            # Worktree status
wt-clean             # Cleanup worktrees
wt-create            # Create worktree
deploy               # Deploy to Vercel
deploy-preview       # Deploy with preview URL
```
</details>

---

## Documentation

| Document | Description |
|:---------|:------------|
| `README.md` | This file |
| `V3_WORKFLOW_GUIDE.md` | Workflow guide |
| `release_notes_3.4.1.md` | Release notes |
| `Turbo_Flow_v3.4.1_Scripts_Analysis.md` | Technical analysis |

---

## Resources

| Resource | Link |
|:---------|:-----|
| Claude Flow V3 | [GitHub: ruvnet/claude-flow](https://github.com/ruvnet/claude-flow) |
| RuVector | [GitHub: ruvnet/ruvector](https://github.com/ruvnet/ruvector) |
| Turbo Flow | [GitHub: marcuspat/turbo-flow-claude](https://github.com/marcuspat/turbo-flow-claude) |
| Agentic QE | [npm: agentic-qe](https://npmjs.com/package/agentic-qe) |

---

## Version History

| Version | Date | Changes |
|:--------|:-----|:--------|
| **v3.4.1** | Feb 2025 | **Fixes**: Removed skill install (built-in), fixed plugins command, npm fallback for Claude Code |
| v3.4.0 | Feb 2025 | Complete + Plugins: 36 skills, 15 plugins |
| v3.3.0 | Feb 2025 | Complete installation: 41 skills, memory, MCP |

---

<div align="center">

**Built for the Claude ecosystem**

*All 36 built-in skills. All 15 plugins. All 175+ MCP tools. One command.*

</div>
