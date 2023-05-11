# Vagrant README

## Introduction

The intent of the Vagrant module is to provide developers with a simple and consistent way to create and manage virtual environments for their projects. The module includes tools and resources for setting up and configuring virtual machines, as well as managing dependencies and software packages. However, it does not include any specific configurations or settings for individual projects, as these will vary depending on the needs of each project.

One possible use case for the Vagrant module is to *create multiple virtual machines* for *testing* and *development* purposes. For example, a developer might use Vagrant to create three virtual machines with different operating systems and software configurations, in order to test their application in a variety of environments.

Another possible use case is to integrate the Vagrant environment with an Ansible system. Ansible is a popular automation tool that can be used to manage and configure software environments, and it can be used in conjunction with Vagrant to automate the process of setting up and configuring virtual machines. By integrating Vagrant with Ansible, developers can create a powerful and flexible development environment that can be easily replicated and managed across multiple machines.

## Prerequisites

Make sure you have [Vagrant](https://developer.hashicorp.com/vagrant/downloads) and a virtualization program installed.
- [Virtualbox](https://www.virtualbox.org/)
- [VMware Fusion](https://customerconnect.vmware.com/downloads/get-download?downloadGroup=FUS-PUBTP-2021H1)
- [Hyper-V](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)

## Up command

When you have installed all the requirements in the prerequisites step, you can simply run `vagrant up` in the same directory as your Vagrantfile to setup VMs.

## Destroy command

In order to delete VMs there are two scenarios:

1. Vagrantfile **unchanged**:
   simply run `vagrant destroy`  in the same directory as the Vagrantfile.
2. Vagrantfile **changed**:
   it is suggested to **first destroy** the VMs and then change the Vagrantfile. In this case you have two options:
    - Deleting the VMs manually from the virtualization software (VirtualBox, VMware, etc.)
    - Executing `vagrant global-status --prune` (Not recommended, since it will delete the other VMs.)
