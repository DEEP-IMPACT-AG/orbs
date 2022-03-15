# DEEP-IMPACT-AG/utils
---

A list of lesser - but nonetheless useful commands to use inside the ready-made images to
add functionality during the CI runtime.

### Yum-install
Usage:

```
# In your project's .circleci/config.yml

# Using the volatile label is _not_ recommended.
# Use the version in the comment at the top of node.yml instead.

orbs:
  utils: deep-impact-ag/utils@volatile

executors:
  aws-cli-latest:
    docker:
      - image: amazon/aws-cli:latest

jobs:
  build:
    executor: aws-cli-latest
    steps:
      - utils/yum-install:
          packages: tar gzip
      - restore_repo
      ...
```
The above example ensures that the `restore_repo` predefined circleci job actually works -
`amazon/aws-cli` docker image does not have tar installed, which is a hard requirement for that.

