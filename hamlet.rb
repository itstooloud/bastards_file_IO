require 'open-uri'

url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"


def divisible_by_42? (num)

	num % 42 == 0 ? true :false

end

hamlet_remote = open(url).read
hamlet_local = open("hamlet.txt", "w")

hamlet_local.write(hamlet_remote)

File.open(hamlet_local, "r") do |file|
	file.readlines.each_with_index do |line, index|
		puts line if divisible_by_42? (index)
	end
end







