require "./battle_command"

def encount
	space
	@trainer = "ポケモントレーナー の ルビー "
	print "#{@trainer}が 勝負をしかけてきた！▼"
	wait
	space
	@enemy=$pokemons.shuffle[0]
	puts "#{@trainer}は #{@enemy} をくりだした！"
	puts "#{@enemy}「#{@enemy}!!」"
end

def select_monster
	space
	print "どのポケモンを 出す？: "
	@name = gets.chop
	space
	if $pokemons.include?(@name)
		puts "ゆけっ #{@name}!"
		wait
		puts "#{@name}「#{@name}!」"
		space
		wait
	elsif @name.empty?
		puts "ポケモンを 呼び出そう！"
		select_monster
	else
		puts "そんな ポケモンは しらない！"
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

def space
	puts "\n\n"
end

def wait
	wait = gets
end

def border
	puts "\n---------------------------------\n\n"
end


def jump_out
	puts "#{@name}、かわせ!"
end
def escape
	puts "もどれ、#{@name}"
end
