class Player
  attr_accessor :name, :scorecard, :code, :guess, :guesses, :turn_result, :turn_results 

  def initialize
    @name
    @scorecard = 0
    @code = []
    @choices = ['r', 'b', 'g', 'p', 'y', 'o']
    @guesses = []
    @guess 
    @turn_result
    @turn_results = []
  end

  def name
    @name
  end

  def guess  
    @guess 
  end

  def guesses
    @guesses
  end

  def update_guesses new_guess
    @guesses.push(new_guess)
  end

  def choices
    @choices
  end

  def scorecard
    @scorecard
  end

  def update_score score 
    @scorecard += score
  end

  def generate
    @name = 'comp'
    4.times do 
      @code.push(@choices.sample)
    end
  end

  def turn_result
    @turn_result
  end

  def update_turn_results result
    @turn_results.push(result)
  end

end