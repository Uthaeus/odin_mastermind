class Player
  attr_accessor :name, :scorecard

  def initialize
    @name
    @scorecard
    @code = []
    @choices = ['Red', 'Blue', 'Green', 'Purple', 'Yellow', 'Orange']
  end

  def name
    @name
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

end