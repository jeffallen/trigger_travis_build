# Trigger a Travis CI build on another project!

## Instructions

1. Get your Travis API token and set it as an encrypted (hidden) environment variable (`TRAVIS_TOKEN`) in your project settings
2. Configure the variables `TARGET_OWNER`, `TARGET_OWNER` in your `trigger-travis-on-myreponame.sh` script

Note: make sure you use your travis-ci.com API token if you want to trigger a build in a private project, or your travis-ci.org token if you want to trigger a build on a public one.

You can get your API token through [the Travis CLI](https://github.com/travis-ci/travis.rb), or by accessing the API explorer:

* For .com: https://developer.travis-ci.com/explore/
* For .org: https://developer.travis-ci.org/explore/
