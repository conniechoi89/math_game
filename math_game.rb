require './player'
require './question'


class MathGame

  def self.main
    game = MathGame.new
    game.start
  end

  def initialize
    @players = [
      Player.new('Player 1'),
      Player.new('Player 2')
    ]
    @current_player = 0

  end

  def current_player
    @players[@current_player]
  end

  def swap_players
    @current_player = (@current_player + 1) % @players.length
  end

  def start
    while(@players[0].alive? && @players[1].alive?) do
      question = Question.new
      puts "#{current_player.name}, #{question.question}"
      response = gets.chomp.to_i

      if (response == question.ans)
        puts "correct!"
      else
        current_player.lives -= 1
        puts "No! #{current_player.name} loses with a score of #{current_player.lives}"
      end

       @current_player = (@current_player + 1) % @players.length


    end
  end
end

MathGame.main


