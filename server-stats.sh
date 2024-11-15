#!/bin/bash

# Function to display total CPU usage
get_cpu_usage() {
  echo "---- CPU Usage ----"
  mpstat | awk '/all/ {printf "Total CPU Usage: %.2f%%\n", 100 - $NF}'
  echo ""
}

# Function to display total memory usage
get_memory_usage() {
  echo "---- Memory Usage ----"
  free -m | awk 'NR==2 {
    total=$2; used=$3; free=$4;
    printf "Total Memory: %dMB\nUsed Memory: %dMB (%.2f%%)\nFree Memory: %dMB (%.2f%%)\n",
    total, used, (used/total)*100, free, (free/total)*100
  }'
  echo ""
}

# Function to display total disk usage
get_disk_usage() {
  echo "---- Disk Usage ----"
  df -h --total | awk '/total/ {
    printf "Total Disk: %s\nUsed Disk: %s (%.2f%%)\nFree Disk: %s (%.2f%%)\n",
    $2, $3, ($3/$2)*100, $4, ($4/$2)*100
  }'
  echo ""
}

# Function to display top 5 processes by CPU usage
get_top_cpu_processes() {
  echo "---- Top 5 Processes by CPU Usage ----"
  ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
  echo ""
}

# Function to display top 5 processes by memory usage
get_top_memory_processes() {
  echo "---- Top 5 Processes by Memory Usage ----"
  ps -eo pid,comm,%mem --sort=-%mem | head -n 6
  echo ""
}

# Main execution
echo "================= Server Performance Stats ================="
get_cpu_usage
get_memory_usage
get_disk_usage
get_top_cpu_processes
get_top_memory_processes
echo "============================================================"
