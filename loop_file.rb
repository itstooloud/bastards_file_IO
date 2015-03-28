=begin
	
Using the Dir.glob and File.size methods, write a script that targets a directory – and all of its subdirectories – and prints out the names of the 10 files that take up the most disk space.

Point your script to any subdirectory. You will obviously get different results than I do.

Hint: This exercise does not require a call to File.open

	
=end

these =  Dir.glob("/Users/workaroundlaptop/Downloads/*")
with_size = {}
these.each do |file|
	with_size[file] = File.size(file)
end

with_size.sort_by {|key, value| value}.reverse[0..9].each do |file|
 	puts file
 end