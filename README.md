[![Build Status](https://github.com/shinesolutions/aem-helloworld-publish-dispatcher/workflows/CI/badge.svg)](https://github.com/shinesolutions/aem-helloworld-publish-dispatcher/actions?query=workflow%3ACI)

# AEM Hello World Publish-Dispatcher

This is an example AEM Hello World artifact that will be deployed to an AEM Publish-Dispatcher instance.

This artifact contains:
* [Apache configuration template(s)](https://httpd.apache.org/docs/2.4/configuring.html) in `apache-conf-templates` directory
* [Apache Virtual Host template(s)](https://httpd.apache.org/docs/2.4/vhosts/) and [Apache RewriteMap template(s)](https://httpd.apache.org/docs/current/rewrite/rewritemap.html) in `virtual-hosts-templates` directory
* [AEM Dispatcher configuration template(s)](https://docs.adobe.com/docs/en/dispatcher/disp-config.html) in `dispatcher-conf-templates` directory
* Static files in `static-assets` directory

Template files are written in [Embedded Puppet template syntax](https://docs.puppet.com/puppet/4.10/lang_template_epp.html).

Check out [Dispatcher Template Parameters](https://github.com/shinesolutions/puppet-aem-curator/blob/master/docs/dispatcher-template-parameters.md) for a list of available parameters to be used from EPP template files.

## Usage

To create artifact zip file:

```
make package
```

The artifact will be written at `stage/aem-helloworld-publish-dispatcher-<version>.zip`

### Troubleshooting

After the deployment of AEM Hello World Publish-Dispatcher artifact and [AEM Hello World](https://github.com/shinesolutions/aem-helloworld/) package, the following URL paths should be accessible via AEM Publish-Dispatcher instance:

* `/content/helloworld` - Hello World page served from AEM Publish instance
* `/cafe-helloworld` - a rewrite rule (using relative path) configured in Publish-Dispatcher instance
* `/cafe/helloworld` - a rewrite rule (using absolute path) configured in Publish-Dispatcher instance
* `/images/earth.jpg` - a sample static asset image served from Apache docroot
