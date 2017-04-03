---
layout: layout-writings
title: Improving appengine performance from JPA to Objectify
excerpt:
datum: 11 juni 2012
heading: "Improving AppEngine performance: from JPA to Objectify"
writing: "Migrating AppEngine"
project: Java development
color: groen
---

This weekend, I have migrated my Google AppEngine application Zoo Wizard from JPA to Objectify. This post gives a short overview of my rationale and the steps I’ve taken to complete this migration.

Spoiler: moving to Objectify is a good move, and apart from some differences between @Embeddable in JPA and Objectify, the transition went smoothly.
Rationale

**When I first created the application, I opted to use the GAE JPA API to stay in my comfort zone. Using too many new technologies in an application is a recipe for disaster, and for a seasoned JEE-developer GAE is challenging enough as it is.**

As it turns out, using JPA to access the Google DataStore is not fun. JPA was developed as an abstraction over relational databases, and the DataStore is anything but relational. As a result, many JPA features just won’t work on AppEngine. Furthermore, some DataStore features that actually make the store performant are not available through JPA.

##I was not happy

Another problem with JPA is that it does a lot of processing on start-up to improve performance down the road. This works great for enterprise applications, but not for Google AppEngine where instances are brought up and down almost constantly.


