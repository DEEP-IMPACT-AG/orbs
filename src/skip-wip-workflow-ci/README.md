# DEEP-IMPACT-AG/skip-wip-workflow-ci
---
Used to skip the CI workflows when the PR:
  - is a draft
  - is labeled as draft
  - contains one of the following in its title
    - "[wip]"
    - "[draft]"
    - "[ci skip]"
    - "[skip ci]"

Inspiration taken from
  - github.com/artsy/orbs
  - github.com/vitalinfo/circleci-cancel-draft

## Usage

```
# In your project's .circleci/config.yml

# Using the volatile label is _not_ recommended.
# Use the version in the comment at the top of node.yml instead.

orbs:
  skip-wip-ci: artsy/skip-wip-ci@volatile

workflows:
  default:
    jobs:
      - skip-wip-ci/check-skippable-ci
      - test:
          <<: *not_staging_release
```
skip-wip-workflow-ci will run in parallel to test and cancel the test job if criteria is met
