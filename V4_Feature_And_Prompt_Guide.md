# Turbo Flow v4 + Ruflo v3.5 — Complete Feature & Prompt Index

> Every feature in the guide, organized by category, with the exact prompt name you can search for.
> **54 copy-paste prompts** across **34 sections** covering **every operation**.

---

## Setup & Environment (Section 1-3)

| # | Feature | Prompt / Command | What It Does |
|---|---------|-----------------|--------------|
| 1 | DevPod install | `devpod up https://github.com/marcuspat/turbo-flow --ide vscode` | One-command full environment |
| 2 | Codespaces install | Push to GitHub → Open in Codespace | Auto-runs setup script |
| 3 | Manual install | `setup-turboflow-4.sh` | 10-step automated install |
| 4 | Ruflo init | `npx ruflo@latest init --wizard` | Initialize Ruflo in any project |
| 5 | MCP registration | `claude mcp add ruflo -- npx -y ruflo@latest mcp start` | Connect Ruflo to Claude Code |
| 6 | First project setup | `rf-init` → `gnx-analyze` → `bd init` → `hooks-train` | Full project bootstrap |
| 7 | Post-setup verify | `./post-setup-turboflow-4.sh` | 13 automated checks |
| 8 | Generate CLAUDE.md | `./scripts/generate-claude-md.sh` | Auto-gen with memory protocol, cost guardrails |
| 9 | Session boot | `source ~/.bashrc && rf-wizard && rf-doctor && bd ready && gnx-analyze && hooks-train && rf-daemon && turbo-status` | One-line full boot |
| 10 | Three-tier memory | Beads → Native Tasks → AgentDB | Decision tree for what goes where |

---

## Core Workflow Phases (Section 4-7)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 11 | PRD from idea | **4.1 — PRD from a Business Idea** | Full PRD generation with P0/P1/P2 features |
| 12 | PRD from research | **4.2 — PRD from Existing Research** | Consolidate notes into PRD |
| 13 | PRD for existing codebase | **4.3 — PRD for an Existing Codebase** | PRD that references existing architecture |
| 14 | ADR/DDD planning | **5.1 — Research-Driven ADR/DDD Planning** | Full architecture plan without implementing |
| 15 | API-heavy variation | **5.2 — Variations (API)** | Add API spec to the plan |
| 16 | UI-heavy variation | **5.2 — Variations (UI)** | Add component architecture to the plan |
| 17 | Data-heavy variation | **5.2 — Variations (Data)** | Add data architecture to the plan |
| 18 | Customize CLAUDE.md | **6.1 — Customize CLAUDE.md** | Project-specific agent instructions |
| 19 | Customize statusline | **6.2 — Customize Statusline** | DDD-aware status display |
| 20 | Pretrain on plan | **6.3 — Pretrain Ruflo on the Plan** | `hooks-train` + `neural-train` + `aqe-gate` |
| 21 | Full implementation | **7.1 — Full Implementation** | Swarm implement everything until done |
| 22 | Incremental (one context) | **7.2 — Incremental** | Implement one bounded context at a time |
| 23 | Parallel implementation | **7.3 — Parallel Implementation** | Multiple worktrees + rf-swarm |

---

## Swarm Orchestration (Section 8)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 24 | Hierarchical swarm | **Prompt: Hierarchical Feature Swarm** | coordinator + architect + coder + tester + reviewer (8 max) |
| 25 | Mesh swarm | **Prompt: Mesh Swarm for Parallel Tasks** | All agents talk to all, shared memory |
| 26 | Ring swarm | **Prompt: Ring Swarm for Pipeline Processing** | Sequential pipeline: researcher → architect → coder → tester → reviewer |
| 27 | MCP tool invocations | `mcp__ruflo__swarm_init`, `mcp__ruflo__agent_spawn` | Direct MCP calls for swarm control |

---

## SPARC Methodology (Section 9)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 28 | Full SPARC pipeline | **Prompt: Full SPARC Pipeline** | Specification → Pseudocode → Architecture → Refinement → Completion |
| 29 | SPARC TDD mode | **Prompt: SPARC TDD Mode** | Red → Green → Refactor with 90%+ coverage |
| 30 | SPARC mode reference | 10 modes listed | orchestrator, coder, architect, tdd, researcher, reviewer, optimizer, devops, security, documenter |

---

## Git Worktrees & Isolation (Section 10)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 31 | Parallel development | **Prompt: Isolated Parallel Development** | 3 worktrees with per-agent PG Vector namespace |
| 32 | Hotfix workflow | **Prompt: Worktree for Hotfix** | Emergency fix in isolated worktree from prod tag |

---

## Beads — Task Tracking (Section 11)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 33 | Session startup | **Prompt: Session Startup Ritual** | `bd ready --json` + `mem-search` + `gnx-analyze` |
| 34 | Record decision | **Prompt: Record Architectural Decision as Issue** | `bd create` with context, alternatives, consequences |
| 35 | Session handoff | **Prompt: Cross-Session Handoff** | Create tasks for remaining work, close completed ones |

---

## GitNexus — Codebase Intelligence (Section 12)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 36 | Blast-radius analysis | **Prompt: Blast-Radius Analysis Before Refactor** | Map all affected files/functions/tests before changes |
| 37 | Auto-generate docs | **Prompt: Generate Repo Documentation** | `gnx-wiki` + dependency graph + API surface |
| 38 | Understand code | **Prompt: Understand Unfamiliar Code** | Trace execution flows, identify patterns |

---

## AgentDB & Vector Memory (Section 13)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 39 | Store patterns | **Prompt: Store and Recall Patterns** | `ruv-remember` keyed by domain (auth, api, db) |
| 40 | Semantic search | **Prompt: Semantic Code Search** | `mem-search` with ranked similarity results |

---

## Agent Teams (Section 14)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 41 | Review team | **Prompt: Spawn a Review Team** | 3 agents: security, performance, architecture |
| 42 | Pair programming | **Prompt: Pair Programming with Agent Teammate** | Driver/navigator with real-time review |

---

## Plugins (Section 15)

| # | Feature | Plugin | What It Does |
|---|---------|--------|--------------|
| 43 | Quality Engineering | Agentic QE (58 agents, 16 MCP tools) | `aqe-generate` + `aqe-gate` + chaos engineering |
| 44 | Code analysis | Code Intelligence | Patterns, anti-patterns, dead code, complexity |
| 45 | Test gaps | Test Intelligence | Missing tests, flaky tests, gap analysis |
| 46 | Performance | Perf Optimizer | Profiling, bottlenecks, before/after metrics |
| 47 | Agent bridge | Teammate Plugin (21 MCP tools) | Semantic routing, rate limiting, circuit breaker |
| 48 | WASM orchestration | Gastown Bridge (20 MCP tools) | Convoy management, Beads sync, 352x formula parsing |

---

## Browser Automation (Section 16)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 49 | Scrape/analyze | **Prompt: Scrape and Analyze** | Open URL + snapshot + extract + element refs |
| 50 | E2E testing | **Prompt: E2E Test with Browser Agents** | Navigate user flow + record trajectory for replay |

---

## Intelligence & Learning (Section 17)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 51 | Train and route | **Prompt: Train and Route Optimally** | `hooks-train` + `neural-train` + `hooks-route` per task |
| 52 | Learning loop | **Prompt: Learning Loop After Task Completion** | SONA: RETRIEVE → JUDGE → DISTILL → CONSOLIDATE |

---

## Feature Development (Section 18)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 53 | Full feature build | **Prompt: Full Feature Build (Most Comprehensive)** | Setup → Plan → Build → Validate → Ship |
| 54 | Add to existing context | **Prompt: Add a Feature to Existing Context** | `bd ready` → blast radius → `wt-add` → implement → `aqe-gate` |
| 55 | Add API endpoint | **Prompt: Add API Endpoint** | Pattern search → SPARC TDD → OpenAPI update |
| 56 | Add DB migration | **Prompt: Add Database Migration** | Convention search → migrate up/down → blast radius |

---

## Refactoring (Section 19)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 57 | Large-scale refactor | **Prompt: Large-Scale Refactor with Blast Radius** | Analysis → Plan → Execute (4 agents) → Validate |
| 58 | Extract module | **Prompt: Extract Module / Microservice** | Map deps → define seam → Anti-Corruption Layer |
| 59 | Rename/restructure | **Prompt: Rename/Restructure with Safety** | `gnx-analyze` every ref → worktree → rename → `aqe-gate` |

---

## Testing & QE (Section 20)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 60 | Generate test suite | **Prompt: Generate Comprehensive Test Suite** | 58 QE agents → 90%+ coverage → flaky detection |
| 61 | Strict TDD | **Prompt: Strict TDD** | Red → Green → Refactor with SPARC |
| 62 | Chaos engineering | **Prompt: Chaos Engineering** | Inject failures → verify resilience → report |

---

## Code Review (Section 21)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 63 | AI code review | **Prompt: AI-Powered Code Review** | 3 reviewers: correctness, security, performance |
| 64 | Pre-merge checklist | **Prompt: Pre-Merge Checklist** | `aqe-gate` + blast radius + coverage + security |

---

## Performance (Section 22)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 65 | Profile and optimize | **Prompt: Profile and Optimize** | Top 5 bottlenecks → TDD fixes → before/after |
| 66 | DB query optimization | **Prompt: Database Query Optimization** | EXPLAIN ANALYZE → indexes → N+1 detection |

---

## Security (Section 23)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 67 | Full security audit | **Prompt: Full Security Audit** | Static + Dynamic + Architecture review |

---

## DevOps (Section 24)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 68 | CI/CD pipeline | **Prompt: CI/CD Pipeline Setup** | Build → Test → Security → Quality gate → Deploy |
| 69 | Infrastructure as Code | **Prompt: Infrastructure as Code** | SPARC architect → Terraform/Pulumi/CDK |
| 70 | Release | **Prompt: Release** | Full QE → security → changelog → `git tag` |

---

## UI/UX Design (Section 25)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 71 | Design system | **Prompt: Design System Creation** | Tokens, components, responsive, accessibility, themes |
| 72 | Component design | **Prompt: Component Design** | WCAG 2.1 AA + Storybook + visual regression |

---

## OpenSpec (Section 26)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 73 | Define feature spec | **Prompt: Define a Feature Spec** | User stories + API contracts + data models + business rules |

---

## Model Routing & Cost (Section 27)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 74 | Cost-optimized routing | **Prompt: Configure Cost-Optimized Routing** | Opus/Sonnet/Haiku assignment + $15/hr guardrail |

---

## Monitoring (Section 28)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 75 | Resource monitoring | **Prompt: Monitor and Optimize Resources** | Context %, cost, model tier, cache hit rate |

---

## Infrastructure (Section 29)

| # | Feature | Command | What It Does |
|---|---------|---------|--------------|
| 76 | DevPod | `devpod up/list/stop/delete` | Launch, manage, cleanup workspaces |
| 77 | GitHub Codespaces | Push → Open in Codespace | Auto `.devcontainer` setup |
| 78 | Rackspace Spot | `spot_rackspace_setup_guide.md` | Kubernetes with auto-scaling |
| 79 | macOS / Linux | `macosx_linux_setup.md` | Native install without containers |
| 80 | Google Cloud Shell | `google_cloud_shell_setup.md` | Free tier evaluation |
| 81 | v3→v4 migration | `docs/migration-v3-to-v4.md` | `cf-*` → `rf-*` command mapping |

---

## Maintenance & Diagnostics (Section 30)

| # | Feature | Prompt Name | What It Does |
|---|---------|-------------|--------------|
| 82 | Full diagnostic | **Prompt: Full Diagnostic** | `turbo-status` + `rf-doctor` + `rf-plugins` + `mem-stats` + `gitnexus status` + `bd ready` |
| 83 | Clean up | **Prompt: Clean Up and Optimize** | `wt-clean` + compact AgentDB + `rf-doctor --fix` |
| 84 | Dependency update | **Prompt: Dependency Update** | Blast radius → worktree → update → `aqe-gate` |
| 85 | Onboard new codebase | **Prompt: Onboard a New Codebase** | 11-step full onboarding with graph + pretrain + wiki |
| 86 | Background services | **Prompt: Start/Stop Background Services** | `rf-daemon` + `bd daemon start/stop/--status` |
| 87 | Plugin management | **Prompt: Check and Manage Plugins** | `rf-plugins` + install commands |
| 88 | Hive mind | **Prompt: Hive Mind / Advanced Swarm** | Advanced topology + consensus (Raft/Byzantine/Gossip/CRDT) |
| 89 | Codex / dual mode | **Prompt: Ruflo with Codex / Dual Mode** | `--codex`, `--dual`, `--codex --full` |
| 90 | Worker dispatch | **Prompt: Worker Dispatch and Intelligence Metrics** | `worker dispatch` + `hooks metrics` + `hooks build-agents` |
| 91 | LLM providers | **Prompt: LLM Provider Configuration** | 6 providers + 4 load balancing + 4 embedding |

---

## Compound Workflows (Section 31)

| # | Scenario | What It Covers |
|---|----------|---------------|
| 92 | New team, ship a feature | Day 1 onboard → Day 2 plan → Day 3-4 build → Day 5 ship |
| 93 | Emergency production bug | `bd ready` → trace → hotfix worktree → minimal fix → merge immediately |
| 94 | Major version upgrade | Blast radius → PRD → mesh swarm → per-subsystem worktrees → merge in order |
| 95 | Build from scratch | Initialize → PRD → ADR/DDD → 8-agent scaffold → iterative build → validate → ship |
| 96 | Resume / continue | `bd ready` → `mem-search` → `gitnexus status` → pick up next context |

---

## Reference (Section 32-34)

| # | Feature | What It Provides |
|---|---------|-----------------|
| 97 | CLAUDE.md template | Full project-specific template with bounded contexts, ADR index, domain language, routing, hooks, cost |
| 98 | Troubleshooting table | 12 common problems with fixes |
| 99 | Core loop cheat sheet | BOOT → PRD → PLAN → CUSTOMIZE → EXECUTE → FEATURE → REFACTOR → BUGFIX → RELEASE → HANDOFF |
| 100 | Alias reference table | All TF aliases mapped to native CLI commands |
| 101 | MCP tool reference | Swarm, SPARC, Memory, Browser tool signatures |
| 102 | Component summary | 36+ skills, 6 plugins, 215+ MCP tools, 60+ agents, 3 memory systems |

---

**Total: 102 features / operations with 54 dedicated copy-paste prompts across 34 sections.**
