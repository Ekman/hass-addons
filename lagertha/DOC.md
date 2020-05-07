# Documentation

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

The `cronPattern` is a normal [cron job pattern](https://crontab.guru/) giving you endless possibilities on how to setup the backup schedule. 

Supported values for platform are:

| Platform | Required
| --- | --- | --- |
| `dropbox` | `secret` |

Below you can read more about each specific platform.

## Dropbox

The Dropbox platform requires an access key to be configured as your `secret`. In order to generate one, follow these steps:

1. Visit [Dropbox Developers](https://www.dropbox.com/developers/apps/create)
2. Choose the **Dropbox API**
3. Choose the **App folder** access
4. Name your app anything you want
5. Click **Generate** under **Generated access token** and copy the value to `secret`
