[![Build Status](https://travis-ci.org/MaryDomashneva/battle-challenge.svg?branch=master)](https://travis-ci.org/MaryDomashneva/battle-challenge)

Battle Challenge
==================

[Check project online](https://secret-beyond-83744.herokuapp.com/)

Task:
----

This project is an introduction to games.
The goal is to write a Battle game for two players.

User stoty:
-----

```
As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage

As a lonely Player,
So I can keep my Battle skills up to scratch
I want to play a Computerised opponent

As a Player,
So I can enjoy a game of Battle with more variety,
I want to choose from a range of attacks I could make

As a Player,
So I can better enjoy a game of Battle,
I want some of my attacks to Paralyse an opponent (chance of losing their next attack)

As a Player,
So I can better enjoy a game of Battle,
I want one of my attacks to have a chance of Poisoning my Opponent (Opponent takes a small random amount of damage at the beginning of their turn)

As a Player,
So I can better enjoy a game of Battle,
I want to make an attack that has a chance of sending my Opponent to Sleep (Opponent definitely misses next turn)

As a Player,
So I can extend my joyous experience of Battle,
I want to have an attack that heals some of my Hit Points

As a Player,
So I can enjoy my game of Battle,
I want a sexy user interface
```

Technologies used:
-----

1. ruby 2.5.0
2. sinatra
4. capybara

Run project:
-----

* Clone the progect and type ```bundle install``` in terminal
* Local on your machine: Clone this project, use [http-server]
* Onlinel: use this [link](https://secret-beyond-83744.herokuapp.com/)
* To run tests, type ```rspec```

Result:
-----

The app has 2 classes:
* game - contains information about players and handle the logic of the game.
* player - contains information about user name, hit points and default step.
