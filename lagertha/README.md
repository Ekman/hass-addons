# Lagertha

Backup solution for Home Assistant.

## Configuration

By default, the minimum configuration has been set for you automatically in the configuration tab. However, here are the full configuration:

```yml
nBackups: 5
cronPattern: '@daily'
verbose: false
storages:
  - platform: dropbox
    secret: my_secret
    basePath: /my/path
```
