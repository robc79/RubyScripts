require_relative 'game'
require_relative 'human_player'
require_relative 'random_player'

if __FILE__ == $0
  print "Enter your name: "
  p1_name = gets.chomp
  p1 = Rps::HumanPlayer.new(p1_name)
  p2 = Rps::RandomPlayer.new("CPU")
  g = Rps::Game.new(p1, p2)
  g.play_game(10)
end