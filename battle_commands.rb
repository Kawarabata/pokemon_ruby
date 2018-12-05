require './pokemon_class'

my_partner = MyPokemon.new
enemy = EnemyPokemon.new
$my_hp = my_partner.hp
$enemy_hp = enemy.hp

def battle
  message "#{$name}の こうげき!"
  damage = rand(10..50)
  message "#{$enemy}に#{damage}ダメージ"
  $enemy_hp -= damage
  $enemy_hp.times {print ('|')}
end


# def item
# end
# def change
# end
# def escape
# end