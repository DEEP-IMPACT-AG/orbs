# CircleCI orbs

This repo contains the orbs we use at DEEP IMPACT AG

Before you begin - ensure you've copypasted the `circleci .envrc for-orb-releasing-purposes` entry
from our LastPass to `.envrc` - and then ran `direnv allow`.

To add a new orb - simply add a new folder under `src/` with your orb's name. Use
`skip-workflow-if-draft` as a template.

Great thanks to:
- [artsy/orbs](https://github.com/artsy/orbs)
- [vitalinfo/circleci-cancel-draft](https://github.com/vitalinfo/circleci-cancel-draft)

