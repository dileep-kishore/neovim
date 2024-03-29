default:
    @just --list --unsorted

alias r := run

# Run neovim flake
run:
    nix run .#

# Show neovim flake output
show:
    nix flake show

# Commit flake.lock
commit_lock:
    git add flake.lock
    git commit -m "chore: update flake"

# Update flake
update:
    nix flake update

# Update flake and commit flake.lock
update_commit: update commit_lock

# Check flake
check:
    nix flake check
