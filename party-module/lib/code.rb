module PartyGoer
  #YOUR CODE GOES HERE
  attr_reader :drink_count

  def initialize
    @drink_count = 0
  end

  def drink
    if @drink_count < 3
      @drink_count += 1
     true
    else
     false
   end
  end

  def sing
    "Woah, Black Betty! Bam-a-lam!"
  end

  class PersonalizedHavocError < StandardError
  end

  def cause_havoc
    raise PersonalizedHavocError, "timE tO CauSe sOMe HavOC!!"
  end

  def invited?
    true
  end

end
