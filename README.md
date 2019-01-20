# Word Game
This program is a simple word guessing game played in irb.

## Getting started
- Clone this repository: `git@github.com:JL-J/WordGame.git`
- Change into the directory `cd WordGame`
- Run `bundle install`
- To run the tests type `rspec` into the command line
- To start the game, require it in irb `require './lib/wordgame'`

## How to play

## Technologies
- Ruby
- Rspec

## My approach
This program was developed through TDD, following the red-green-refactor loop. I wrote user stories to help guide the development of this program.

## User stories
```
As a player,
So that I can start the game and start guessing,
I would like to be told when to enter my guess.
```

```
As a player,
So that I do not waste a turn,
I would like to be told if I enter an incorrect guess such as a word with too many letters or if I accidentally enter an invalid character.
```

```
As a player,
When I make a guess,
I would like to be told which letters were correct and which were not.
```

```
As a player,
When I make the correct guess,
I would like to see a congratulations message.
```
