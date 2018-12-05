require './pokemon_class'

@my_partner = MyPokemon.new
@enemy = EnemyPokemon.new

def attack
  damage = @enemy.decrease_hp
  message "#{$name}の こうげき!"
  message "#{$enemy}に#{damage}ダメージ"
  @enemy.hp.times {print ('|')}
  space
  if @enemy.hp <= 0
    message "#{$enemy}は たおれた!" 
    message "#{$trainer}との勝負に勝った!"
    exit
  end
end

def enemy_turn
  damage = @my_partner.decrease_hp
  message "#{$enemy}の こうげき!"
  message "#{$name}に#{damage}ダメージ"
  @my_partner.hp.times {print ('|')} 
  space
  if @my_partner.hp <= 0
    message "#{$name}は たおれた!" 
    message "目の前が 真っ暗になった！"
    exit
  end
end
