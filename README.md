# Goland pre-commit Hooks

I mostly add hooks that I need in my own projects which seems missing. If a
repository already have a hook, please use that instead.

```yaml
- repo: https://github.com/seinshah/pre-commit-golang
  rev: v0.1.0
  hooks:
  # Running govulncheck on the repository
  - id: go-vulncheck
  # Running Uber's nilaway on the repository
  - id: go-nil-pointer-check
```
