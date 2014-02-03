class Log < ActiveRecord::Base
	validates :ip, presence: true, length: { maximum: 100 }
	validates :message, presence: true, length: { maximum: 200 }
	validates :time, presence: true, length: { maximum: 50 }

	def self.save(upload)
		#path = File.join("public/data", "logfile")
		if (upload)
			log = upload['log']
			if (log)
				ip = Thread.current[:request].remote_ip
				time = Time.now.to_s
				#File.open(path, "a") { |f| f.write(time + "|" + ip + "|" + log + "\n") }
				create(ip: ip, time: time, message: log)
			end
		end
	end
end
