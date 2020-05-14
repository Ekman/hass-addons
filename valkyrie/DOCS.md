# Valkyrie

The minimum configuration has been set for you automatically in the configuration tab. You will only need to configure a platform in order to get up-and-running. The default configuration will look something like:

```yml
n_backups: 5
cron_pattern: '@daily'
destinations:
  - platform: dropbox
    id: my_id
    secret: my_secret
```

The `cron_pattern` is a normal [cron job pattern](https://crontab.guru/) giving you endless possibilities on how to setup the backup schedule. 

Supported values for platform are:

* `dropbox`
* `aws_s3`

## Configuration

Below you can read more about how to configure each specific platform.

### Dropbox (dropbox)

*Required parameters: `secret`*

In order to generate an access token, follow these steps:

1. Visit [Dropbox Developers](https://www.dropbox.com/developers/apps/create)
2. Choose the **Dropbox API**
3. Choose the **App folder** access
4. Name your app anything you want
5. Click **Generate** under **Generated access token** and copy the value to `secret`

The final platform should look like this:

```yml
platform: dropbox
secret: access_token
```

### AWS S3 (aws_s3)

*Required parameters: `id`, `secret`, `host`*

You will need to create an access key ID and secret access key, which you can [find information about here](https://aws.amazon.com/premiumsupport/knowledge-center/create-access-key/). Then, configure your platform like this:

```yml
platform: aws_s3
id: access_key_id
secret: secret_access_key
host: bucket@region
```

## [Advanced] Full configuration

```yml
n_backups: 5
cron_pattern: '@daily'
verbose: false
destinations:
  - platform: dropbox
    id: my_id
    secret: my_secret
    host: my_host
    base_path: /my/path
```