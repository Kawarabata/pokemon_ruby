require './pokemon_class'

my_partner = MyPokemon.new
enemy = EnemyPokemon.new
$my_hp = my_partner.hp
$enemy_hp = enemy.hp

def attack
  message "#{$name}の こうげき!"
  damage = rand(10..50)
  message "#{$enemy}に#{damage}ダメージ"
  $enemy_hp -= damage
  $enemy_hp.times {print ('|')}
  space
  if $enemy_hp <= 0
    message "#{$enemy}は たおれた!" 
    message "#{$trainer}との勝負に勝った!"
    exit
  end
end

def enemy_turn
  message "#{$enemy}の こうげき!"
  damage = rand(10..50)
  message "#{$name}に#{damage}ダメージ"
  $my_hp -= damage
  $my_hp.times {print ('|')} 
  space
  if $my_hp <= 0
    message "#{$name}は たおれた!" 
    message "目の前が 真っ暗になった！"
    exit
  end
end