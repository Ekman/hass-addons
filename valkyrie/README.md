# Valkyrie

Valkyrie is a backup solution for Home Assistant. Backing up your data is important, you dont want to loose countless hours spent on configuring your smart home. It should also be simple and quick. The purpose of this application is to create a solution that strikes a balance between:

* **Do it yourself (DIY)** - You will probably need to create some access credentials for the platform you want to backup to. Seeing you are a Home Assistant user already, this is a walk in the park!
* **Extensibility** - Is your favourite platform not supported? Head over to our repository and contribute (or request) a new platform. The heavy business logic is already done for you, you will just need to implement an interface.
* **Maintainability** - This addon will never be the "one solution fits all". Feature requests will be chosen with care to keep the addon easy to extend while still covering 90% of the backup use cases.

## Configuration

The minimum configuration has been set for you automatically in the configuration tab. You will only need to configure a platform in order to get up-and-running. The default configuration will look something like:

```yml
nBackups: 5
cronPattern: '@daily'
storages:
  - platform: dropbox
    id: my_id
    secret: my_secret
```

The `cronPattern` is a normal [cron job pattern](https://crontab.guru/) giving you endless possibilities on how to setup the backup schedule. 

Supported values for platform are:

* `dropbox`
* `awsS3`

Below you can read more about how to configure each specific platform.

### Dropbox (dropbox)

*Required parameters: `secret`*

In order to generate an access token, follow these steps:

1. Visit [Dropbox Developers](https://www.dropbox.com/developers/apps/create)
2. Choose the **Dropbox API**
3. Choose the **App folder** access
4. Name your app anything you want
5. Click **Generate** under **Generated access token** and copy the value to `secret`

### AWS S3 (awsS3)

*Required parameters: `id`, `secret`, `host`*

You will need to create an access key ID and secret access key, which you can [find information about here](https://aws.amazon.com/premiumsupport/knowledge-center/create-access-key/). Then, configure your platform like this:

* `id` = Access key ID
* `secret` - Secret access key
* `host` - Needs to contain both bucket and region, eg. `{bucket}@{region}`

## [Advanced] Full configuration

```yml
nBackups: 5
cronPattern: '@daily'
verbose: false
storages:
  - platform: dropbox
    id: my_id
    secret: my_secret
    host: my_host
    basePath: /my/path
```

