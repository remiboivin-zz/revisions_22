# coding: utf-8
require "./lib/app/boardCase"

class Board

  def initialize
    @board_instances = [BoardCase.new,
                        BoardCase.new,
                        BoardCase.new,
                        BoardCase.new,
                        BoardCase.new,
                        BoardCase.new]
    @board_name = ["A1","B1","C1",
                   "A2","B2","C2"]
    @my_hash = {}
    @board_name.each_with_index do |elem, index|
      @my_hash[elem] = @board_instances[index]
    end
  end

  def print_board
    puts "                              A                                B                                 C\n"
    puts "               -----------------------------   -------------------------------    ---------------------------"
    puts "            1 |               " + @my_hash["A1"].status.to_s + "             |  |               " + @my_hash["B1"].status.to_s + "              |  |               " + @my_hash["C1"].status.to_s + "           |\n"
    puts "               -----------------------------   -------------------------------    ---------------------------"
    puts "            2 |               " + @my_hash["C2"].status.to_s + "             |  |               " + @my_hash["B2"].status.to_s + "              |   |              " + @my_hash["A2"].status.to_s + "           |\n"
    puts "               -----------------------------   -------------------------------     ---------------------------"  end

  def subtract_case(nbre,pos)
    return @my_hash[pos].subtract_case(nbre)
  end

  def convert_text_to_pos(pos)
    i = 0

    while i < pos.size
      if @board_name[i].include?(pos)
        return i
      end
      i += 1
    end
    return i
  end

  def rafle(pos)
    if @my_hash[pos].status >= 2
      subtract_case((@my_hash[pos].status - 1))
    end
  end

  def distribute(position, nbre, player)
    i = 1;
    nbr = 0
    pos = convert_text_to_pos(position)
    len = @board_name.size - 1
    while nbre > 0
      if position.eql? "A2" or @board_name[pos + i] == nil
        pos = 0;
        position = "A1"
        i = 0;
      end
      pp "Combien de cailloux voulez-vous mettre dans la case #{@board_name[pos + i]}"
      nbr = gets.chomp.to_i
      if (nbre - nbr) >= 0
        @my_hash[@board_name[pos + i]].add(nbr)
        nbre -= nbr
      else
        puts "Tu ne peux pas prendre plus que tu en as"
      end
      i +=1
    end
    unless player.camp.include?(@board_name[pos]) # check que la dernière case n'est pas dans notre camp
      puts "rafler les cailloux"
      rafle(position)
    end
  end
end
