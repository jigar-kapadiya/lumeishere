#!/usr/bin/env bash
set -e

# Colored output
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RESET="\033[0m"

echo -e "${YELLOW}🚀 Starting Frontend and Backend...${RESET}"

# Start backend (Express) on port 3000
echo -e "${GREEN}▶ Backend running"
(cd services/backend && npm run dev) &

# Start frontend (NextJS) on port 5173
echo -e "${GREEN}▶ Frontend running"
(cd services/frontend && npm run dev) &

# Capture process IDs
BACK_PID=$!
FRONT_PID=$!

# Handle exit (Ctrl+C)
trap "echo -e '\n${YELLOW}🛑 Stopping servers...${RESET}'; kill $BACK_PID $FRONT_PID 2>/dev/null" EXIT

# Keep both processes running
wait
