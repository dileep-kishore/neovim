run:
    nix run .#

show:
    nix flake show

commit_lock:
    git add flake.lock
    git commit -m "chore: update flake"

update:
    nix flake update

update_commit: update commit_lock

check:
    nix flake check
