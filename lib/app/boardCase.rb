class BoardCase

  def initialize
    @case = 8
  end

  def status
    return @case
  end

  def name
    return @name
  end

  def subtract_case(nbre)
    if nbre > @case
      return false
    else
      @case -= nbre
      return true
    end
  end
  def add(nbre)
    @case += nbre
  end
end
