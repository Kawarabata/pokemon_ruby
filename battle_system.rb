require './pokemon_class'

@my_partner = MyPokemon.new
@enemy = EnemyPokemon.new
@total_damage1 = 0
@total_damage2 = 0
def attack
  damage = @enemy.decrease_hp
  @total_damage1 += damage
  message "#{$name}の こうげき!"
  message "#{$enemy}に#{damage}ダメージ"
  print ("HP ")
  @enemy.hp.times {print ('|')}
  @total_damage1.times {print ('.')}
  space
  if @enemy.hp <= 0
    message "#{$enemy}は たおれた!" 
    message "#{$trainer}との勝負に勝った!"
    exit
  end
end

def enemy_turn
  damage = @my_partner.decrease_hp
  @total_damage2 += damage
  message "#{$enemy}の こうげき!"
  message "#{$name}に#{damage}ダメージ"
  print ("HP ")
  @my_partner.hp.times {print ('|')} 
  @total_damage2.times {print ('.')}
  space
  if @my_partner.hp <= 0
    message "#{$name}は たおれた!" 
    message "目の前が 真っ暗になった！"
    exit
  end
end
