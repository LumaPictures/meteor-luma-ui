# Setup

To include this package in your application simply add the following to your `smart.json` `packages` object :

```javascript
packages: {
    "module-layout": {
        "git": "https://github.com/lumapictures/module-layout.git"
    }
}
```

And run :

```shell
$ mrt add module-layout
```

[Don't forget to symlink your static assets if you plan on using the default assets.](static/README.md)