Different devcontainers for development.

## Usage
Copy the respective devcontainer folder into the project's `.devcontainer` folder (must exist), e.g.,
```
cp --link --recursive 4C/ /path/to/project/.devcontainer/
```

It would be nice to just softlink the folder. But when opening the devcontainer the link gets broken
because the link path does not exist in the container. So, the folder is copied recursively with
`--link` to create hard links to the files. If the files are updated, the change will be reflected
in this repo and the linked project.

When adding new files, the above command needs to be run again to copy (symlink) the new files.
