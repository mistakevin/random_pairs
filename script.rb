load 'parse_names.rb'

if ARGV.empty?
	puts 'Use: ruby script.rb FILE_NAME'
	exit
end

pairs = parse_names(name_list = File.open(ARGV[0]).read).shuffle.each_slice(2).to_a

File.open('pairs.txt', 'w') do |file|
	pairs.each do |p|
		file.write(p)
		file.write("\n")
	end
end
