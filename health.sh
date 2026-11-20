set -euo pipefail
# Enables strict error handling:
# -e: Exit immediately if a command fails.
# -u: Treat unset variables as errors.
# -o pipefail: Make a pipeline fail if any command in it fails.

echo "Campus-notes DevOps Lab"
# Prints the title of the DevOps lab to the terminal.

echo "Current user: $(whoami)"
# whoami displays the username of the currently logged-in user.
# $(...) executes a command and inserts its output into the text.

echo "Current directory: $(pwd)"
# pwd (Print Working Directory) displays the current directory path.

echo "Date: $(date)"
# date displays the current system date and time.

echo "Disk usage:"
# Prints a heading before displaying disk usage information.

df -h
# df displays available and used disk space on mounted filesystems.
# -h means human-readable format (KB, MB, GB, etc.).
