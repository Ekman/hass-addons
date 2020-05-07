# Lagertha

Lagertha is a backup solution for Home Assistant. Backing up your data should not be complex or time consuming to setup, the concept is rather simple: *I want a fresh copy of my configuration to exist in X amount of places in case something goes wrong*. The purpose of this application is to create a simple solution that strikes a balance between:

* **Do it yourself (DIY)** - You will probably need to create some access credentials for the platform you want to backup to. Seeing you are a Home Assistant user already, you are already used to this.
* **Extensibility** - Want to backup to a platform that is not supported? Head over to our repository and request (or contribute yourself) a new platform. The heavy business logic is already done for you, it is as simple as implementing an interface with a few methods.
* **Maintainability** - This addon will never be the "one solution fits all" and feature requests will be chosen with care to keep the addon easy to extend while still covering 90% of the use cases one may have regarding backup.

Head on over [to the documentation](DOC.md) to learn how to configure the addon or [to the changelog](CHANGELOG.md).
