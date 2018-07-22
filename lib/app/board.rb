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

  def update_case(nbre,pos)
    return @my_hash[pos].edit_case(nbre)
  end

  def distribute

  end
end
