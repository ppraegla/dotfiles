General devcontainer for Claude code to be used for general projects without much configuration,
e.g., Python or LaTeX.

- miniconda: to use as a general environment for all Python packages (pixi is rather one-environment per project. uv is only pypi)
- Use user `"remoteUser": "root"`. From docker docs: "on bind-mounted directories: in rootless mode, files owned by your host user appear as owned by root inside the container". In rootful docker it makes more sense to `"remoteUser": "vscode"` (I haven't tested this).

Build the Docker image
```
docker build --tag claude-devcontainer:latest .
```
