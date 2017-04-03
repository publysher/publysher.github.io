---
layout: layout-writings
title: Stencyl tower defense tutorial 9
excerpt:
datum: 11 juni 2012
heading: "Stencil tutorial 9: Staying alive"
writing: "Stencil tower defense"
project: Game development
color: limoen
---

Our Tower Defense game is slowly turning into a real game, but there is still a lot of work to do. For example, most games are about winning, and therefore about losing. In this part of the tutorial I’m going to work on losing the game. For now, winning will remain a promise :)

_The result of this part can be seen here; you can also find it on StencylForge under the name “Publysher – TD Tutorial #9”._

##Number of Lives

In order to be able to lose, I will keep track of the number of lives. Every time an enemy reaches the finish line, the player loses one live. When the player has no more lives remaining, he has lost the game. Of course, the current number of lives has to be visible so the player knows how he’s doing.

Until now, we have only created Actor Behaviors. However, the number of lives of the player is not related to a specific actor but to the current level. So, this time I will create our first custom Scene Behavior.

Tip: there are no rules for choosing between Actor behaviors and Scene behaviors – use your gut feeling, and don’t be afraid to change it later on. You will get better at it over time.

But first some preparations. I started out by copying the Score Font to a new font called Lives Font and changed the colors to white and red. I also created an actor called “Number of Lives”, used this heart from iconfinder.com as its default animation and made it a member of the group “Visual Effects”.

Now it is time to create a new Design Mode Scene Behavior called “Number of Lives Manager”. It will work like this:

    When the behavior is created, it will draw the Heart icon on the upper left screen;
    When the scene is redrawn, the behavior will draw the remaining number of lives next to the Heart;
    The behavior will have a custom block “decrease number of lives by [amount]” – this will decrease the remaining number of lives. However, it will also make sure the remaining number of lives is never smaller than zero. When the remaining number of lives reaches 0, it will trigger an event called “no_more_lives”. This event will be triggered exactly once.

So, we will need a few attributes:

    a Number attribute “Number of Lives” – this will be used to configure the number of lives
    a hidden Number attribute “Current Number of Lives” – this will be used to keep track of the number of lives remaining
    a hidden Actor attribute “Number of Lives Actor” – this will be used to keep track of the Heart icon
    a hidden Boolean attribute “No More Lives Triggered?” – this will be used to ensure we will trigger the “no_more_lives” event exactly once.
