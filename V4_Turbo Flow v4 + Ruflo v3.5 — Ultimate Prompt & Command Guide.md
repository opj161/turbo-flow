# Turbo Flow v4 + Ruflo v3.5 — Ultimate Prompt & Command Guide

> **Every feature. Every command. Every scenario.**
> Copy-paste prompts for Claude Code that leverage the full power of both platforms.

---

## Table of Contents

1. [Setup & Initialization](#1-setup--initialization)
2. [New Project Bootstrapping](#2-new-project-bootstrapping)
3. [Swarm Orchestration](#3-swarm-orchestration)
4. [SPARC Methodology](#4-sparc-methodology)
5. [Git Worktrees & Agent Isolation](#5-git-worktrees--agent-isolation)
6. [Beads — Cross-Session Memory](#6-beads--cross-session-memory)
7. [GitNexus — Codebase Intelligence](#7-gitnexus--codebase-intelligence)
8. [AgentDB & Vector Memory](#8-agentdb--vector-memory)
9. [Agent Teams (Experimental)](#9-agent-teams-experimental)
10. [Plugins](#10-plugins)
11. [Browser Automation (59 MCP Tools)](#11-browser-automation-59-mcp-tools)
12. [Feature Development Prompts](#12-feature-development-prompts)
13. [Refactoring Prompts](#13-refactoring-prompts)
14. [Testing & Quality Engineering](#14-testing--quality-engineering)
15. [Code Review & PR Workflows](#15-code-review--pr-workflows)
16. [Performance Optimization](#16-performance-optimization)
17. [Security Auditing](#17-security-auditing)
18. [DevOps & Deployment](#18-devops--deployment)
19. [UI/UX Design (Pro Max Skill)](#19-uiux-design-pro-max-skill)
20. [OpenSpec — Spec-Driven Development](#20-openspec--spec-driven-development)
21. [Intelligence & Learning](#21-intelligence--learning)
22. [Statusline & Monitoring](#22-statusline--monitoring)
23. [Model Routing & Cost Control](#23-model-routing--cost-control)
24. [Infrastructure (DevPod / Codespaces / Rackspace)](#24-infrastructure)
25. [Maintenance & Diagnostics](#25-maintenance--diagnostics)
26. [Compound Workflows — Real-World Scenarios](#26-compound-workflows--real-world-scenarios)

---

## 1. Setup & Initialization

### First-time install (DevPod)

```bash
# macOS
brew install loft-sh/devpod/devpod
devpod up https://github.com/marcuspat/turbo-flow --ide vscode

# Linux
curl -L -o devpod "https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64"
sudo install devpod /usr/local/bin
devpod up https://github.com/marcuspat/turbo-flow --ide vscode

# Windows
choco install devpod
devpod up https://github.com/marcuspat/turbo-flow --ide vscode
```

### Manual install

```bash
git clone https://github.com/marcuspat/turbo-flow -b main
cd turbo-flow/v4
chmod +x .devcontainer/setup-turboflow-4.sh
./.devcontainer/setup-turboflow-4.sh
source ~/.bashrc
turbo-status
```

### Initialize Ruflo in any project

```bash
npx ruflo@latest init --wizard      # Interactive guided setup
npx ruflo@latest init --force       # Non-interactive, overwrite existing
```

### Register Ruflo as MCP server in Claude Code

```bash
claude mcp add ruflo -- npx -y ruflo@latest mcp start
```

### Health check

```bash
turbo-status          # Full Turbo Flow status (all 15 statusline components)
rf-doctor             # Ruflo health check with auto-fix
turbo-help            # Complete command reference
rf-plugins            # List installed plugins
```

---

## 2. New Project Bootstrapping

### Prompt: Scaffold a full-stack app from scratch

```
Initialize a new project using Ruflo. Run rf-wizard to configure the environment.
Then:
1. bd init — enable Beads cross-session memory
2. os-init — initialize OpenSpec for spec-driven dev
3. gnx-analyze — build the codebase knowledge graph
4. wt-add main-dev — create the primary worktree

Scaffold a [Next.js / Express / FastAPI / etc.] application with:
- src/, tests/, docs/, scripts/, config/, plans/ directories
- CLAUDE.md with 3-tier memory protocol
- CI/CD pipeline skeleton
- README with architecture diagram

Use a hierarchical swarm with architect, coder, and tester agents.
```

### Prompt: Clone and onboard an existing repo

```
I just cloned [repo-url]. Onboard me:
1. Run gnx-analyze to build the knowledge graph
2. Run hooks-train to deep-pretrain on the codebase
3. Run bd init to enable Beads memory
4. Run bd-ready to check project state
5. Use mem-search to find any existing context
6. Generate a CLAUDE.md summarizing architecture, patterns, and conventions
7. Run neural-train to learn the codebase patterns

Give me a summary of: architecture, dependencies, hot paths, and technical debt.
```

---

## 3. Swarm Orchestration

### Available swarm topologies

| Alias | Description |
|-------|-------------|
| `rf-swarm` | Hierarchical swarm (up to 8 agents) |
| `rf-mesh` | Mesh topology — all agents communicate with all |
| `rf-ring` | Ring topology — each agent passes to the next |
| `rf-star` | Star topology — central coordinator |

### Prompt: Hierarchical feature swarm

```
Use rf-swarm to coordinate a hierarchical swarm for building [feature].
Spawn these agents:
- coordinator: planning, delegation, monitoring
- architect: system design, API contracts
- coder: implementation (TypeScript/React)
- tester: TDD, unit tests, integration tests
- reviewer: code review, security checks

Max 8 agents. Use 3-tier model routing (Opus for architect, Sonnet for coder, Haiku for tester).
Each agent gets its own worktree via wt-add.
Store all decisions in Beads via bd-add.
```

### Prompt: Mesh swarm for parallel tasks

```
Initialize a mesh swarm with rf-mesh for parallel execution:
- Agent 1: Migrate auth module from REST to GraphQL
- Agent 2: Update all test suites for the new API
- Agent 3: Update documentation and OpenAPI specs
- Agent 4: Run security scan on the new endpoints

All agents share memory via AgentDB. Coordinate via consensus.
Report blast radius using gnx-analyze before merging.
```

### Prompt: Ring swarm for pipeline processing

```
Set up a ring swarm (rf-ring) as a processing pipeline:
Stage 1 (researcher): Analyze requirements and prior art
Stage 2 (architect): Design the solution architecture
Stage 3 (coder): Implement the solution
Stage 4 (tester): Write and run all tests
Stage 5 (reviewer): Final review and quality gate

Each stage passes its output to the next. Store intermediate results in Beads.
```

### MCP Tool direct invocations

```
mcp__ruflo__swarm_init { topology: "hierarchical", maxAgents: 12, strategy: "adaptive" }
mcp__ruflo__agent_spawn { type: "coordinator", capabilities: ["planning", "delegation"] }
mcp__ruflo__agent_spawn { type: "coder", capabilities: ["typescript", "react", "testing"] }
mcp__ruflo__agent_spawn { type: "architect", capabilities: ["system-design", "api-contracts"] }
mcp__ruflo__agent_spawn { type: "researcher", capabilities: ["documentation-analysis"] }
mcp__ruflo__agent_spawn { type: "documenter", capabilities: ["technical-writing", "markdown"] }
mcp__ruflo__agent_spawn { type: "security", capabilities: ["vulnerability-assessment", "pentest"] }
```

---

## 4. SPARC Methodology

> **S**pecification → **P**seudocode → **A**rchitecture → **R**efinement → **C**ompletion

SPARC modes auto-activate in Ruflo v3.5. Just describe what you want naturally.

### Prompt: Full SPARC pipeline

```
Build [feature description] using the full SPARC pipeline:

1. SPECIFICATION: Define requirements, acceptance criteria, edge cases
2. PSEUDOCODE: Write algorithmic pseudocode before real code
3. ARCHITECTURE: Design the system — modules, interfaces, data flow
4. REFINEMENT: Implement with TDD, iterate until all tests pass
5. COMPLETION: Final review, documentation, deployment prep

Use a hierarchical swarm with specialized agents for each phase.
Store the spec in OpenSpec format. Record all decisions in Beads.
Run gnx-analyze after completion to update the knowledge graph.
```

### Prompt: SPARC TDD mode

```
Implement [feature] using SPARC TDD methodology:
- Write failing tests FIRST (red)
- Implement minimum code to pass (green)
- Refactor for quality (refactor)
- Target 90%+ coverage
- Use jest/pytest/[framework]

Spawn a TDD swarm: specification agent, test-writer agent, coder agent, reviewer agent.
```

### Prompt: SPARC with specific modes

```
Run SPARC in [mode] for [task]:

Available modes:
- orchestrator: coordinate feature development
- coder: implement with TDD and parallel edits
- architect: design scalable systems with memory-based coordination
- tdd: test-driven development with coverage targets
- researcher: investigate best practices and prior art
- reviewer: code review with security and performance checks
- optimizer: performance optimization
- devops: deployment, CI/CD, infrastructure
- security: vulnerability assessment and hardening
- documenter: generate docs, ADRs, runbooks
```

---

## 5. Git Worktrees & Agent Isolation

### Worktree commands

```bash
wt-add agent-1       # Create isolated worktree for agent
wt-add feature-auth  # Named worktree for a feature
wt-remove agent-1    # Clean up when done
wt-list              # Show all active worktrees
wt-clean             # Prune stale/orphaned worktrees
```

### Prompt: Isolated parallel development

```
Create isolated worktrees for parallel feature development:
1. wt-add feat-auth — authentication module
2. wt-add feat-payments — payment processing
3. wt-add feat-notifications — notification system

Assign one coder agent per worktree. Each gets its own PG Vector schema namespace.
Agents share context through Beads memory only.
After all three are complete:
- Run gnx-analyze on each to check blast radius
- Review conflicts before merging
- wt-clean to remove all worktrees
```

### Prompt: Worktree for hotfix

```
Create a worktree for an emergency hotfix:
1. wt-add hotfix-[issue-number]
2. Branch from the production tag
3. Fix the issue with minimal changes
4. Run aqe-gate for quality checks
5. Create PR, get review, merge
6. wt-remove hotfix-[issue-number]

Record the fix and root cause in Beads via bd-add.
```

---

## 6. Beads — Cross-Session Memory

> Git-native JSONL project memory. Persists issues, decisions, blockers, and context across sessions.

### Core commands

```bash
bd init              # Initialize Beads in current repo
bd-ready             # Check project state (run at session start)
bd-add               # Record an issue, decision, or blocker
bd-list              # List all beads
bd sync              # Manual sync (if running without daemon)
```

### Prompt: Session startup ritual

```
Starting a new session on [project].
1. Run bd-ready to load all cross-session context
2. Run mem-search to find relevant prior decisions
3. Run gnx-analyze to refresh the codebase graph
4. Show me: open issues, recent decisions, active blockers

Then let's continue where we left off.
```

### Prompt: Record architectural decision

```
Record this architectural decision in Beads:
- Decision: [e.g., "Use event sourcing for order processing"]
- Context: [why we're making this choice]
- Alternatives considered: [what we rejected and why]
- Consequences: [trade-offs and implications]
- Status: accepted

Use bd-add to store this. Tag it for future retrieval.
```

### Prompt: Cross-session handoff

```
I'm ending this session. Before I go:
1. Use bd-add to record:
   - Current progress on [task]
   - Open questions and blockers
   - Next steps for the next session
   - Any decisions made today
2. Run bd sync to persist everything
3. Summarize what a new agent would need to know to continue this work
```

---

## 7. GitNexus — Codebase Intelligence

> Knowledge graph of your codebase: dependencies, call chains, execution flows, blast-radius detection.

### Core commands

```bash
gnx-analyze          # Index repo into knowledge graph
gnx-serve            # Start local web UI server
gnx-wiki             # Generate wiki documentation from the graph
```

### Prompt: Blast-radius analysis before refactor

```
Before refactoring [module/file/function]:
1. Run gnx-analyze to ensure the knowledge graph is current
2. Query the blast radius: what files, functions, and tests are affected?
3. List all downstream consumers of this code
4. List all upstream dependencies
5. Identify critical paths that must not break
6. Generate a risk assessment

Output a refactoring plan that addresses all affected areas.
```

### Prompt: Generate repo documentation

```
Use GitNexus to auto-generate comprehensive documentation:
1. Run gnx-analyze to index the entire codebase
2. Run gnx-wiki to generate a repo wiki
3. Include: module dependency graph, call chain diagrams, API surface area
4. Identify undocumented public APIs
5. Flag circular dependencies and architectural smells

Output as markdown files in docs/.
```

### Prompt: Understand unfamiliar code

```
I need to understand [module/file/directory]:
1. Run gnx-analyze to build the graph
2. Show me: what this code does, who calls it, what it depends on
3. Trace the execution flow from [entry point] to [endpoint]
4. Identify the key abstractions and patterns used
5. Flag any complexity hotspots or anti-patterns
```

---

## 8. AgentDB & Vector Memory

> HNSW-indexed vector search with 150x–12,500x acceleration. Three-tier memory: Beads → Native Tasks → AgentDB.

### Core commands

```bash
ruv-remember KEY VALUE    # Store key-value in AgentDB
ruv-recall QUERY          # Query AgentDB
mem-search QUERY          # Search Ruflo memory (all tiers)
mem-stats                 # Memory statistics
```

### Prompt: Store and recall patterns

```
Store these development patterns in AgentDB for future reference:
- Pattern: "auth-jwt" → "JWT with refresh tokens, httpOnly cookies, 15min access / 7d refresh"
- Pattern: "api-error" → "RFC 7807 problem details, error codes enum, i18n messages"
- Pattern: "db-migration" → "Knex migrations, seed data, rollback scripts, zero-downtime"

Use ruv-remember for each. Tag by domain (auth, api, db).
Later I'll use ruv-recall and mem-search to retrieve them.
```

### Prompt: Semantic code search

```
Search the codebase using vector memory:
1. "Find functions similar to our authentication middleware"
2. "What patterns do we use for error handling?"
3. "Show me all API endpoint definitions that handle payments"

Use mem-search with semantic matching. Return ranked results with similarity scores.
```

### MCP Tool invocations for AgentDB

```
mcp__ruflo__memory_store { key: "pattern-name", value: "pattern details", namespace: "patterns" }
mcp__ruflo__memory_search { query: "authentication best practices", limit: 5 }
mcp__ruflo__memory_query { query: "configuration", namespace: "semantic" }
```

---

## 9. Agent Teams (Experimental)

> Anthropic's native multi-agent spawning. Max 3 teammates, recursion depth 2.

### Enable

```bash
export CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1
```

### Prompt: Spawn a review team

```
Using Agent Teams, spawn a 3-agent review team:
1. Security reviewer: check for vulnerabilities, injection risks, auth issues
2. Performance reviewer: check for N+1 queries, memory leaks, slow paths
3. Architecture reviewer: check for coupling, SOLID violations, naming

Each agent reviews independently, then the coordinator merges findings.
Use the Teammate Plugin (21 MCP tools) to bridge with Ruflo swarms.
```

### Prompt: Pair programming with agent teammate

```
Let's pair program on [feature]. Spawn a teammate agent:
- I'll be the driver (writing code)
- Teammate is the navigator (reviewing in real-time, suggesting improvements)
- Teammate watches for: bugs, test gaps, naming issues, architectural drift

Use the pair-programming skill. Teammate stores observations in Beads.
```

---

## 10. Plugins

### Agentic QE (Quality Engineering) — 58 agents, 16 MCP tools

```
Run the full Agentic QE pipeline:
1. aqe-generate — auto-generate tests for [module]
2. aqe-gate — run quality gate (coverage, linting, security, type-check)
3. Run chaos engineering: inject failures and verify resilience
4. Generate a quality report with coverage metrics
```

### Code Intelligence

```
Analyze the codebase with Code Intelligence plugin:
- Detect code patterns and anti-patterns
- Suggest refactoring opportunities
- Identify dead code and unused exports
- Map code complexity hotspots
- Recommend architecture improvements
```

### Test Intelligence

```
Use Test Intelligence to improve our test suite:
- Generate missing tests for uncovered code paths
- Identify flaky tests and suggest fixes
- Run gap analysis: which features lack tests?
- Prioritize test creation by risk and impact
```

### Perf Optimizer

```
Run performance profiling with Perf Optimizer:
- Profile [module/endpoint/page]
- Identify bottlenecks and hot paths
- Measure memory allocation patterns
- Suggest optimizations with estimated impact
- Compare before/after metrics
```

### Teammate Plugin — 21 MCP tools

```
Bridge Agent Teams with Ruflo swarms using Teammate Plugin:
- Semantic routing: route tasks to the best agent
- Rate limiting and circuit breaker for agent stability
- BMSSP WASM acceleration for fast coordination
```

### Gastown Bridge — 20 MCP tools

```
Use Gastown Bridge for WASM-accelerated orchestration:
- Convoy management for large agent groups
- Beads sync across distributed agents
- Graph analysis for task dependencies
- Formula parsing (352x faster via WASM)
```

---

## 11. Browser Automation (59 MCP Tools)

> Full Playwright-based browser automation with element refs, security scanning, and trajectory learning.

### Prompt: Scrape and analyze a competitor

```
Use the browser automation tools to:
1. Open [URL] with security scanning enabled
2. Take a snapshot of the page with interactive element refs
3. Extract: navigation structure, key features, pricing info
4. Fill in any required forms using element refs (@e1, @e2, etc.)
5. Record the trajectory for learning

Store findings in AgentDB for future reference.
```

### Prompt: E2E test with browser agents

```
Create end-to-end browser tests for our [feature]:
1. Start a browser session with security and memory enabled
2. Navigate through the user flow: [login → dashboard → action → verify]
3. Use element refs for all interactions (93% less context than CSS selectors)
4. Record the trajectory for regression learning
5. Generate a test script from the recorded trajectory

Store the trajectory in memory for future replay.
```

### MCP Browser tools (key ones)

```
mcp__ruflo__browser_open { url: "https://...", enableSecurity: true }
mcp__ruflo__browser_snapshot { interactive: true }  # Returns element refs
mcp__ruflo__browser_click { ref: "@e3" }
mcp__ruflo__browser_fill { ref: "@e1", value: "user@example.com" }
mcp__ruflo__browser_type { ref: "@e2", text: "password" }
mcp__ruflo__browser_navigate { url: "https://..." }
mcp__ruflo__browser_execute_js { script: "document.title" }
mcp__ruflo__browser_start_trajectory { goal: "Complete checkout flow" }
mcp__ruflo__browser_end_trajectory { success: true, verdict: "Checkout succeeded" }
```

---

## 12. Feature Development Prompts

### Prompt: Full feature build (most comprehensive)

```
Build [feature name] end-to-end using all available tools:

SETUP:
- wt-add feat-[name] for isolated worktree
- bd-ready to load cross-session context
- gnx-analyze to understand current codebase

PLAN:
- OpenSpec: os-init then define the spec
- SPARC: specification → pseudocode → architecture
- Store plan in Beads

BUILD:
- rf-swarm with architect + 2 coders + tester
- TDD: write tests first, implement to pass
- Each agent in its own worktree

VALIDATE:
- aqe-gate for quality
- gnx-analyze for blast radius
- Security scan
- Performance profiling

SHIP:
- Code review (Agent Teams)
- bd-add to record decisions
- Update documentation
- wt-clean to remove worktrees
```

### Prompt: Add API endpoint

```
Add a new [GET/POST/PUT/DELETE] endpoint for [resource]:

1. Check existing patterns: mem-search "API endpoint patterns"
2. Run gnx-analyze to see current API structure
3. Use SPARC TDD:
   - Spec: define request/response schema, auth requirements, validation
   - Tests first: write integration and unit tests
   - Implement: controller, service, repository layers
   - Review: security, error handling, rate limiting
4. Update OpenAPI spec
5. Record the pattern in AgentDB: ruv-remember "api-[resource]" "[pattern details]"
```

### Prompt: Add database migration

```
Create a database migration for [change description]:
1. mem-search "database migration patterns" for existing conventions
2. Generate migration file with up/down functions
3. Generate seed data if needed
4. Test: migrate up, run tests, migrate down, verify clean state
5. Check blast radius with gnx-analyze (what queries/models are affected?)
6. Update the data model documentation
7. Record in Beads: bd-add migration decision
```

---

## 13. Refactoring Prompts

### Prompt: Large-scale refactor with blast radius

```
Refactor [module/pattern/architecture]:

ANALYSIS:
1. gnx-analyze — build/refresh knowledge graph
2. Query blast radius: every file and function affected
3. hooks-train — ensure agents understand the codebase
4. neural-patterns — review learned patterns

PLAN:
1. Define target state in OpenSpec
2. Create worktrees: wt-add refactor-phase-1, wt-add refactor-phase-2
3. Plan migration path: what order to change things

EXECUTE:
1. rf-swarm with 4 coder agents (one per subsystem)
2. Each agent works in its own worktree
3. TDD: update tests first, then refactor code to pass
4. Verify no regressions after each phase

VALIDATE:
1. aqe-gate — full quality check
2. gnx-analyze — verify blast radius is contained
3. Performance comparison: before vs after
4. bd-add — record the refactoring decisions and rationale
```

### Prompt: Extract module / microservice

```
Extract [component] into a standalone [module/microservice]:
1. gnx-analyze — map all dependencies and consumers
2. Identify the seam: where to cut
3. Define the interface/API contract in OpenSpec
4. Create worktree: wt-add extract-[name]
5. Move code, update imports, create adapter layer
6. TDD: verify all existing tests still pass
7. Add integration tests for the new boundary
8. Check blast radius: gnx-analyze
9. Record decision in Beads
```

### Prompt: Rename/restructure with safety

```
Rename [old] to [new] across the entire codebase:
1. gnx-analyze — find every reference
2. Use Code Intelligence plugin for pattern detection
3. Plan: list every file and line that needs to change
4. Create worktree: wt-add rename-[thing]
5. Execute rename with automated find-and-replace
6. Run full test suite
7. aqe-gate for quality verification
8. gnx-analyze to confirm clean blast radius
```

---

## 14. Testing & Quality Engineering

### Prompt: Generate comprehensive test suite

```
Generate a complete test suite for [module/feature]:
1. aqe-generate — auto-generate tests using Agentic QE (58 agents)
2. Include: unit tests, integration tests, edge cases, error paths
3. Use Test Intelligence to find gaps
4. Target: 90%+ line coverage, 85%+ branch coverage
5. Mark flaky tests and add retry logic
6. Generate test data factories/fixtures
7. Store coverage report in Beads
```

### Prompt: TDD for a new feature

```
Implement [feature] strictly with TDD:

RED:
- Write failing tests that define the behavior
- Include happy path, edge cases, error cases
- Tests should be readable as documentation

GREEN:
- Write minimum code to make tests pass
- No premature optimization
- No code without a corresponding test

REFACTOR:
- Clean up implementation
- Extract patterns, reduce duplication
- Run aqe-gate to verify quality

Use SPARC TDD mode. Store the test patterns in AgentDB for reuse.
```

### Prompt: Chaos engineering

```
Run chaos engineering tests on [system/service]:
1. Use Agentic QE chaos agents
2. Inject: network failures, timeout spikes, memory pressure, disk full
3. Verify: circuit breakers trip, fallbacks activate, data integrity maintained
4. Measure: recovery time, error rates, degraded performance
5. Generate chaos test report
6. Record findings in Beads
```

---

## 15. Code Review & PR Workflows

### Prompt: AI-powered code review

```
Review [PR/branch/files] using Agent Teams:
Spawn 3 reviewer agents:
1. Correctness: logic bugs, edge cases, error handling
2. Security: injection, auth bypass, data exposure, dependencies
3. Performance: N+1 queries, memory leaks, unnecessary computation

Cross-reference with:
- gnx-analyze blast radius
- neural-patterns for convention violations
- mem-search for related past decisions

Output: categorized findings (critical/warning/info) with fix suggestions.
```

### Prompt: Pre-merge checklist

```
Run pre-merge validation for [branch]:
1. aqe-gate — full quality gate
2. gnx-analyze — blast radius report
3. Test suite: all tests pass, no regressions
4. Coverage: meets minimum thresholds
5. Security scan: no new vulnerabilities
6. Performance: no degradation on critical paths
7. Documentation: API docs updated, CHANGELOG entry added
8. Beads: all related decisions recorded

Generate a merge-readiness report.
```

---

## 16. Performance Optimization

### Prompt: Profile and optimize

```
Profile and optimize [module/endpoint/page]:
1. Use Perf Optimizer plugin for initial profiling
2. Identify top 5 bottlenecks
3. For each bottleneck:
   - gnx-analyze: what depends on this code?
   - Propose optimization with expected impact
   - Implement with TDD (test before and after)
   - Measure: latency, throughput, memory, CPU
4. Compare before/after metrics
5. Record optimizations in AgentDB: ruv-remember "perf-[area]" "[details]"
```

### Prompt: Database query optimization

```
Optimize database queries in [module]:
1. Profile all queries: find slow ones (>100ms)
2. Analyze query plans (EXPLAIN ANALYZE)
3. Check for: N+1 queries, missing indexes, full table scans, unnecessary joins
4. Suggest indexes, query rewrites, or caching strategies
5. Test with realistic data volumes
6. Measure improvement: before/after latency
7. Record patterns in AgentDB
```

---

## 17. Security Auditing

### Prompt: Full security audit

```
Run a comprehensive security audit on the project:

STATIC ANALYSIS:
- Dependency vulnerabilities (npm audit, Snyk)
- Code patterns: injection, XSS, CSRF, auth bypass
- Secrets in code: API keys, passwords, tokens
- Configuration: headers, CORS, CSP, rate limiting

DYNAMIC TESTING:
- Use browser automation to test auth flows
- Attempt injection on all input fields
- Test authorization boundaries (horizontal/vertical privilege escalation)
- Check error messages for information leakage

ARCHITECTURE:
- gnx-analyze: identify trust boundaries
- Review data flow for sensitive information
- Check encryption at rest and in transit
- Review logging: no PII in logs

Output: vulnerability report with severity ratings and fix recommendations.
Store in Beads for tracking remediation.
```

---

## 18. DevOps & Deployment

### Prompt: CI/CD pipeline setup

```
Create a CI/CD pipeline for [project]:
1. Build stage: compile, lint, type-check
2. Test stage: unit, integration, e2e (parallel)
3. Security stage: dependency scan, SAST, secrets check
4. Quality gate: aqe-gate thresholds
5. Deploy stage: staging → smoke tests → production
6. Monitoring: health checks, alerting

Target platform: [GitHub Actions / GitLab CI / etc.]
Use SPARC DevOps mode for infrastructure design.
Store pipeline decisions in Beads.
```

### Prompt: Infrastructure as Code

```
Design and implement infrastructure for [project]:
1. Use SPARC architect mode for system design
2. Define: compute, networking, storage, security groups
3. Implement with [Terraform / Pulumi / CDK]
4. Include: auto-scaling, load balancing, monitoring
5. Create runbooks for common operations
6. Test with staging deployment
7. Record all infra decisions in Beads
```

---

## 19. UI/UX Design (Pro Max Skill)

> The `uipro-cli` skill provides design system guidance, component patterns, accessibility, responsive layouts, and design tokens.

### Prompt: Design system creation

```
Create a design system for [project] using UI UX Pro Max:
- Design tokens: colors, typography, spacing, shadows, borders
- Component library: buttons, inputs, cards, modals, tables, navigation
- Responsive breakpoints and grid system
- Accessibility: ARIA patterns, keyboard navigation, focus management
- Dark/light theme support
- Document everything with usage examples
```

### Prompt: Component design

```
Design and implement a [component name] using UI UX Pro Max:
- Follow our design system tokens
- Mobile-first responsive design
- WCAG 2.1 AA accessibility compliance
- Keyboard navigable
- Support both light and dark themes
- Include Storybook stories
- Write visual regression tests
```

---

## 20. OpenSpec — Spec-Driven Development

### Core commands

```bash
os-init              # Initialize OpenSpec in project
os                   # Run OpenSpec
```

### Prompt: Define a feature spec

```
Use OpenSpec to define the specification for [feature]:
1. os-init to initialize
2. Define:
   - User stories with acceptance criteria
   - API contracts (request/response schemas)
   - Data models and relationships
   - Business rules and validation logic
   - Error scenarios and edge cases
   - Performance requirements (SLAs)
   - Security requirements

Store the spec. Use it to drive TDD implementation with SPARC.
```

---

## 21. Intelligence & Learning

### Hooks and Neural system

```bash
hooks-train          # Deep pretrain on codebase
hooks-route          # Route task to optimal agent
neural-train         # Train neural patterns
neural-patterns      # View learned patterns
```

### Prompt: Train on codebase and route optimally

```
Prepare the intelligence system for [project]:
1. hooks-train — deep pretrain on the entire codebase
2. neural-train — learn patterns, conventions, and idioms
3. neural-patterns — show me what was learned

Now route these tasks to the optimal agents:
- hooks-route "implement OAuth2 login flow"
- hooks-route "optimize database connection pooling"
- hooks-route "write comprehensive API documentation"
- hooks-route "fix flaky integration test in payments module"

For each, explain why that agent type was chosen.
```

### Prompt: Learning loop after task completion

```
Task [task-id] is complete. Run the learning loop:
1. hooks post-task — record success/failure and store results
2. Let the SONA system process: RETRIEVE → JUDGE → DISTILL → CONSOLIDATE
3. Update AgentDB with new patterns learned
4. Train neural system on the new data
5. Store lessons learned in Beads

This improves future routing and agent performance.
```

---

## 22. Statusline & Monitoring

> 3-line real-time status display with 15 components.

```
LINE 1: [Project] name | [Model] Sonnet | [Git] branch | [TF] 4.0 | [SID] abc123
LINE 2: [Tokens] 50k/200k | [Ctx] 65% | [Cache] 42% | [Cost] $1.23 | [Time] 5m
LINE 3: [+150] [-50] | [READY]
```

### Prompt: Monitor resource usage

```
Show me the current statusline and explain:
- How much context window is used?
- What's the current cost?
- Which model tier is active?
- What's the cache hit rate?
- How many tokens have been consumed?

If context is above 70%, suggest what to compact or offload to Beads.
If cost is above $10, suggest model tier adjustments.
```

---

## 23. Model Routing & Cost Control

> 3-tier routing: Opus (complex), Sonnet (standard), Haiku (simple). Saves up to 75% on API costs.

### Prompt: Configure cost-optimized routing

```
Configure model routing for cost optimization:
- Opus: architecture decisions, complex refactors, security analysis
- Sonnet: feature implementation, code review, documentation
- Haiku: test generation, linting, simple queries, formatting

Set cost guardrail at $15/hour.
Use hooks-route to auto-select the optimal tier for each task.
Show me the cost breakdown by model tier.
```

---

## 24. Infrastructure

### DevPod

```bash
devpod up https://github.com/[repo] --ide vscode     # Launch workspace
devpod list                                            # List active workspaces
devpod stop [workspace]                                # Stop workspace
devpod delete [workspace]                              # Delete workspace
```

### GitHub Codespaces

```
Push to GitHub → Open in Codespace → .devcontainer runs automatically.
The setup-turboflow-4.sh script installs the complete stack.
```

### Rackspace Spot Instances

```bash
# See spot_rackspace_setup_guide.md for full details
# Kubernetes cluster setup with auto-scaling
# Cost-optimized for long-running agent workloads
```

### Google Cloud Shell

```bash
# See google_cloud_shell_setup.md for full details
# Free tier suitable for evaluation
# Persistent home directory for config
```

---

## 25. Maintenance & Diagnostics

### Prompt: Full diagnostic

```
Run a complete diagnostic on the Turbo Flow environment:
1. turbo-status — check all 15 statusline components
2. rf-doctor — Ruflo health check with auto-fix
3. rf-plugins — verify all 6 plugins are installed and active
4. mem-stats — memory system statistics
5. gnx-analyze — verify knowledge graph integrity
6. bd-ready — verify Beads is functional

Report any issues and suggest fixes.
```

### Prompt: Clean up and optimize

```
Clean up the development environment:
1. wt-clean — prune stale worktrees
2. Compact AgentDB: remove old, low-value vectors
3. Archive old Beads entries
4. Clear cached MCP tool results
5. Run rf-doctor --fix for auto-repair
6. Verify all MCP servers are registered and responding
```

---

## 26. Compound Workflows — Real-World Scenarios

### Scenario: "I joined a new team and need to ship a feature this sprint"

```
Day 1 — Onboard:
1. Clone the repo, run setup-turboflow-4.sh
2. gnx-analyze — build knowledge graph
3. hooks-train — deep pretrain on codebase
4. bd-ready — load team's cross-session context
5. neural-patterns — understand conventions
6. gnx-wiki — generate repo documentation for myself

Day 2 — Plan:
1. os-init — create OpenSpec for the feature
2. bd-list — check for related decisions/blockers
3. gnx-analyze — understand affected areas
4. SPARC specification + architecture phases
5. bd-add — record my plan

Day 3-4 — Build:
1. wt-add feat-[name] — isolated worktree
2. rf-swarm — hierarchical swarm (architect + 2 coders + tester)
3. SPARC TDD — tests first, then implement
4. bd-add — record decisions as I go

Day 5 — Ship:
1. aqe-gate — quality check
2. Agent Teams review — 3 reviewers
3. gnx-analyze — blast radius
4. Create PR, address feedback
5. bd-add — record completion and lessons learned
6. wt-remove feat-[name] — clean up
```

### Scenario: "Emergency production bug"

```
1. bd-ready — check if there's context about this area
2. gnx-analyze — understand the affected code's dependencies
3. wt-add hotfix-[ticket] — isolated worktree from production tag
4. hooks-route "debug [symptom description]" — route to best agent
5. Reproduce → diagnose → fix
6. aqe-gate — quality check (focused: tests for the bug + regression)
7. Create PR with minimal diff
8. bd-add — record root cause, fix, and prevention steps
9. wt-remove hotfix-[ticket]
10. hooks post-task — train learning system on the fix
```

### Scenario: "Major version upgrade / dependency migration"

```
1. gnx-analyze — full dependency graph
2. Identify all affected files: gnx blast-radius for [dependency]
3. Create OpenSpec: define target state, breaking changes, migration steps
4. rf-mesh — mesh swarm with 4-6 coder agents:
   - Each handles a subsystem in its own worktree
   - Shared context via Beads
   - Consensus on shared interfaces
5. For each agent/worktree:
   - Update dependency
   - Fix breaking changes
   - Update tests
   - Verify no regressions
6. aqe-gate on each worktree
7. Merge in dependency order (bottom-up)
8. gnx-analyze — verify clean final state
9. Performance comparison: before/after
10. bd-add — record the migration strategy for future reference
```

### Scenario: "Build a full application from scratch"

```
1. INITIALIZE:
   rf-wizard → bd init → os-init → Create dirs (src, tests, docs, scripts, config, plans)

2. DESIGN:
   - OpenSpec: full application spec
   - SPARC architect: system design, data models, API contracts
   - UI UX Pro Max: design system and component library
   - bd-add: record all design decisions

3. SCAFFOLD:
   - rf-swarm (hierarchical, 8 agents):
     Agent 1 (architect): project structure, configuration
     Agent 2 (backend-coder): API, services, database
     Agent 3 (frontend-coder): UI, components, state management
     Agent 4 (auth-coder): authentication, authorization
     Agent 5 (tester): test suites for all layers
     Agent 6 (devops): CI/CD, Docker, deployment
     Agent 7 (documenter): API docs, README, architecture docs
     Agent 8 (security): security hardening, input validation

4. BUILD (iterative):
   - Each agent in its own worktree
   - SPARC TDD for all implementation
   - Beads for cross-agent coordination
   - AgentDB for pattern storage

5. VALIDATE:
   - aqe-gate: quality gate
   - gnx-analyze: dependency graph, no circular deps
   - Performance profiling
   - Security audit
   - Accessibility audit (UI UX Pro Max)

6. SHIP:
   - Agent Teams review
   - CI/CD pipeline green
   - Staging deployment + smoke tests
   - Production deployment
   - bd-add: record launch decisions and rollback plan
```

---

## Quick Reference — All Aliases

| Family | Commands |
|--------|----------|
| **Ruflo** | `rf-wizard` `rf-swarm` `rf-mesh` `rf-ring` `rf-star` `rf-spawn` `rf-daemon` `rf-status` `rf-doctor` `rf-init` `rf-plugins` |
| **Memory** | `ruv-remember` `ruv-recall` `mem-search` `mem-stats` |
| **Beads** | `bd-ready` `bd-add` `bd-list` `bd init` `bd sync` |
| **Worktrees** | `wt-add` `wt-remove` `wt-list` `wt-clean` |
| **GitNexus** | `gnx-analyze` `gnx-serve` `gnx-wiki` |
| **Quality** | `aqe-generate` `aqe-gate` |
| **OpenSpec** | `os-init` `os` |
| **Intelligence** | `hooks-train` `hooks-route` `neural-train` `neural-patterns` |
| **System** | `turbo-status` `turbo-help` |

---

## Quick Reference — Key MCP Tool Invocations

```
# Swarm
mcp__ruflo__swarm_init { topology: "hierarchical|mesh|ring|star", maxAgents: N }
mcp__ruflo__agent_spawn { type: "coder|architect|tester|researcher|security|documenter|coordinator" }

# SPARC
mcp__ruflo__sparc_mode { mode: "orchestrator|coder|architect|tdd|researcher|reviewer|optimizer|devops|security|documenter" }

# Memory
mcp__ruflo__memory_store { key: "...", value: "...", namespace: "..." }
mcp__ruflo__memory_search { query: "...", limit: N }

# Browser
mcp__ruflo__browser_open { url: "..." }
mcp__ruflo__browser_snapshot { interactive: true }
mcp__ruflo__browser_click { ref: "@eN" }
mcp__ruflo__browser_fill { ref: "@eN", value: "..." }
```

---

*Generated for Turbo Flow v4.0 + Ruflo v3.5. Last updated: March 2026.*
