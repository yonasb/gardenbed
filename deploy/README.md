- Execute the contents of `scripts/upgrade_debian_based_puppet.sh` to install the latest version of puppet.
- rsync this directory with your server with `rsync -r . deployer@<<SERVER IP>>:/tmp/puppet`
- Execute the contents of `deploy/puppet_apply_with_args.sh` 