---
layout: layout-writings
title: Securing your infrastructure with Salt
excerpt:
datum: 31 augustus 2013
heading: "Securing your infrastructure with Salt"
writing: "Infra as a Repo"
project: DevOps
color: oceaan
---

Provisioning servers on DigitalOcean like a king is one thing, but let’s be honest: default installations don’t provide a lot of security. So I’ve spent some time to manage the security on my provisioned boxes. This post (and probably the next as well) will show you how I used SaltStack to secure my infrastructure.
The goal

    Given the master/minion set-up from the previous posts, I want to have a running firewall which:

        enables SSH access
        enables minion/master communication
        enables HTTP(S) access

###Quick Fix

The first step was an easy one. In my previous post I introduced a Makefile to create a public-key infrastructure; subsequently, the keys were securely distributed using the salty-vagrant plugin.

Unfortunately, I forgot that the directory in which your Vagrantfile resides is automatically shared over all machines. Which means that in practice, I started out with carefully distributing my secret private keys, only to upload them to all my hosts in the next step.

Luckily, this was easily fixed by the following line in my Vagrantfile:

```
config.vm.synced_folder 'shared/', '/vagrant/'

```

Phew.