require 'pry'
class SuperHero
  attr_reader :public_identity, :secret_identity


  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

end

class Speedster < SuperHero
  def powers
    "Super quick...at easting food! Very unhealthy..."
  end

  def weakness
    "Not suprisingly, lack of food."
  end

  def backstory
    "Lot's of competitive eating competitions under their belt."
  end

  def speed_in_mph
    super * 1000
  end
end
# binding.pry
class Brawler < SuperHero
  def powers
    "Extremely good fighters."
  end

  def weakness
    "Secrecy"
  end

  def backstory
    "I'm not supposed to talk about Fight Club...aww sh*t"
  end

  def health
    super * 20
  end
end

class Detective < SuperHero
  def powers
    "Incredible intuition."
  end

  def weakness
    @secret_identity
  end

  def backstory
    "Watched a LOT of Murder She Wrote."
  end

  def speed_in_mph
    super / 6
  end
end
# binding.pry
class Demigod < SuperHero
  def powers
    "All powerful, immortal."
  end

  def weakness
    "NOTHING"
  end

  def backstory
    "Noone knows..."
  end

  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades < SuperHero
  def powers
    "Okay at everything, not really GREAT at anything."
  end

  def weakness
    "A little weak at everything, not really BAD at anything."
  end

  def backstory
    "Various backstories. Ya know, mostly from outter space and stuff."
  end

  def species
    "Alien"
  end

  def home
    "Venus"
  end

  def psychic?
    true
  end
end

class WaterBased < SuperHero
  def powers
    "Can breath underwater"
  end

  def weakness
    "Being above water."
  end

  def backstory
    "Literally just a fish, so..."
  end

  def fans_per_thousand
    super / 100
  end

  def home
    "#{super}'s Ocean"
  end

  def psychic?
    true
  end
end
binding.pry
