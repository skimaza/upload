class Datafile < ActiveRecord::Base
	# def self.save(upload)
	# 	name = upload['datafile'].original_filename
	# 	directory = "public/data"
	# 	# create the file path
	# 	path = File.join(directory, name)
	# 	# write the file
	# 	File.open(path, "wb") { |f| f.write(upload['datafile'].read) }
	# end
	def self.save(upload)
		path = File.join("public/data", "logfile")
		if (upload)
			log = upload['log']
			if (log)
				File.open(path, "a") { |f| f.write(log + "\n") }
			end
		end
	end
end
