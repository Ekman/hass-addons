# Lagertha

Backup solution for Home Assistant.

## Configuration

By default, the minimum configuration has been set for you automatically in the configuration tab. However, here are the full configuration:

```yaml
nBackups: 5
cronPattern: '* * * * *'
storages:
  - platform: dropbox
    secret: j9GOCFtwsY8AAAAAAAEXhKH78ztWKcoeAgi9AyBfSDbK7c5BD3aHA0JrqE6RtAJe
    basePath: /my/path
```
