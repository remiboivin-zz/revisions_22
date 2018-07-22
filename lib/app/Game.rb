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

  def play
    player_back = @player1.name
    while true
      @board_case.print_board
      if player_back.eql? @player1.name
        puts "C'est à " + @player2.name
        puts "" + @player2.name + "Entre ton choix"
        choice = gets.chomp.to_s
        if choice.eql? "A1" or choice.eql? "B1" or choice.eql? "C1" or choice.eql? "A2" or choice.eql? "B2" or choice.eql? "C2"
          puts "Combien de graines tu veux prendre ?"
          choice_graines = gets.chomp.to_i
          if @board_case.update_case(choice_graines, choice) == true
            player_back = @player2.name
          else
            player_back = @player1.name
          end
      else
        puts choice + " introuvable"
      end
      end
      if player_back.eql? @player2.name
        @board_case.print_board
        puts "C'est à " + @player1.name + "\n"
        puts "" + @player1.name + ": Entre ton choix\n"
        choice = gets.chomp.to_s
        if choice.eql? "A1" or choice.eql? "B1" or choice.eql? "C1" or choice.eql? "A2" or choice.eql? "B2" or choice.eql? "C2"
          puts "Combiens de graines tu veux prende ?"
          choice_graines = gets.chomp.to_i
          if @board_case.update_case(choice_graines, choice) == true
            player_back = @player1.name
          else
            player_back = @player2.name
          end
        else
          puts "erreur"
        end
      end
    end
  end
  end
