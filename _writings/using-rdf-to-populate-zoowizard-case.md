---
layout: layout-writings
title: Using-RDF
excerpt:
datum: 19 augustus 2012
heading: "Using RDF to populate zoowizard case"
writing: "Finding a starting point"
description:

category: python
---

For some time, I’ve been keeping a small website called ZooWizard. It’s main purpose: to have an outlet for two of my main hobbies: visiting zoos and programming.

One of the problems with keeping this website up to date is the secondary data, i.e. data about zoos and animals. Until now, this data has been sourced using Wikipedia, personal experience and of course: lot’s of manual data entry.

This was nice for a while because it’s a great way to get started, but for some time this manual aspect has been getting on my nerves. So, I decided to explore the possibilities of Linked Data. This blog post is the first part in this case study: creating an information-rich collection of European zoos.

The code to create this collection can be found in my GitHub repository zoowizard-rdf. If you want to replicate what I’ve done, please refer to the tag v1.

All the code has been written in Python 2.7 and it uses the following libraries:

    BeautifulSoup for parsing HTML
    RDFLib for managing RDF

## Finding a starting point

One of my favorite references for obtaining information about zoos so far has been the ZooChat website which contains an exhaustive list of all the zoos around the world. It’s more complete than Wikipedia, so I’ve decided to start here.