# What is this?
This project is an excuse to mess around with Ruby's *[gosu](https://github.com/gosu/gosu)* library, for 2D games/realtime interactive simulations. Ruby, an interpreted language, shouldn't have real-time abilities, and yet, here we are with a Ruby wrapper around OpenGL! 

## Katamari Damashī?
Katamari Damacy has long been one of my favorite games. It's just so quirky, with luscious visuals, an incredible soundtrack, and more personality than 10 ordinary games.

The gameplay of the Katmari series is to roll a sticky ball (the katamari) around various environments. Things smaller than your ball stick to it. You bounce off objects larger than your ball. As your ball increases in diameter, you can roll up ever-larger items. The most interesting levels start you off rolling up thumbtacks and paperclips and finish with you rolling up the entire apartment block you started off in!

## How to install and run
0. Install a copy of Linux on your computer. It's fine. You don't need "[MacOS](https://github.com/gosu/gosu/wiki/Getting-Started-on-OS-X)" or [Windows](https://github.com/gosu/gosu/wiki/Getting-Started-on-Windows). You'll need [a few system packages installed](https://github.com/gosu/gosu/wiki/Getting-Started-on-Linux)
1. `git clone https://github.com/Eiriksmal/rubymari-damacy`
2. `cd rubymari-damacy`
3. `bundler install`
4. `cd lib/`
5. `ruby game.rb`
6. TODO: Learn how Ruby's funky load path works and write a packager for this. Running `ruby ./lib/game.rb` from the project root fails to load assets, for instance. 😒

## Art licenses
- Grass texture by [Cethiel](http://www.patreon.com/cethiel) under the CC0 license.
- Boy sprites by [Peony](https://opengameart.org/users/peony) under the Attribution 3.0 Unported (CC BY 3.0) license 
