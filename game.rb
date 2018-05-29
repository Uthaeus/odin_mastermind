require_relative "board.rb"
require_relative "player.rb"


class Game

  def initialize
    @p1 = Player.new
    @comp = Player.new
    @b = Board.new
  end

  def play
    plays = 0
    @comp.generate

    game_ready


  end

  def intro
    puts "**Welcome to MasterMind**"
    sleep 1
    puts
    puts "Player 1 Enter a name:"
    @p1.name = gets.chomp
    puts
  end

  def game_ready
    puts "Computer has made it's code"
    sleep 0.25
    puts "Enter your guess in an  x, x, x, x  pattern"
    sleep 0.25
    puts "Available options are Red, Blue, Green, Purple, Yellow, Orange"
    sleep 0.25
    puts "You can shorten using just the first letters"
    sleep 0.25
    puts "and no need to capitalize"
    sleep 0.25
    puts "For example: r, g, b, y works"
    puts
    sleep 0.25
  end

  def review
    x = 0
    puts "Play #{x + 1}:"

  end
end