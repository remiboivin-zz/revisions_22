require "boardCase"

class board

  def initialize
    top_left = boardCase.new
    top_center = boardCase.new
    top_right = boardCase.new
    bottom_left = boardCase.new
    bottom_center = boardCase.new
    bottom_right = boardCase.new

    @board_game = [top_left,
                   top_center,
                   top_right,
                   bottom_left,
                   bottom_center,
                   bottom_right]
  end

end
