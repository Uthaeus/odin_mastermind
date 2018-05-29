require_relative "board.rb"
require_relative "player.rb"


class Game

  def initialize
    @p1 = Player.new
    @comp = Player.new
    @b = Board.new
  end

  def play
    @plays = 0
    @comp.generate

    intro

    game_ready

    loop do 

      take_turn

      eval_turn

      if win?
        puts "You Win!"
        @p1.update_score(1)
        break
      end

      review

      @plays += 1

      if expire?
        puts "Computer Wins!"
        @comp.update_score(1)
        break
      end
    end
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
    puts "Hello, #{@p1.name}"
    puts "Computer has made it's code"
    sleep 0.25
    puts "Enter your guess in an  xxxx  pattern"
    sleep 0.25
    puts "Available options are Red, Blue, Green, Purple, Yellow, Orange"
    sleep 0.25
    puts "You can shorten using just the first letters"
    sleep 0.25
    puts "and no need to capitalize"
    sleep 0.25
    puts "For example: rgby works"
    puts
    sleep 0.25
  end

  def take_turn
    puts "Enter your guess: (r, g, b, p, y, o)"
    guess = gets.chomp.split('')
    @p1.guess = guess
    @p1.update_guesses(guess)

  end

  def eval_turn
    x = 0
    blacks = 0
    whites = 0
    @turn_result = ''
    while x < @p1.guess.length do 
      if @p1.guess[x] == @comp.code[x]
        blacks += 1
      end
      if @comp.code.include?(@p1.guess[x])
        whites += 1
      end
      x += 1
    end
    if whites == 0 && blacks == 0
      @turn_result = "No matches"
    else
      black_tally = "$" * blacks
      white_tally = "*" * (whites - blacks)
      @turn_result = black_tally + white_tally
    end
    @p1.update_turn_results(@turn_result)
    puts @turn_result
  end

  def win? 
    @p1.guess == @comp.code
  end

  def expire?
    @plays == 12
  end

  def review
    x = 0
    while x <= @plays do 
      puts "----------------"
      puts "Play #{x + 1}:"
      puts @p1.guesses[x]
      puts
      puts @p1.turn_results[x]
      puts "----------------"
      puts
      x += 1
    end
  end
end


a = Game.new

a.play 















