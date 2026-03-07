# 🚀 Turbo Flow Claude v3.4.0

<div align="center">

![Versión](https://img.shields.io/badge/versión-3.4.0-blue?style=for-the-badge)
![Claude Flow](https://img.shields.io/badge/Claude_Flow-V3-purple?style=for-the-badge)
![RuVector](https://img.shields.io/badge/RuVector-Motor_Neural-green?style=for-the-badge)
![Skills](https://img.shields.io/badge/Skills-56_Total-orange?style=for-the-badge)
![Plugins](https://img.shields.io/badge/Plugins-15-critical?style=for-the-badge)
![Licencia](https://img.shields.io/badge/licencia-MIT-orange?style=for-the-badge)

**⚡ Entorno de Desarrollo Agéntico Completo — Claude Flow V3 + RuVector + Todos los Plugins ⚡**

[Inicio Rápido](#-inicio-rápido) • [Instalación](#-qué-se-instala) • [Skills](#-skills-41-totales) • [Plugins](#-plugins-15-totales) • [Comandos](#️-comandos-principales) • [Recursos](#-recursos)

</div>

---

## 🆕 Novedades en v3.4.0

| Métrica | v3.3.0 | v3.4.0 | Cambio |
|---------|--------|--------|--------|
| Skills Nativas | 36 | **36** | — |
| Plugins | 0 | **15** | +15 ⭐ |
| Skills Personalizadas | 5 | **5** | — |
| **Total Componentes** | **41** | **56** | +37% |
| Aliases de Bash | 50+ | **70+** | +40% |
| Pasos de Instalación | 18 | **19** | +1 |

### Adiciones Principales en v3.4.0

- ✅ **15 Plugins de Claude Flow** — Cobertura completa de plugins para flujos de trabajo específicos por dominio
- ✅ **Aliases para Plugins** — Comandos rápidos para todos los plugins
- ✅ **70+ Aliases de Bash** — Extendidos con atajos específicos de plugins

### Desde v3.3.0

- ✅ **36 Skills Nativas de Claude Flow** — Cobertura completa de todas las skills disponibles
- ✅ **Sistema de Memoria** — Búsqueda vectorial HNSW, AgentDB, LearningBridge
- ✅ **Registro de Servidor MCP** — 175+ herramientas registradas automáticamente
- ✅ **Statusline Cyberpunk** — Visualización de estado de 15 componentes en 3 líneas
- ✅ **Verificación Mejorada** — post-setup.sh verifica más de 100 elementos

---

## 🏗️ Arquitectura

```
╔══════════════════════════════════════════════════════════════════════╗
║                       🚀 TURBO FLOW v3.4.0                           ║
╠══════════════════════════════════════════════════════════════════════╣
║  🖥️  INTERFAZ                                                         ║
║  ┌──────────────┐ ┌──────────────┐ ┌──────────────┐                  ║
║  │ Claude Code  │ │ Navegador    │ │  Statusline  │                  ║
║  │     CLI      │ │  Agente      │ │   Pro (15)   │                  ║
║  └──────────────┘ └──────────────┘ └──────────────┘                  ║
╠══════════════════════════════════════════════════════════════════════╣
║  🧠 MOTOR NEURAL: RuVector                                           ║
║  ┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐ ┌────────┐             ║
║  │  SONA  │ │  HNSW  │ │  MoE   │ │ EWC++  │ │  GNN   │             ║
║  │<0.05ms │ │  150x  │ │8 expert│ │95% keep│ │ layers │             ║
║  └────────┘ └────────┘ └────────┘ └────────┘ └────────┘             ║
╠══════════════════════════════════════════════════════════════════════╣
║  🎯 ORQUESTACIÓN: Claude Flow V3                                     ║
║  60+ Agentes  │  175+ Herramientas MCP  │  Workers en Segundo Plano ║
╠══════════════════════════════════════════════════════════════════════╣
║  📚 SKILLS (41 Totales)                                              ║
║  ┌─────────────────────────────────────────────────────────────────┐ ║
║  │ Core(6) │ AgentDB(4) │ GitHub(4) │ V3Dev(9) │ Reasoning(2)    │ ║
║  │ FlowNexus(3) │ Adicionales(8) │ Personalizadas(5)              │ ║
║  └─────────────────────────────────────────────────────────────────┘ ║
╠══════════════════════════════════════════════════════════════════════╣
║  🔌 PLUGINS (15 Totales) ⭐ NUEVO                                    ║
║  ┌─────────────────────────────────────────────────────────────────┐ ║
║  │ QE(2) │ CodeIntel(1) │ Cognitivo(2) │ Perf(3) │ Neural(2)     │ ║
║  │ Dominio(3) │ WASM(1) │ Upstream(1)                              │ ║
║  └─────────────────────────────────────────────────────────────────┘ ║
╠══════════════════════════════════════════════════════════════════════╣
║  💾 SISTEMA DE MEMORIA                                               ║
║  Búsqueda Vectorial HNSW │ AgentDB SQLite │ LearningBridge │ 3-Scop║
╠══════════════════════════════════════════════════════════════════════╣
║  🧪 TESTING          │  🔒 SEGURIDAD       │  📋 ESPECIFICACIONES   ║
║  Agentic QE          │  Security Analyzer  │  Spec-Kit              ║
║  Verificación(0.95)  │  Codex (opcional)   │  OpenSpec              ║
╚══════════════════════════════════════════════════════════════════════╝
```

---

## 🏁 Inicio Rápido

### 📦 Instalación de DevPod

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

### 🚀 Lanzar

```bash
devpod up https://github.com/marcuspat/turbo-flow-claude --ide vscode
```

---

## 📦 Qué Se Instala

El script `setup.sh` instala la pila completa en **19 pasos automatizados**:

### Paso 1️⃣ Herramientas de Compilación

| Paquete | Propósito |
|:--------|:----------|
| `build-essential` | Compilador C/C++ (gcc, g++, make) |
| `python3` | Runtime de Python |
| `git` | Control de versiones |
| `curl` | Cliente HTTP |
| `jq` | Procesador JSON (requerido para statusline) |

---

### Paso 2️⃣ Claude Flow V3 + RuVector

> 🔄 **Delegado al instalador oficial** — maneja todo automáticamente

| Componente | Propósito |
|:-----------|:----------|
| ![Node](https://img.shields.io/badge/Node.js-20+-339933?logo=node.js&logoColor=white) | Runtime de JavaScript |
| ![Claude](https://img.shields.io/badge/Claude_Code-CLI-8B5CF6?logo=anthropic&logoColor=white) | Asistente de codificación IA |
| `claude-flow@alpha` | 60+ agentes, 175+ herramientas MCP |
| `ruvector` | Base de datos vectorial + GNN + auto-aprendizaje |
| `@ruvector/cli` | Hooks e inteligencia |
| `@ruvector/sona` | Arquitectura Neural Auto-Optimizada |

---

### Pasos 3️⃣-🔟 Skills Nativas de Claude Flow (36)

#### Skills Core (6)

| Skill | Propósito |
|:------|:----------|
| `sparc-methodology` | Metodología de desarrollo SPARC |
| `swarm-orchestration` | Coordinación multi-agente (mesh/jerárquica) |
| `github-code-review` | Revisiones de PR impulsadas por IA |
| `agentdb-vector-search` | Búsqueda vectorial HNSW (150x más rápido) |
| `pair-programming` | Codificación IA Driver/Navigator |
| `hive-mind-advanced` | Inteligencia colectiva liderada por Reina |

#### Skills AgentDB (4)

| Skill | Propósito |
|:------|:----------|
| `agentdb-advanced` | Sincronización QUIC, multi-base de datos, métricas personalizadas |
| `agentdb-learning` | 9 algoritmos RL (Q-Learning, Actor-Critic) |
| `agentdb-memory-patterns` | Memoria de sesión, aprendizaje de patrones |
| `agentdb-optimization` | Cuantización (4-32x reducción de memoria) |

#### Skills GitHub (4)

| Skill | Propósito |
|:------|:----------|
| `github-multi-repo` | Coordinación entre repositorios |
| `github-project-management` | Issues, tableros de proyecto, sprints |
| `github-release-management` | Versionado, despliegue, rollback |
| `github-workflow-automation` | Automatización de pipelines CI/CD |

#### Skills de Desarrollo V3 (9)

| Skill | Propósito |
|:------|:----------|
| `v3-cli-modernization` | Prompts interactivos, descomposición de comandos |
| `v3-core-implementation` | Dominios DDD, arquitectura limpia |
| `v3-ddd-architecture` | Contextos delimitados, microkernel |
| `v3-integration-deep` | Integración profunda con agentic-flow |
| `v3-mcp-optimization` | Respuesta MCP sub-100ms |
| `v3-memory-unification` | Backend AgentDB unificado |
| `v3-performance-optimization` | Flash Attention (2.49x-7.47x) |
| `v3-security-overhaul` | Remediación de CVEs |
| `v3-swarm-coordination` | Mesh jerárquico de 15 agentes |

#### Skills ReasoningBank (2)

| Skill | Propósito |
|:------|:----------|
| `reasoningbank-agentdb` | Seguimiento de trayectorias, destilación de memoria |
| `reasoningbank-intelligence` | Reconocimiento de patrones, meta-cognición |

#### Skills Flow Nexus (3)

| Skill | Propósito |
|:------|:----------|
| `flow-nexus-neural` | Entrenamiento de redes neuronales en sandboxes E2B |
| `flow-nexus-platform` | Auth, sandboxes, despliegue de apps |
| `flow-nexus-swarm` | Despliegue de swarm en la nube |

#### Skills Adicionales (8)

| Skill | Propósito |
|:------|:----------|
| `agentic-jujutsu` | Control de versiones resistente a cuántica |
| `hooks-automation` | Hooks pre/post tarea, entrenamiento neural |
| `performance-analysis` | Detección de cuellos de botella, profiling |
| `skill-builder` | Crear skills personalizadas para Claude Code |
| `stream-chain` | Pipelines de streaming multi-agente |
| `swarm-advanced` | Flujos de trabajo distribuidos avanzados |
| `verification-quality` | Puntuación de verdad (0.95), rollback automático |
| `dual-mode` | Operaciones de modo dual |

---

### Paso 1️⃣1️⃣ Plugins de Claude Flow (15) ⭐ NUEVO

#### Plugins de Ingeniería de Calidad (2)

| Plugin | Propósito |
|:-------|:----------|
| `agentic-qe` | Ingeniería de calidad autónoma, generación de tests |
| `test-intelligence` | Selección inteligente de tests, optimización de cobertura |

#### Plugins de Inteligencia de Código (1)

| Plugin | Propósito |
|:-------|:----------|
| `code-intelligence` | Análisis AST, comprensión de código, refactoring |

#### Plugins Cognitivos (2)

| Plugin | Propósito |
|:-------|:----------|
| `cognitive-kernel` | Meta-cognición, auto-reflexión, razonamiento |
| `hyperbolic-reasoning` | Geometría hiperbólica para razonamiento complejo |

#### Plugins de Rendimiento (3)

| Plugin | Propósito |
|:-------|:----------|
| `perf-optimizer` | Profiling de rendimiento, sugerencias de optimización |
| `quantum-optimizer` | Algoritmos de optimización inspirados en cuántica |
| `prime-radiant` | Modelado predictivo de rendimiento |

#### Plugins Neurales (2)

| Plugin | Propósito |
|:-------|:----------|
| `neural-coordination` | Coordinación neural multi-agente |
| `ruvector-upstream` | Integración directa con RuVector |

#### Plugins Específicos de Dominio (3)

| Plugin | Propósito |
|:-------|:----------|
| `financial-risk` | Modelado financiero, evaluación de riesgos |
| `healthcare-clinical` | Flujos de trabajo clínicos, terminología médica |
| `legal-contracts` | Análisis de contratos, procesamiento de documentos legales |

#### Plugins de Infraestructura (2)

| Plugin | Propósito |
|:-------|:----------|
| `gastown-bridge` | Puente WASM para computación de alto rendimiento |
| `teammate-plugin` | Colaboración en equipo, asignación de roles |

---

### Paso 1️⃣2️⃣ Sistema de Memoria

| Componente | Rendimiento |
|:-----------|:------------|
| **Búsqueda Vectorial HNSW** | 150x-12,500x más rápido que estándar |
| **AgentDB** | Basado en SQLite con modo WAL, búsqueda <100µs |
| **LearningBridge** | Sincronización bidireccional con Claude Code |
| **Memoria 3-Scope** | Ámbito proyecto/local/usuario |

---

### Paso 1️⃣3️⃣ Registro de Servidor MCP

Registro automático del servidor MCP de Claude Flow:

| Categoría de Herramienta | Cantidad |
|:-------------------------|:---------|
| Herramientas de agente | 20+ |
| Herramientas de memoria | 15+ |
| Herramientas de swarm | 10+ |
| Herramientas de GitHub | 10+ |
| Herramientas de navegador | 59 |
| **Total** | **175+** |

---

### Pasos 1️⃣4️⃣-1️⃣6️⃣ Skills Personalizadas (5)

| Skill | Fuente | Propósito |
|:------|:-------|:----------|
| 🔒 `security-analyzer` | GitHub (Cornjebus) | Escaneo de vulnerabilidades de seguridad |
| 🎨 `ui-ux-pro-max` | uipro-cli | Asistencia de diseño UI/UX |
| 🌳 `worktree-manager` | GitHub (Wirasm) | Gestión de worktrees de git |
| 🚀 `vercel-deploy` | Vercel Labs | Despliegue a Vercel con un comando |
| 📊 `rUv_helpers` | GitHub (Jordi-Izquierdo) | Visualización de RuVector |

---

### Paso 1️⃣7️⃣ Statusline Pro

Statusline cyberpunk de 15 componentes en 3 líneas:

```
LÍNEA 1: 📁 Proyecto │ 🤖 Modelo │ 🌿 Branch │ 📟 Versión │ 🎨 Estilo
LÍNEA 2: 📊 Tokens │ 🧠 Contexto │ 💾 Cache │ 💰 Costo │ 🔥 Quema │ ⏱️ Tiempo
LÍNEA 3: ➕ Añadido │ ➖ Eliminado │ 📂 Git │ 🌳 Worktree │ 🔌 MCP │ ✅ Estado
```

---

### Paso 1️⃣8️⃣ Configuración del Workspace

| Componente | Propósito |
|:-----------|:----------|
| 📁 Directorios | `src/` `tests/` `docs/` `scripts/` `config/` `plans/` |
| ⚙️ `tsconfig.json` | TypeScript (ES2022, ESNext) |
| 🎨 `@heroui/react` | Librería de componentes UI |
| 🎬 `framer-motion` | Animaciones |
| 🌊 `tailwindcss` | CSS utilitario |

---

### Paso 1️⃣9️⃣ Aliases de Bash (70+)

<table>
<tr>
<td>

**🧠 RuVector**
```
ruv, ruv-stats, ruv-route
ruv-remember, ruv-recall
ruv-learn, ruv-init, ruv-viz
```

</td>
<td>

**🎯 Claude Flow**
```
cf, cf-init, cf-wizard
cf-swarm, cf-mesh, cf-daemon
cf-doctor, cf-mcp, cf-memory
cf-plugin
```

</td>
</tr>
<tr>
<td>

**📚 Skills Core**
```
cf-sparc, cf-swarm-skill
cf-hive, cf-pair
cf-gh-review, cf-agentdb-search
```

</td>
<td>

**🗄️ AgentDB**
```
cf-agentdb-advanced
cf-agentdb-learning
cf-agentdb-memory
cf-agentdb-opt
```

</td>
</tr>
<tr>
<td>

**🐙 GitHub**
```
cf-gh-multi, cf-gh-project
cf-gh-release, cf-gh-workflow
```

</td>
<td>

**🔧 Desarrollo V3**
```
cf-v3-cli, cf-v3-core
cf-v3-ddd, cf-v3-perf
cf-v3-security
```

</td>
</tr>
<tr>
<td>

**🔌 Plugins - QE**
```
plugin-qe, plugin-test-intel
```

</td>
<td>

**🔌 Plugins - Cognitivo**
```
plugin-cognitive
plugin-hyperbolic
```

</td>
</tr>
<tr>
<td>

**🔌 Plugins - Perf**
```
plugin-perf, plugin-quantum
plugin-prime
```

</td>
<td>

**🔌 Plugins - Dominio**
```
plugin-financial
plugin-healthcare
plugin-legal
```

</td>
</tr>
<tr>
<td>

**💾 Memoria y Neural**
```
mem-search, mem-vsearch
mem-stats, neural-train
neural-patterns
```

</td>
<td>

**🌐 Navegador**
```
cfb-open, cfb-snap
cfb-click, cfb-fill
cfb-trajectory, cfb-learn
```

</td>
</tr>
<tr>
<td>

**🔄 Flujo de Trabajo**
```
wt-status, wt-clean
wt-create, deploy
deploy-preview
```

</td>
<td>

**🧪 Testing y Calidad**
```
aqe, aqe-generate, aqe-gate
cf-verify, cf-perf-analyze
```

</td>
</tr>
</table>

---

## 📚 Skills (41 Totales)

### Skills por Categoría

| Categoría | Cantidad | Skills |
|:----------|:---------|:-------|
| Core | 6 | sparc, swarm, hive, pair, gh-review, agentdb-search |
| AgentDB | 4 | advanced, learning, memory-patterns, optimization |
| GitHub | 4 | multi-repo, project-mgmt, release, workflow |
| Desarrollo V3 | 9 | cli, core, ddd, integration, mcp, memory, perf, security, swarm |
| ReasoningBank | 2 | agentdb, intelligence |
| Flow Nexus | 3 | neural, platform, swarm |
| Adicionales | 8 | jujutsu, hooks, perf-analysis, skill-builder, stream, swarm-adv, verify, dual |
| Personalizadas | 5 | security-analyzer, ui-ux-pro-max, worktree-manager, vercel-deploy, rUv_helpers |

---

## 🔌 Plugins (15 Totales)

### Plugins por Categoría

| Categoría | Cantidad | Plugins |
|:----------|:---------|:--------|
| Ingeniería de Calidad | 2 | agentic-qe, test-intelligence |
| Inteligencia de Código | 1 | code-intelligence |
| Cognitivo | 2 | cognitive-kernel, hyperbolic-reasoning |
| Rendimiento | 3 | perf-optimizer, quantum-optimizer, prime-radiant |
| Neural | 2 | neural-coordination, ruvector-upstream |
| Específico de Dominio | 3 | financial-risk, healthcare-clinical, legal-contracts |
| Infraestructura | 2 | gastown-bridge, teammate-plugin |

### Comandos Rápidos de Plugins

```bash
# Ingeniería de Calidad
plugin-qe              # Ejecutar agentic-qe
plugin-test-intel      # Ejecutar test-intelligence

# Inteligencia de Código
plugin-code-intel      # Ejecutar code-intelligence

# Cognitivo
plugin-cognitive       # Ejecutar cognitive-kernel
plugin-hyperbolic      # Ejecutar hyperbolic-reasoning

# Rendimiento
plugin-perf            # Ejecutar perf-optimizer
plugin-quantum         # Ejecutar quantum-optimizer
plugin-prime           # Ejecutar prime-radiant

# Neural
plugin-neural          # Ejecutar neural-coordination

# Dominio
plugin-financial       # Ejecutar financial-risk
plugin-healthcare      # Ejecutar healthcare-clinical
plugin-legal           # Ejecutar legal-contracts
```

---

## 📂 Estructura de Directorios

```
📁 ~/.claude/
├── 📁 skills/
│   ├── 📚 Core (6)
│   │   ├── sparc-methodology/
│   │   ├── swarm-orchestration/
│   │   ├── github-code-review/
│   │   ├── agentdb-vector-search/
│   │   ├── pair-programming/
│   │   └── hive-mind-advanced/
│   ├── 🗄️ AgentDB (4)
│   ├── 🐙 GitHub (4)
│   ├── 🔧 Desarrollo V3 (9)
│   ├── 🧠 ReasoningBank (2)
│   ├── ☁️ Flow Nexus (3)
│   ├── ⚡ Adicionales (8)
│   └── 🎨 Personalizadas (5)
│       ├── security-analyzer/
│       ├── ui-ux-pro-max/
│       ├── worktree-manager/
│       ├── vercel-deploy/
│       └── rUv_helpers/
├── 📁 commands/
│   └── 📝 prd2build.md
├── ⚙️ settings.json
├── 📊 turbo-flow-statusline.sh
└── 📁 statusline-pro/

📁 ~/.config/claude/
└── ⚙️ mcp.json (175+ herramientas)

📁 ~/.codex/
└── 📄 instructions.md

📁 $WORKSPACE/
├── 📁 src/
├── 📁 tests/
├── 📁 docs/
├── 📁 scripts/
├── 📁 config/
├── 📁 plans/
├── 📁 .claude-flow/
│   ├── 📁 memory/
│   │   └── 🗄️ agent.db
│   ├── 📁 plugins/          ⭐ NUEVO
│   │   ├── agentic-qe/
│   │   ├── code-intelligence/
│   │   ├── cognitive-kernel/
│   │   ├── financial-risk/
│   │   ├── gastown-bridge/
│   │   ├── healthcare-clinical/
│   │   ├── hyperbolic-reasoning/
│   │   ├── legal-contracts/
│   │   ├── neural-coordination/
│   │   ├── perf-optimizer/
│   │   ├── prime-radiant/
│   │   ├── quantum-optimizer/
│   │   ├── ruvector-upstream/
│   │   ├── teammate-plugin/
│   │   └── test-intelligence/
│   └── ⚙️ config.json
├── 📁 node_modules/@heroui/
├── 🤝 AGENTS.md
├── 📦 package.json
├── ⚙️ tsconfig.json
├── 🌊 tailwind.config.js
└── 📝 .claude-flow-prompts.md
```

---

## ✅ Post-Instalación

```bash
# 1️⃣ Recargar shell
source ~/.bashrc

# 2️⃣ Verificar instalación
turbo-status

# 3️⃣ Obtener ayuda
turbo-help

# 4️⃣ Ejecutar verificación post-setup
./post-setup.sh

# 5️⃣ Instalar Codex (opcional)
npm install -g @openai/codex && codex login
```

---

## ⌨️ Comandos Principales

<details>
<summary><b>📊 Estado y Ayuda</b></summary>

```bash
turbo-status    # Verificar todos los 56 componentes + 100+ elementos
turbo-help      # Referencia completa de comandos
cf-doctor       # Verificación de salud de Claude Flow
```
</details>

<details>
<summary><b>🧠 RuVector</b></summary>

```bash
ruv                  # Iniciar RuVector
ruv-stats            # Estadísticas de aprendizaje
ruv-route "tarea"    # Enrutar al mejor agente
ruv-remember "ctx"   # Almacenar en memoria
ruv-recall "query"   # Buscar en memoria
ruv-viz              # Iniciar dashboard de visualización
```
</details>

<details>
<summary><b>🎯 Claude Flow V3</b></summary>

```bash
cf-init              # Inicializar workspace
cf-wizard            # Configuración interactiva
cf-swarm             # Swarm jerárquico
cf-mesh              # Swarm en mesh
cf-doctor            # Verificación de salud
cf-daemon            # Iniciar daemon
cf-mcp               # Iniciar servidor MCP
cf-memory            # Operaciones de memoria
cf-plugin            # Gestión de plugins
```
</details>

<details>
<summary><b>📚 Skills Core</b></summary>

```bash
cf-sparc             # Metodología SPARC
cf-swarm-skill       # Orquestación de swarm
cf-hive              # Coordinación hive mind
cf-pair              # Programación en pareja
cf-gh-review         # Revisión de código GitHub
cf-agentdb-search    # Búsqueda vectorial
```
</details>

<details>
<summary><b>🗄️ Operaciones AgentDB</b></summary>

```bash
cf-agentdb-advanced  # Sincronización QUIC, multi-db
cf-agentdb-learning  # Algoritmos RL
cf-agentdb-memory    # Patrones de memoria
cf-agentdb-opt       # Optimización
```
</details>

<details>
<summary><b>🐙 Integración GitHub</b></summary>

```bash
cf-gh-multi          # Coordinación multi-repo
cf-gh-project        # Gestión de proyectos
cf-gh-release        # Gestión de releases
cf-gh-workflow       # Automatización CI/CD
```
</details>

<details>
<summary><b>🔌 Plugins</b></summary>

```bash
# Ingeniería de Calidad
plugin-qe            # Agentic QE
plugin-test-intel    # Inteligencia de tests

# Inteligencia de Código
plugin-code-intel    # Comprensión de código

# Cognitivo
plugin-cognitive     # Kernel cognitivo
plugin-hyperbolic    # Razonamiento hiperbólico

# Rendimiento
plugin-perf          # Optimizador de rendimiento
plugin-quantum       # Optimizador cuántico
plugin-prime         # Prime radiant

# Neural
plugin-neural        # Coordinación neural

# Específico de Dominio
plugin-financial     # Riesgo financiero
plugin-healthcare    # Clínico de salud
plugin-legal         # Contratos legales
```
</details>

<details>
<summary><b>💾 Memoria y Neural</b></summary>

```bash
mem-search           # Buscar en memoria
mem-vsearch          # Búsqueda vectorial (HNSW)
mem-vstore           # Almacenar vector
mem-stats            # Estadísticas de memoria
neural-train         # Entrenar neural
neural-patterns      # Patrones neurales
neural-predict       # Predecir
```
</details>

<details>
<summary><b>🌐 Automatización de Navegador</b></summary>

```bash
cfb-open <url>       # Abrir URL vía MCP
cfb-snap             # Tomar snapshot
cfb-click            # Clic en elemento
cfb-fill             # Llenar formulario
cfb-trajectory       # Iniciar aprendizaje de trayectoria
cfb-learn            # Guardar patrón
```
</details>

<details>
<summary><b>🔄 Flujo de Trabajo</b></summary>

```bash
wt-status            # Estado de worktree
wt-clean             # Limpiar worktrees
wt-create            # Crear worktree
deploy               # Desplegar a Vercel
deploy-preview       # Desplegar con URL de preview
```
</details>

<details>
<summary><b>🧪 Testing y Calidad</b></summary>

```bash
aqe-generate         # Generar tests
aqe-gate             # Puerta de calidad
cf-verify            # Puntuación de verdad
cf-perf-analyze      # Análisis de rendimiento
```
</details>

---

## 📄 Documentación

| Documento | Descripción |
|:----------|:------------|
| `RELEASE_NOTES_v3.4.0.md` | Notas de versión completas |
| `Turbo_Flow_v3.4.0_Scripts_Analysis.md` | Análisis técnico |
| `.claude-flow-prompts.md` | 35+ prompts de uso |

---

## 🔗 Recursos

| Recurso | Enlace |
|:--------|:-------|
| 🎯 Claude Flow V3 | [![GitHub](https://img.shields.io/badge/GitHub-ruvnet/claude--flow-181717?logo=github)](https://github.com/ruvnet/claude-flow) |
| 🧠 RuVector | [![GitHub](https://img.shields.io/badge/GitHub-ruvnet/ruvector-181717?logo=github)](https://github.com/ruvnet/ruvector) |
| 🚀 Turbo Flow | [![GitHub](https://img.shields.io/badge/GitHub-marcuspat/turbo--flow--claude-181717?logo=github)](https://github.com/marcuspat/turbo-flow-claude) |
| 🧪 Agentic QE | [![npm](https://img.shields.io/badge/npm-agentic--qe-CB3837?logo=npm)](https://npmjs.com/package/agentic-qe) |
| 🎨 HeroUI | [![Sitio Web](https://img.shields.io/badge/Sitio_Web-heroui.com-000000?logo=vercel)](https://heroui.com) |
| 🔒 Security Analyzer | [![GitHub](https://img.shields.io/badge/GitHub-Cornjebus/security--analyzer-181717?logo=github)](https://github.com/Cornjebus/security-analyzer) |
| 📋 Spec-Kit | [![GitHub](https://img.shields.io/badge/GitHub-github/spec--kit-181717?logo=github)](https://github.com/github/spec-kit) |

---

## 📊 Historial de Versiones

| Versión | Fecha | Cambios |
|:--------|:------|:--------|
| **v3.4.0** | Feb 2025 | **Completo + Plugins**: 36 skills, 15 plugins, 5 personalizadas, 70+ aliases |
| v3.3.0 | Feb 2025 | Instalación completa: 41 skills, sistema de memoria, registro MCP, 50+ aliases |
| v3.2.0 | Feb 2025 | Añadidas 6 skills nativas, init de memoria, registro MCP |
| v3.1.0 | Feb 2025 | Añadido worktree-manager, vercel-deploy, statusline pro |
| v3.0.0 | Feb 2025 | Versión inicial con Claude Flow V3 |

---

<div align="center">

**Construido con 💜 para el ecosistema de Claude**

![Versión](https://img.shields.io/badge/v3.4.0-2025--02-blue?style=flat-square)

*Todas las 41 skills. Todos los 15 plugins. Todas las 175+ herramientas MCP. Todos los 70+ aliases. Un solo comando.*

</div>
