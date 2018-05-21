def grade_maker(name,grade)
	hash = {}
	# answer = "yes"

	# while answer == "yes"
	# 	p "Would you like to input a student and grade?..(yes/no)"
	# answer = gets.chomp
	# 	case answer 
	# 	when "yes"
			# puts "Please add a name:"
			# name = gets.chomp
			hash[name] = name
			# puts "Please enter grade:"
			# grade = gets.chomp.to_i
			hash[name] = grade.to_i
		# when "no"
		# 	break
		# end

		case grade
		when 0..40 then changed_grade = grade
		when 41..45 then changed_grade = 45
		when 46..50 then changed_grade = 50
		when 51..55 then changed_grade = 55
		when 56..60 then changed_grade = 60
		when 61..65 then changed_grade = 65
		when 66..70 then changed_grade = 70
		when 71..75 then changed_grade = 75
		when 76..80 then changed_grade = 80
		when 81..85 then changed_grade = 85
		when 86..90 then changed_grade = 90
		when 91..95 then changed_grade = 95
		when 96..100 then changed_grade = 100
		else "Invalid Score"
		end
		hash[name] = changed_grade.to_s
	hash
end
def grade_book(list)
	new_array = []
	list.each do |key,value|
		new_array << grade_maker(key,value)
	end
	new_array
end

