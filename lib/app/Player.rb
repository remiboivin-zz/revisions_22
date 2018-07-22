# coding: utf-8
class Player

  def initialize(name, camp)
    @name = name
    @status = false
    @camp = camp
  end
  def name
    return @name
  end

  def camp
    return @camp
  end
end
