# Lagertha

Lagertha is a backup solution for Home Assistant. Backing up your data should not be complex or time consuming to setup, the concept is rather simple: *I want a fresh copy of my configuration to exist in X amount of places in case something goes wrong*. The purpose of this application is to create a simple solution that strikes a balance between:

* **Do it yourself (DIY)** - You will probably need to create some access credentials for the platform you want to backup to. Seeing you are a Home Assistant user already, you are already used to this.
* **Extensibility** - Want to backup to a platform that is not supported? Head over to our repository and request (or contribute yourself) a new platform. The heavy business logic is already done for you, it is as simple as implementing an interface with a few methods.
* **Maintainability** - This addon will never be the "one solution fits all" and feature requests will be chosen with care to keep the addon easy to extend while still covering 90% of the use cases one may have regarding backup.

## Configuration

By default, the minimum configuration has been set for you automatically in the configuration tab. You will only need to configure a platform in order to get up-and-running.

However, here are the full configuration:

```yml
nBackups: 5
cronPattern: '@daily'
verbose: false
storages:
  - platform: dropbox
    id: my_id
    secret: my_secret
    basePath: /my/path
```

The `cronPattern` is a normal [cron job pattern](https://crontab.guru/) giving you endless possibilities on how to setup the backup schedule. 

Supported values for platform are:

| Platform | Required
| --- | --- | --- |
| `dropbox` | `secret` |

Below you can read more about each specific platform.

### Dropbox

The Dropbox platform requires an access key to be configured as your `secret`. In order to generate one, follow these steps:

1. Visit [Dropbox Developers](https://www.dropbox.com/developers/apps/create)
2. Choose the **Dropbox API**
3. Choose the **App folder** access
4. Name your app anything you want
5. Click **Generate** under **Generated access token** and copy the value to `secret`

