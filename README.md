# Welcome to my Roulette App

This is a simple Terminal app developed in Ruby, that allows the user to play a Roulette styled game. It is intended for users who want to practise their skills before heading into a Casino to play with real money. Or simply acts as a game to play for entertainment to cure boredom.

## You can visit the Repository here:

## [Roulette App - Repository](https://github.com/Krishtronomy/roulette-app)

- [Installation](#installation)
- [Software Development Plan](#software-development-plan)
- [System Requirements](#system-requirements)
  


*  The app allows a user to start off game with a credit of their choice
*   Ask user to input any number from 0-36
* If user guesses the number correctly, multiply their staked credit by 36
* If they guess incorrectly, decrease credit by 5
* The game will cycle through once and finish if user runs out of credit or if the user exits
* User can exit and withdraw credit any time


## [Software Development Plan](#software-development-plan)
### Purpose and Scope:
The Roulette Application is a text based game written in Ruby and run on the Terminal interface. The game will allow a user to guess a number between 0 and 36, they can attempt to guess the exact number by selecting `spin` or select a number between the ranges of `0-12`, `13-24` or `25-36` by selecting the `range` option.

The game is designed as a means of entertainment and to cure boredom. Although the bigger issue it is trying to solve is gambling addiction and knowing when to stop. Once the  user starts the game, it can be extremely addictive to keep wanting to guess the correct number. After multiple attempts, the likeliness of the user ending up with more credit than they began with is highly unlikely. This is to raise awareness that although it is extremely addictive and fun, it can be very easy to lose in a very short amount of time. This will then hopefully help the user internally translate this message into the real word to help with any urges or addictions they have, to help them to stop. 

For the above reasons, my main target audience is aimed at people who have addictions around gambling, but it is also just a fun little game that can be used by anyone to cure boredom.

Upon designing the application, I have attempted to make the game as user and beginner friendly as possible; realising the fact that my target audience may not be tech savvy. In my Github repository, I have tried to lay out the instructions as clearly as possible so as to help the user understand and operate the game with ease.

## [Installation](#installation)
1. You will first need to `cd` into the `src` directory to be able to run the below installation shell script file.
2. You may need to give the appropriate permissions to the `install_dependencies` file so it can be run on your system. To do this, you can run the following in your Terminal:

`chmod +x ./install_dependencies.sh`

3. Once you have given permission and are in the `src` directory, you can run the below script to install the required dependencies:

`./install_dependencies.sh`

    
## Executable file

You will firstly need to `cd` into the `src` directory. 
You can run the app using the `ruby main.rb` command, or alternatively you can use `run_app.sh` bash shell script file:

1. You may need to give the appropriate permissions to the run_app.sh file so it can be run on your system. To do this, you can run the following in your Terminal:

`chmod +x ./src/run_app.sh`

2. Run the below command in your Terminal window to execute the program:

`./run_app.sh`

##  [System Requirements](#system-requirements)
### Minimum Requirements:


* 64-bit Operating System
* 1.2GHz Processor or faster
* 2GB RAM
* 1GB of Disk Space


### Supported Operating Systems
* MacOS
* Windows
* Linux



 
