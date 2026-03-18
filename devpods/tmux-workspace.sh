#!/usr/bin/env bash
# =============================================================================
# TurboFlow 4.0 TMux Workspace
# =============================================================================

readonly DEVPOD_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

: "${WORKSPACE_FOLDER:=/workspaces/turbo-flow}"
: "${DEVPOD_WORKSPACE_FOLDER:=$WORKSPACE_FOLDER}"
: "${AGENTS_DIR:=$WORKSPACE_FOLDER/agents}"

echo "=== Starting TMux Workspace ==="
echo "WORKSPACE_FOLDER: $WORKSPACE_FOLDER"
echo "DEVPOD_WORKSPACE_FOLDER: $DEVPOD_WORKSPACE_FOLDER"
echo "AGENTS_DIR: $AGENTS_DIR"
echo "DEVPOD_DIR: $DEVPOD_DIR"

# Install tmux if not available (safety net for container restarts)
if ! command -v tmux >/dev/null 2>&1; then
    echo "📦 Installing tmux..."
    sudo apt-get update -qq 2>/dev/null
    sudo apt-get install -y tmux htop -qq 2>/dev/null
fi

if ! command -v tmux >/dev/null 2>&1; then
    echo "❌ tmux not available — opening plain bash"
    exec bash
fi

cd "$WORKSPACE_FOLDER" 2>/dev/null || true

# Kill existing session
tmux kill-session -t workspace 2>/dev/null || true

# Create session
tmux new-session -d -s workspace -n "Claude-1" -c "$WORKSPACE_FOLDER"
tmux set-option -g history-limit 50000
tmux set-option -g mouse on
tmux set-window-option -g mode-keys vi

tmux new-window -t workspace:1 -n "Claude-2"   -c "$WORKSPACE_FOLDER"
tmux new-window -t workspace:2 -n "Claude-Monitor" -c "$WORKSPACE_FOLDER"
tmux new-window -t workspace:3 -n "htop"       -c "$WORKSPACE_FOLDER"

# htop window
command -v htop >/dev/null 2>&1 \
    && tmux send-keys -t workspace:3 "htop" C-m \
    || tmux send-keys -t workspace:3 "echo 'htop not installed'" C-m

# Monitor window
if command -v claude-monitor >/dev/null 2>&1; then
    tmux send-keys -t workspace:2 "claude-monitor" C-m
elif command -v claude-usage-cli >/dev/null 2>&1; then
    tmux send-keys -t workspace:2 "claude-usage-cli" C-m
else
    tmux send-keys -t workspace:2 "echo 'Claude monitor tools not installed'" C-m
    tmux send-keys -t workspace:2 "echo 'Run: pip install claude-monitor'" C-m
fi

# Claude windows
tmux send-keys -t workspace:0 "echo '=== Claude Window 1 Ready ==='" C-m
tmux send-keys -t workspace:0 "echo 'Workspace: $WORKSPACE_FOLDER'" C-m
tmux send-keys -t workspace:0 "echo 'Agents: $AGENTS_DIR'" C-m
tmux send-keys -t workspace:0 "echo 'DevPod Dir: $DEVPOD_DIR'" C-m
tmux send-keys -t workspace:1 "echo '=== Claude Window 2 Ready ==='" C-m
tmux send-keys -t workspace:1 "echo 'Workspace: $WORKSPACE_FOLDER'" C-m
tmux send-keys -t workspace:1 "echo 'DevPod Dir: $DEVPOD_DIR'" C-m

tmux select-window -t workspace:0

echo "✅ TMux workspace 'workspace' created successfully!"
echo "📝 Attaching to tmux session..."
tmux attach-session -t workspace
