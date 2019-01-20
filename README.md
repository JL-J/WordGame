# Word Game
This program is a simple word guessing game played in irb.

## Getting started
- Clone this repository: `git@github.com:JL-J/WordGame.git`
- Change into the directory `cd WordGame`
- Run `bundle install`
- To run the tests type `rspec` into the command line
- To start the game, require it in irb `require './lib/interface'`

## How to play
```
2.6.0 :001 > require './lib/interface'
 => true
2.6.0 :002 > interface = Interface.new
 => #<Interface:0x00007fa7de88b2a0 @game=#<Game:0x00007fa7de88b278 @word="four">>
2.6.0 :003 > interface.play_game
Please enter a four letter word
  cats
  ____
  dogs
  _o__
  font
  fo__
```

## Technologies
- Ruby
- Rspec

## My approach
The Game class was developed through TDD, following the red-green-refactor loop. I wrote user stories to help guide the development of this program.

## Extension
Currently the word the user is guessing is hard coded. My intention is to change this so that a new word is picked at random from a list of four letter words.  

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
