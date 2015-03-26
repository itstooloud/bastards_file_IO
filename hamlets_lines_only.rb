=begin
Note that each speaker's name is abbreviated to a few letters and a period. If the speaker's dialogue is longer than a single line, each successive line is indented four spaces.

When someone new speaks, his/her name is indented two spaces in. Also, dialogue ends if there is a blank line.

=end



still_going = false
File.open("hamlet.txt", "r") do |file|
   file.readlines.each do |line|

      if still_going == true && ( line.match(/^  [A-Z]/) || line.strip.empty? )
        still_going = false
      end

      still_going = true if line.match("Ham\.")

      puts line if still_going == true
   end   
end

