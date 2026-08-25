devcontainer configuration to develop [4C](https://github.com/4C-multiphysics/4C).
The devcontainer image is based on the 4C dependencies image used for the workflow testing.
It has all dependencies installed. Inside the devcontainer 4C only needs to be built.
The devcontainer is build from its own Dockerfile in order to install additional tools
- `clangd` for code completion
- `mold` for faster linking

For building create a `devcontainer` preset which inherits from the `docker` preset.
The build will only run inside the devcontainer.

## Features
- C++ development setup
- Claude code integration

## Notes
- The devcontainer is used for a git worktree placed next to the git repository
```
4C/       # The main git repository
feature/  # A feature branch in a git worktree
```
- The git repository is mounted as well because the git worktree needs access to the git repository
- The git worktrees need to be configured with relative paths (`git worktree repair --relative-paths ../feature/`)
- Git 2.55 is installed to have the relative worktree paths available (Ubuntu 24.04 only provides 2.34)
- Mount a volume for Claude to avoid re-logins and to have access to the history when restarting the container
