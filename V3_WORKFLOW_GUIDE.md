# Turbo Flow v3.4.0 — Workflow Guide

## What's Installed

| Layer | Components |
|-------|------------|
| **Orchestration** | Claude Code, Claude Flow V3 (daemon, swarm, MCP, browser) |
| **Memory** | Claude Flow SQLite memory, AgentDB vector DB (HNSW), sql.js |
| **Intelligence** | RuVector neural engine, hooks intelligence, neural operations |
| **Native Skills** | 36 skills: Core (6), AgentDB (4), GitHub (4), V3 Dev (9), ReasoningBank (2), Flow Nexus (3), Additional (8) |
| **Plugins** | 15 plugins: QE (2), Code Intel (1), Cognitive (2), Performance (3), Neural (2), Domain (3), Infrastructure (2) |
| **Custom Skills** | prd2build, Security Analyzer, UI UX Pro Max, Worktree Manager, Vercel Deploy, rUv Helpers |
| **Quality** | Agentic QE (test gen + quality gates), Test Intelligence |
| **Ecosystem** | OpenSpec (API design), RuVector RUVLLM, RuV Helpers 3D Visualization |
| **Monitoring** | Statusline Pro (15 components), ccusage (on-demand) |
| **Collaboration** | Codex integration, AGENTS.md protocol |

---

## Core Philosophy: ADR + DDD First

Turbo Flow v3.4.0 is built around **Architecture Decision Records (ADR)** and **Domain-Driven Design (DDD)** as the primary development methodology. This approach ensures:

- **Architecture decisions are documented and traceable** via ADRs
- **Code organization reflects business domains** via DDD bounded contexts
- **Ubiquitous language emerges from domain modeling**
- **Strategic design guides tactical implementation**

Spec-driven approaches (OpenSpec, SPARC) remain available as secondary tools for specific use cases.

---

## Boot Sequence

This is the correct startup order. Each step depends on the one before it.

### Step 1 — Initialize Claude Flow

This creates the `.claude-flow/` workspace config and `.swarm/` directory.

```bash
cf-init
```

> "Initialize Claude Flow in this workspace with default settings"

> "Run the Claude Flow wizard to configure topology, memory, and agent preferences interactively"

Use `cf-wizard` for guided setup, or `cf-init` for defaults.

### Step 2 — Verify Environment

```bash
cf-doctor
```

> "Run Claude Flow doctor to check that everything is healthy — node version, npm globals, MCP connectivity, memory status"

Fix any issues before proceeding.

### Step 3 — Initialize Memory

Claude Flow's memory is SQLite-based at `.swarm/memory.db`. It doesn't exist until you initialize it.

```bash
npx -y claude-flow@alpha memory init
```

Configure retention and limits:

```bash
npx -y claude-flow@alpha config set memory.retention 30d
npx -y claude-flow@alpha config set memory.maxSize 1GB
```

> "Initialize the Claude Flow memory system and set retention to 30 days"

### Step 4 — Register MCP Servers

Claude Flow and AgentDB each run as separate MCP servers. Claude Code can't use their tools until they're registered.

**Claude Flow MCP** (gives Claude Code access to swarm, memory, browser, hooks, neural tools):

```bash
claude mcp add claude-flow -- npx -y claude-flow@alpha mcp start
```

**AgentDB MCP** (gives Claude Code semantic vector search via HNSW):

```bash
claude mcp add agentdb -- npx -y agentdb mcp
```

Verify both are running:

```bash
claude mcp list
```

> "Register Claude Flow and AgentDB as MCP servers, then verify both are connected"

### Step 5 — Activate RuVector Hooks

RuVector is the neural learning engine. It hooks into Claude Flow to learn from your edits, route tasks intelligently, and remember successful patterns. It doesn't activate until you initialize the hooks.

```bash
ruv-init
```

For existing projects, pretrain from the codebase so RuVector already knows your patterns:

```bash
hooks-train
```

> "Initialize RuVector hooks and pretrain the intelligence from the existing codebase"

### Step 6 — Start the Daemon

The daemon runs background workers for monitoring, session persistence, and security auditing.

```bash
cf-daemon
```

> "Start the Claude Flow daemon for background processing"

### Step 7 — Verify Everything

```bash
turbo-status
mem-stats
hooks-intel
claude mcp list
```

> "Show me the full system status — installed components, memory statistics, hooks intelligence status, and active MCP servers"

**You're now fully booted.** Memory is live, RuVector is learning, both MCP servers are registered, daemon is running.

---

## Boot Sequence (Quick Copy-Paste)

```bash
source ~/.bashrc
cf-init
cf-doctor
npx -y claude-flow@alpha memory init
npx -y claude-flow@alpha config set memory.retention 30d
claude mcp add claude-flow -- npx -y claude-flow@alpha mcp start
claude mcp add agentdb -- npx -y agentdb mcp
ruv-init
hooks-train
cf-daemon
turbo-status
```

---

## Three Memory Systems

You have three distinct memory layers. They serve different purposes.

| System | What it does | How to use |
|--------|-------------|------------|
| **Claude Flow Memory** (mem-*) | Key-value + vector search in SQLite. Stores project config, agent state, task context. Built into Claude Flow. | `mem-store`, `mem-search`, `mem-vsearch` |
| **RuVector** (ruv-*) | Neural pattern learning. Watches your edits, learns what works, routes tasks to best agents. Hooks into Claude Flow. | `ruv-remember`, `ruv-recall`, `ruv-route` |
| **AgentDB** (agentdb-*) | Standalone HNSW vector database. Semantic search across documents and embeddings. Runs as its own MCP server. | `agentdb-store`, `agentdb-query` via MCP |

### When to use which:

- **Storing project configuration or task state** → Claude Flow memory (`mem-store`)
- **Remembering a coding pattern that worked** → RuVector (`ruv-remember`)
- **Storing documents for semantic RAG search** → AgentDB (via MCP tools)
- **Finding which agent is best for a task** → RuVector routing (`ruv-route`)
- **Searching memory by keyword** → Claude Flow (`mem-search`)
- **Searching memory by meaning** → AgentDB (`agentdb_query` MCP tool) or Claude Flow (`mem-vsearch`)

---

## ADR + DDD Methodology

### Architecture Decision Records (ADR)

ADRs capture important architectural decisions along with their context and consequences.

**ADR Structure:**
```
docs/adr/
├── ADR-001-record-architecture-decisions.md
├── ADR-002-choose-database-technology.md
├── ADR-003-adopt-microservices.md
└── ...
```

**Creating an ADR:**

> "Create an ADR for adopting PostgreSQL as our primary database. Include context, decision, consequences, and alternatives considered"

> "Document the decision to use event-driven architecture in ADR format"

**Key ADR Commands:**

> "List all ADRs and their status"

> "Review ADR-003 and suggest updates based on new requirements"

> "Create an ADR index with decision timeline"

### Domain-Driven Design (DDD)

DDD organizes code around business domains with clear bounded contexts.

**DDD Structure:**
```
src/
├── domains/
│   ├── identity/           # User management bounded context
│   │   ├── application/    # Use cases, handlers
│   │   ├── domain/         # Entities, value objects, aggregates
│   │   ├── infrastructure/ # Repositories, external services
│   │   └── interfaces/     # Controllers, DTOs
│   ├── ordering/           # Order management bounded context
│   ├── inventory/          # Inventory bounded context
│   └── shared/             # Shared kernel
```

**Applying DDD:**

> "Use v3-ddd-architecture to analyze this codebase and identify bounded contexts"

> "Design aggregates and entities for the Order domain"

> "Create a context map showing relationships between bounded contexts"

> "Define ubiquitous language for the Payment domain"

**Key DDD Skills:**

| Skill | Command | Purpose |
|-------|---------|---------|
| `v3-ddd-architecture` | `cf-v3-ddd` | Bounded contexts, microkernel design |
| `v3-core-implementation` | `cf-v3-core` | DDD domains, clean architecture |
| `reasoningbank-intelligence` | — | Pattern recognition across domains |

### ADR + DDD Workflow

1. **Discover Domains** → Identify bounded contexts from business requirements
2. **Document Decisions** → Create ADRs for architectural choices
3. **Model Aggregates** → Define entities, value objects, aggregate roots
4. **Define Interfaces** → Establish contracts between contexts
5. **Implement** → Build domain logic with application services
6. **Validate** → Verify against ADR constraints and domain invariants

---

## Native Skills (36 Total)

### Core Skills (6)

| Skill | Command | Purpose |
|-------|---------|---------|
| `sparc-methodology` | `cf-sparc` | SPARC methodology (secondary) |
| `swarm-orchestration` | `cf-swarm-skill` | Multi-agent coordination |
| `github-code-review` | `cf-gh-review` | AI-powered PR reviews |
| `agentdb-vector-search` | `cf-agentdb-search` | HNSW vector search (150x faster) |
| `pair-programming` | `cf-pair` | Driver/Navigator AI coding |
| `hive-mind-advanced` | `cf-hive` | Queen-led collective intelligence |

### AgentDB Skills (4)

| Skill | Command | Purpose |
|-------|---------|---------|
| `agentdb-advanced` | `cf-agentdb-advanced` | QUIC sync, multi-database, custom metrics |
| `agentdb-learning` | `cf-agentdb-learning` | 9 RL algorithms (Q-Learning, Actor-Critic) |
| `agentdb-memory-patterns` | `cf-agentdb-memory` | Session memory, pattern learning |
| `agentdb-optimization` | `cf-agentdb-opt` | Quantization (4-32x memory reduction) |

### GitHub Skills (4)

| Skill | Command | Purpose |
|-------|---------|---------|
| `github-multi-repo` | `cf-gh-multi` | Cross-repository coordination |
| `github-project-management` | `cf-gh-project` | Issues, project boards, sprints |
| `github-release-management` | `cf-gh-release` | Versioning, deployment, rollback |
| `github-workflow-automation` | `cf-gh-workflow` | CI/CD pipeline automation |

### V3 Development Skills (9) — PRIMARY

| Skill | Command | Purpose |
|-------|---------|---------|
| `v3-cli-modernization` | `cf-v3-cli` | Interactive prompts, command decomposition |
| `v3-core-implementation` | `cf-v3-core` | **DDD domains, clean architecture** |
| `v3-ddd-architecture` | `cf-v3-ddd` | **Bounded contexts, microkernel** |
| `v3-integration-deep` | — | Deep agentic-flow integration |
| `v3-mcp-optimization` | — | Sub-100ms MCP response |
| `v3-memory-unification` | — | Unified AgentDB backend |
| `v3-performance-optimization` | `cf-v3-perf` | Flash Attention (2.49x-7.47x) |
| `v3-security-overhaul` | `cf-v3-security` | CVE remediation |
| `v3-swarm-coordination` | — | 15-agent hierarchical mesh |

### ReasoningBank Skills (2)

| Skill | Purpose |
|-------|---------|
| `reasoningbank-agentdb` | Trajectory tracking, memory distillation |
| `reasoningbank-intelligence` | Pattern recognition, meta-cognition |

### Flow Nexus Skills (3)

| Skill | Purpose |
|-------|---------|
| `flow-nexus-neural` | Neural network training in E2B sandboxes |
| `flow-nexus-platform` | Auth, sandboxes, app deployment |
| `flow-nexus-swarm` | Cloud-based swarm deployment |

### Additional Skills (8)

| Skill | Purpose |
|-------|---------|
| `agentic-jujutsu` | Quantum-resistant version control |
| `hooks-automation` | Pre/post task hooks, neural training |
| `performance-analysis` | Bottleneck detection, profiling |
| `skill-builder` | Create custom Claude Code skills |
| `stream-chain` | Multi-agent streaming pipelines |
| `swarm-advanced` | Advanced distributed workflows |
| `verification-quality` | Truth scoring (0.95), automatic rollback |
| `dual-mode` | Dual-mode operations |

---

## Plugins (15 Total)

### Quality Engineering Plugins (2)

| Plugin | Command | Purpose |
|--------|---------|---------|
| `agentic-qe` | `plugin-qe` | Autonomous quality engineering, test generation |
| `test-intelligence` | `plugin-test-intel` | Smart test selection, coverage optimization |

### Code Intelligence Plugins (1)

| Plugin | Command | Purpose |
|--------|---------|---------|
| `code-intelligence` | `plugin-code-intel` | AST analysis, code understanding, refactoring |

### Cognitive Plugins (2)

| Plugin | Command | Purpose |
|--------|---------|---------|
| `cognitive-kernel` | `plugin-cognitive` | Meta-cognition, self-reflection, reasoning |
| `hyperbolic-reasoning` | `plugin-hyperbolic` | Hyperbolic geometry for complex reasoning |

### Performance Plugins (3)

| Plugin | Command | Purpose |
|--------|---------|---------|
| `perf-optimizer` | `plugin-perf` | Performance profiling, optimization suggestions |
| `quantum-optimizer` | `plugin-quantum` | Quantum-inspired optimization algorithms |
| `prime-radiant` | `plugin-prime` | Predictive performance modeling |

### Neural Plugins (2)

| Plugin | Command | Purpose |
|--------|---------|---------|
| `neural-coordination` | `plugin-neural` | Multi-agent neural coordination |
| `ruvector-upstream` | — | Direct RuVector integration |

### Domain-Specific Plugins (3)

| Plugin | Command | Purpose |
|--------|---------|---------|
| `financial-risk` | `plugin-financial` | Financial modeling, risk assessment |
| `healthcare-clinical` | `plugin-healthcare` | Clinical workflows, medical terminology |
| `legal-contracts` | `plugin-legal` | Contract analysis, legal document processing |

### Infrastructure Plugins (2)

| Plugin | Command | Purpose |
|--------|---------|---------|
| `gastown-bridge` | — | WASM bridge for high-performance computing |
| `teammate-plugin` | — | Team collaboration, role assignment |

---

## Workflow 1: New Builds (ADR + DDD)

*Greenfield project from requirements to deployment.*

### 1. Boot (do this once per session)

Follow the Boot Sequence above, or if already booted:

> "Check system status and make sure daemon is running and MCP servers are connected"

### 2. Domain Discovery

> "Analyze these business requirements and identify potential bounded contexts"

> "Use v3-ddd-architecture to discover domains and define bounded context boundaries"

> "Create a context map showing relationships and integration patterns between contexts"

> "Define the ubiquitous language for each bounded context"

### 3. Architecture Decision Records

> "Create ADR-001 documenting our decision to use microservices architecture with event-driven communication"

> "Document the technology stack decisions with context, alternatives, and consequences"

> "Store all ADRs in memory for future reference"

```bash
mem-store "project/adrs" "$(ls docs/adr/)"
```

### 4. Domain Modeling

> "Design aggregates, entities, and value objects for the Identity bounded context"

> "Define domain events and their handlers for the Order context"

> "Create repository interfaces following DDD patterns"

> "Use plugin-code-intel to validate domain model consistency"

### 5. Build

> "Spawn a hierarchical swarm with a system architect, domain experts, and implementers"

> "Orchestrate building the Identity context using v3-core-implementation patterns"

> "Route the aggregate design task to agents with DDD experience"

> "Remember this domain model pattern for similar contexts"

### 6. Test & Secure

> "Generate comprehensive tests for the Order domain targeting 95% coverage"

> "Run plugin-qe for autonomous quality engineering"

> "Run the full quality pipeline: test generation, coverage analysis, security scan"

> "Use v3-security-overhaul to audit and remediate CVEs"

### 7. Deploy

> "Deploy this to Vercel and give me the preview URL"

> "Use github-release-management to prepare the release"

### 8. Document & Learn

> "Update the context map with actual integration patterns implemented"

> "Create ADR for any architectural decisions made during implementation"

> "Consolidate everything RuVector learned during this build"

```bash
ruv-learn
ruv-stats
mem-stats
```

---

## Workflow 2: Continued Builds (Domain Extension)

*Adding new bounded contexts or extending existing ones.*

### 1. Recover Context

> "Recall what RuVector knows about this project's domain model"

> "Search AgentDB for ADRs and context maps from previous sessions"

> "Show me the current bounded context structure"

```bash
cf-doctor
ruv-recall "domain-model"
mem-search "adr"
```

### 2. Analyze Impact

> "Analyze the impact of adding a Payment bounded context — what existing contexts are affected?"

> "Use v3-ddd-architecture to identify integration points"

> "Check ADRs for any constraints on new contexts"

> "Use plugin-cognitive for meta-analysis of architectural fit"

### 3. Design the Extension

> "Design the Payment bounded context with aggregates, entities, and domain events"

> "Define integration events for communicating with Order context"

> "Create ADR documenting the Payment context design decisions"

> "Update the context map with new relationships"

### 4. Build

> "Create a feature swarm with 2 backend devs, 1 domain expert, and a tester"

> "Implement the Payment context following v3-core-implementation patterns"

> "Use agentdb-learning to train on existing context implementations"

### 5. Test

> "Run plugin-test-intel for smart test selection across contexts"

> "Validate domain invariants in the Payment aggregate"

> "Run the quality gate at 95% threshold"

### 6. Integrate & Deploy

> "Implement integration events between Payment and Order contexts"

> "Deploy the preview and verify cross-context communication"

---

## Workflow 3: Refactor Builds (Architecture Evolution)

*Evolving architecture while preserving domain logic.*

### 1. Baseline

> "Recall all ADRs and the current domain model"

> "Generate characterization tests that capture current behavior"

> "Use plugin-code-intel for AST analysis of current structure"

> "Spawn a mesh analysis swarm to review domain boundaries and code organization"

### 2. Plan the Evolution

> "Create ADR for migrating from monolith to modular monolith with DDD"

> "Analyze current code against DDD patterns — identify violations and improvements"

> "Use v3-ddd-architecture to plan bounded context extraction"

> "Store the evolution plan in memory"

### 3. Execute Refactoring

> "Use v3-core-implementation patterns to refactor the User module into Identity context"

> "Extract domain logic from infrastructure following DDD patterns"

> "Maintain ADR traceability during refactoring"

> "Use verification-quality for truth scoring and rollback protection"

### 4. Validate

> "Run characterization tests against refactored code"

> "Verify domain invariants are preserved"

> "Use plugin-perf to compare performance before and after"

> "Run the final quality gate"

### 5. Document

> "Update all ADRs affected by the refactoring"

> "Update context map with new boundaries"

> "Record lessons learned in RuVector"

```bash
ruv-learn
ruv-stats
```

---

## Workflow 4: UI Development

*Frontend work with domain-aware components.*

### 1. Understand Domain Context

> "What bounded context does this UI component serve?"

> "Map UI screens to domain operations and aggregates"

> "Ensure ubiquitous language consistency in UI labels"

### 2. Design

> "Design a dashboard interface for the Order bounded context"

> "Search the design database for styles matching our domain model"

> "Generate a persistent design system aligned with domain terminology"

### 3. Build

> "Create components that reflect domain concepts"

> "Implement UI following our design system and DDD patterns"

> "Use pair-programming for complex UI logic"

### 4. Test

> "Use the Claude Flow browser to validate UI against domain requirements"

> "Start trajectory recording for user flows"

> "Verify accessibility compliance"

---

## Workflow 5: Domain-Specific Development

*Leveraging specialized plugins for industry workloads.*

### Financial Applications

> "Use plugin-financial to model risk for the Trading bounded context"

> "Create ADR for regulatory compliance architecture"

> "Design domain events for trade lifecycle"

### Healthcare Applications

> "Use plugin-healthcare for Patient context domain modeling"

> "Ensure HIPAA compliance in ADR documentation"

> "Design bounded contexts around clinical workflows"

### Legal Document Processing

> "Use plugin-legal to analyze contract domain requirements"

> "Create ADR for document storage architecture"

> "Model Contract aggregate with versioning"

---

## Secondary: Spec-Driven Workflows

OpenSpec and SPARC remain available for specific use cases.

### When to Use Spec-Driven

| Use Case | Tool | Purpose |
|----------|------|---------|
| API contract definition | OpenSpec | Define REST API contracts |
| Formal methodology needed | SPARC | Systematic development phases |
| External integration specs | OpenSpec | Third-party API documentation |

### OpenSpec (Secondary)

> "Use OpenSpec to define the REST API contract for the Order context"

> "Validate the API spec against domain model"

### SPARC Methodology (Secondary)

> "Use SPARC methodology for systematic feature development"

> "Apply SPARC phases: Specification, Pseudocode, Architecture, Refinement, Completion"

---

## Tool Reference

### DDD + ADR Commands (Primary)

| Command | Purpose |
|---------|---------|
| `cf-v3-ddd` | DDD architecture, bounded contexts |
| `cf-v3-core` | Clean architecture implementation |
| `cf-v3-cli` | Interactive domain modeling |
| `mem-store` | Store ADRs and context maps |

### Swarm Topologies

| Topology | Command | When to use |
|----------|---------|-------------|
| Hierarchical | `cf-swarm` | Domain implementation — architect delegates to specialists |
| Mesh | `cf-mesh` | Refactoring — parallel peer-to-peer work |
| Byzantine | via NLP | Architecture decisions — consensus on ADRs |
| Star | via NLP | Full context builds — central coordinator |

### Claude Flow Browser (59 MCP Tools)

| Command | What it does |
|---------|-------------|
| `cfb-open <url>` | Open a page |
| `cfb-snap` | Take a snapshot |
| `cfb-click <ref>` | Click element |
| `cfb-fill <ref> <val>` | Fill an input |
| `cfb-trajectory` | Start recording a user flow |
| `cfb-learn` | Save the recording |

### Memory Operations

**Claude Flow Memory:**

| Command | What it does |
|---------|-------------|
| `mem-store "key" "value"` | Store ADRs, context maps |
| `mem-search "query"` | Keyword search |
| `mem-vsearch "query"` | Semantic search |
| `mem-stats` | Database statistics |

**RuVector:**

| Command | What it does |
|---------|-------------|
| `ruv-init` | Activate hooks |
| `ruv-remember "pattern"` | Save domain patterns |
| `ruv-recall "query"` | Retrieve patterns |
| `ruv-route "task"` | Route to best agent |
| `ruv-learn` | Consolidate learnings |
| `ruv-stats` | Learning statistics |

### Plugin Quick Reference

| Category | Commands |
|----------|----------|
| **Quality** | `plugin-qe`, `plugin-test-intel` |
| **Code Intel** | `plugin-code-intel` |
| **Cognitive** | `plugin-cognitive`, `plugin-hyperbolic` |
| **Performance** | `plugin-perf`, `plugin-quantum`, `plugin-prime` |
| **Neural** | `plugin-neural` |
| **Domain** | `plugin-financial`, `plugin-healthcare`, `plugin-legal` |

### Security & Deployment

| Command | What it does |
|---------|-------------|
| `cf-v3-security` | Security overhaul, CVE remediation |
| `deploy` | Deploy to Vercel |
| `deploy-preview` | Deploy with preview URL |
| `cf-gh-release` | Release management |

---

## Troubleshooting

| Problem | Fix |
|---------|-----|
| Commands not found | `source ~/.bashrc` |
| MCP servers not connected | `claude mcp list` — re-register any missing |
| Memory empty after restart | `npx -y claude-flow@alpha memory init` |
| RuVector not learning | `ruv-init` then `hooks-train` |
| ADRs not found in memory | `mem-search "adr"` to verify storage |
| Domain model inconsistent | Use `plugin-code-intel` for analysis |
| Plugin not found | `ls .claude-flow/plugins/` |

---

## Quick Reference

```
BOOT:       cf-init → memory init → mcp add → ruv-init → hooks-train → cf-daemon
DISCOVER:   v3-ddd-architecture → identify bounded contexts → context map
DECIDE:     create ADRs → store in memory → validate constraints
MODEL:      aggregates → entities → value objects → domain events
BUILD:      v3-core-implementation → swarm orchestrate → ruv-remember
TEST:       plugin-qe → plugin-test-intel → aqe-gate → verification-quality
SECURE:     v3-security-overhaul → scan vulnerabilities → remediate CVEs
DEPLOY:     deploy-preview → cf-gh-release → update context map
LEARN:      ruv-remember → ruv-learn → update ADRs if needed
MONITOR:    turbo-status → cf-doctor → ccusage
```

---

## Methodology Summary

| Primary | Secondary |
|---------|-----------|
| **ADR** - Architecture Decision Records | SPARC - Formal methodology |
| **DDD** - Domain-Driven Design | OpenSpec - API specifications |
| **Bounded Contexts** | Monolithic patterns |
| **Ubiquitous Language** | Technical terminology |
| **Domain Events** | Direct method calls |
| **Aggregates** | Anemic models |

---

## Skills & Plugins Summary

| Category | Count | Key Commands |
|----------|-------|--------------|
| DDD Skills | 9 | `cf-v3-ddd`, `cf-v3-core`, `cf-v3-cli` |
| Core Skills | 6 | `cf-swarm-skill`, `cf-hive`, `cf-pair` |
| AgentDB Skills | 4 | `cf-agentdb-learning`, `cf-agentdb-memory` |
| GitHub Skills | 4 | `cf-gh-review`, `cf-gh-multi`, `cf-gh-project` |
| Additional | 8 | `verification-quality`, `hooks-automation` |
| Custom Skills | 5 | Security Analyzer, UI Pro Max, Worktree |
| **Plugins** | **15** | `plugin-qe`, `plugin-cognitive`, `plugin-financial` |
| **Total** | **56** | Complete agentic development environment |
