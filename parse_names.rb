def parse_names(name_list)
  students = []

  name_list.each_line do |line|
  	line = line.delete("\n")
  	students << line.to_s
  end

  students
end
