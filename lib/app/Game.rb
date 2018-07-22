# coding: utf-8

require "./lib/app/Player"
require "./lib/app/board"
class Game

  def initialize
    pp "Entrer le nom du premier joueur"
    name1 = gets.chomp
    pp "Entrer le nom du deuxième joueur"
    name2 = gets.chomp
    pp "Joueur 1 choisisez votre camp"
    pp "1: haut"
    pp "2: bas"
    @player1 = Player.new(name1,["A1","B1","C1"])
    @player2 = Player.new(name2,["A2","B2","C2"])
    @board_case = Board.new
  end

  def test(player)
    puts "C'est à " + player.name
    puts "" + player.name + "Entre ton choix"
    choice = gets.chomp.to_s
    if choice.eql? "A1" or choice.eql? "B1" or choice.eql? "C1" or choice.eql? "A2" or choice.eql? "B2" or choice.eql? "C2"
      puts "Combien de graines tu veux prendre ?"
      choice_graines = gets.chomp.to_i
      if @board_case.subtract_case(choice_graines, choice) == true
        @board_case.distribute(choice, choice_graines, player)
        return player.name
      else
        puts choice + " introuvable"
      end
    end
  end

  def play
    while true
      @board_case.print_board
      player_back = @player1.name
      if player_back.eql? @player1.name
        player_back = test(@player2)
      end
      if player_back.eql? @player2.name
        player_back = test(@player1)
      end
    end
  end
end
