# lando-cypress-wordpress

Run Node and WP-CLI inside a Lando-compatible PHP container.

This image satisfies three simple requirements:

* To be usable as a `node:custom` image for a [Lando Node service](https://docs.devwithlando.io/services/node.html)
* To be compatible with [Cypress](https://cypress.io), the end-to-end test runner
* To be able to run [WP-CLI](https://wp-cli.org) commands directly from the `node` service

To that end, lando-node-cypress is extremely minimal, replicating the Lando-
native Node service image but also including `xvfb`, which is required for
Cypress's headless browser testing.

## Usage

```
docker run -it sitecrafting/lando-cypress-wordpress:latest
```
