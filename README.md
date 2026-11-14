# jenkins

Customized Jenkins Docker image (based on `jenkins/jenkins:lts`) with Python 3, pip, venv and pipenv preinstalled for build jobs.

Build it with:

```bash
docker build -t jenkins-custom .
```

## Releases

Releases are automated with [release-please](https://github.com/googleapis/release-please).
Write commit messages in the [Conventional Commits](https://www.conventionalcommits.org/) format:

- `fix: ...` makes a patch release
- `feat: ...` makes a minor release
- `feat!: ...` or a `BREAKING CHANGE:` footer makes a major release

After each push to `main`, release-please opens or updates a release PR.
Merging that PR updates `CHANGELOG.md`, tags the version (for example `v1.0.0`) and publishes a GitHub release.
