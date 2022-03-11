# list all options when just is called with no arguments
default:
  @just --list

list-orbs:
  @ls -1 "${PROJECT_DIR}/src"

publish-orb orb:
  @publish_orb.sh {{orb}}

publish-orbs:
  @publish_orbs.sh

validate-orb orb:
  @validate_orb.sh {{orb}} 2>&1 | head -n 20

validate-orbs:
  @validate_orbs.sh

