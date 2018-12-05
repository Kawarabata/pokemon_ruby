require './game_director.rb'

class Pokemon
  def hp
    @hp = rand(80..120)
    @hp
  end
end


class MyPokemon < Pokemon
  def name
    $name
  end
end

class EnemyPokemon < Pokemon
  def enemy_name
    $enemy
  end
end

