require './battle_command.rb'

def encount
	space
	@trainer = "ポケモントレーナー の ルビー "
	message "#{@trainer}が 勝負をしかけてきた！"
	@enemy=$pokemons.shuffle[0]
	message "#{@trainer}は #{@enemy} をくりだした！"
	message "#{@enemy}「#{@enemy}!!」"
end

def select_monster
	space
	print "どのポケモンを 出す？: "
	@name = gets.chop
	space
	if $pokemons.include?(@name)
		message "ゆけっ #{@name}!"
		message "#{@name}「#{@name}ー!」"
	elsif @name.empty?
		message "ポケモンを 呼び出そう！"
		select_monster
	else
		message "そんな ポケモンは しらない！"
		select_monster
	end
end

def battle_menu
	border
	puts "  #{@name} は どうする？\n
	たたかう        どうぐ\n
	いれかえ        にげる"
	border
	chose_command
end