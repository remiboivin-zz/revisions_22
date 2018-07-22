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
    puts "            2 |               " + @my_hash["A2"].status.to_s + "             |  |               " + @my_hash["B2"].status.to_s + "              |   |              " + @my_hash["C2"].status.to_s + "           |\n"
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

  def distribute(position, nbre)
    i = 1;
    nbr = 0
    pos = convert_text_to_pos(position)
    puts pos.to_s
    while nbre > 0
      pp "Combien de cailloux voulez-vous mettre dans la case #{@board_name[pos + i]}"
      nbr = gets.chomp.to_i
      puts nbre
      if (nbre - nbr) >= 0
        @my_hash[@board_name[pos + i]].add(nbr)
        nbre -= nbr
      else
        puts "erreur"
      end
      i +=1
    end
  end
end
