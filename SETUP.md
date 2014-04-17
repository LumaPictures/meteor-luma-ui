# Setup

To include this package in your application simply add the following to your `smart.json` `packages` object :

```javascript
packages: {
    "luma-ui": {
        "git": "https://github.com/lumapictures/luma-ui.git"
    }
}
```

And run :

```shell
$ mrt add luma-ui
```

[Don't forget to symlink your static assets if you plan on using the default assets.](static/README.md)