# structurizr-to-png

Convert structurizr dsl to png using plantuml

## Usage

### Docker

```
docker run --rm -v "${PWD}":/workspace -w /workspace cshamrick/structurizr-to-png --workspace=workspace.dsl
```

### Alias

```
alias structurizr-to-png='docker run --rm -v "${PWD}":/workspace -w /workspace cshamrick/structurizr-to-png'
```

Then:

```
structurizr-to-png --workspace=workspace.dsl
```
