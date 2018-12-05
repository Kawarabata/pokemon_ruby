class Pokemon
  def name
    $name
  end

  def hp
    @hp = rand(80..120)
    puts @hp
  end
  def attack
    @damage = rand(10..30)
    puts "@damage"
  end
end


class MyPokemon < Pokemon
end

class EnemyPokemon < Pokemon
end

# a=MyPokemon.new
# a.hp

# b=EnemyPokemon.new
# b.hp