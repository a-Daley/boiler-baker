require 'csv'

class Baby_name	
	#each Baby_name has a birth year, gender, ethnicity, moniker, count, and rank
	attr_accessor :birth_year, :gender, :ethnicity, :moniker, :count, :rank 

	# def to_s
	# 	"#{rank} :: #{moniker} :: #{gender} :: #{ethnicity}"
	# end

	#Read the CSV file, omit the first row of headers. Then, give every name instance a birth year, gender, ethnicity, moniker, and count
	all = CSV.read("baby_names.csv")[1..-1].map do |birth_year, gender, ethnicity, moniker, count|
		name_instance = Baby_name.new
		name_instance.birth_year = birth_year
		name_instance.gender = gender
		name_instance.ethnicity = ethnicity
		name_instance.moniker = moniker
		name_instance.count = count
	end

	puts all.inspect 

end
