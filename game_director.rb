def encount
	space
	puts "ポケモントレーナーのRubyが勝負をしかけてきた！"
	space
	enemy=$pokemons.shuffle[0]
	puts "ポケモントレーナーのRubyは#{enemy}をくりだした！"
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
	space
	count = 0
	loop{
		puts "  #{@name} は どうする？" if count >= 1
		count += 1
		command = gets.chop
		case command
		when "どうぐ"
			puts "どうぐ を 持っていない！"
			redo
		when "いれかえ"
			puts "いれかえる ポケモン が いない！"
			redo
		when "にげる"
			puts "なんとか 逃げのびた！"
			exit
		else
			"  #{@name} は どうする？"
			redo 
		end
	}
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
