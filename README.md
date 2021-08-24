# This fork provides a means to perform a disconnected install on a [RHEL7.9](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/7.9_release_notes/index) target.
All roles have  been updated for a disconnected install. The [roles](roles), for the most part completes without erros on an offline RHEL7 server (ie a host that cannot connect to the internet or has no RPM repositories to retrieve packages). 
Some roles that have triggered tasks may fail on the triggers (i.e roles having [wait_for](roles/trouter/tasks/main.yml#L106) tasks). Triggers are on the *To-Do list* by running the [ACS](playbook/acs.yml) playbook.

Remember to change the [host/IP of the target](https://github.com/alf-wchong/alfresco-ansible-deployment/blob/a98e00be3e9a6c44b429f6f0280aeb6fec7d117e/playbooks/ats.yml#L11) in the playbook.

TRouter role has been updated but needs to be tied into Transformer AIO service to be tested, which itself needs ActiveMQ running first.


# Alfresco Ansible Deployment

This project provides an [Ansible](https://www.ansible.com) playbook capable of deploying Alfresco Content Services (ACS) Enterprise 7.x or 6.2.N.

Ansible is an open-source software provisioning, configuration management and application-deployment tool enabling infrastructure as code.

A user runs a playbook that deploys to any number of hosts as shown in the diagram below.

![Ansible Overview](./docs/resources/ansible-overview.png)

## Prerequisites

* Nexus credentials for [https://artifacts.alfresco.com](https://artifacts.alfresco.com)

## Documentation

Please refer to the [Documentation](./docs/README.md) for an overview of the project and the playbook or go directly to the [deployment guide](./docs/deployment-guide.md) to learn how to run the playbook.

## License

The code in this repository is released under the Apache License, see the [LICENSE](./LICENSE) file for details.

## Contribution

Please use [this guide](CONTRIBUTING.md) to make a contribution to the project and information to report any issues.
