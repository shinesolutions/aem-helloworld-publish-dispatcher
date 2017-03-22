# AEM Hello World Publish Dispatcher Config

## Content

This project includes the Apache Server configuration template, as well as the dispatcher and Virtual Host configuration template.

Go to [AEM's dispatcher config page](https://docs.adobe.com/docs/en/dispatcher/disp-config.html) to learn more about it.

## Build

To build the aem-publish-dispatcher-config package, just run: 

```
make package
```

This will create a stage folder which will contain a zip file with the following structure:

```
aem-publish-dispatcher-config-{version number}
│   README.md
│   LICENCE    
│   Makefile
│
└───apache-conf-templates
│       httpd.conf.epp
│   
└───dispatcher-conf-templates
│       dispatcher.conf.epp
│       dispatcher.farms.any.epp
│
└───virtual-hosts-templates
    │   1-site.conf.epp
    │
    └───site
            rewritemap.txt.epp      
```

This package needs to be deployed on publish-dispatcher instance.