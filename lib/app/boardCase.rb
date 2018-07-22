class BoardCase

  def initialize
    @case = 8
  end

  def status
    return @case
  end

  def edit_case(nbre)
    if nbre > @case
      return false
    else
      @case -= nbre
      return true
    end
  end
end
