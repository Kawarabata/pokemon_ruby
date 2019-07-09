require './choose_command.rb'
require './pokemon_list'

# 相手と遭遇して相手がポケモンを繰り出す
def encount
	space
	$trainer = "ポケモントレーナー の ルビー "
	message "#{$trainer}が 勝負をしかけてきた！"
	$enemy=$pokemons.shuffle[0]
	message "#{$trainer}は #{$enemy} をくりだした！"
	message "#{$enemy}「#{$enemy}!!」"
end

# 自分がポケモンを選択して出す
def select_monster
	space
	print "どのポケモンを 出す？: "
	$name = gets.chop
	space
	if $pokemons.include?($name)
		message "ゆけっ #{$name}!"
		message "#{$name}「#{$name}ー!」"
	elsif $name.empty?
		puts "ポケモンを 呼び出そう！"
		select_monster
	else
		puts "そんな ポケモンは しらない！"
		select_monster
	end
end

# 選択肢からポケモンに命令する
def battle_menu
	border
	puts "  #{$name} は どうする？\n
	たたかう        どうぐ\n
	いれかえ        にげる"
	border
	choose_command
end
