class Log < ActiveRecord::Base
	validates :ip, presence: true, length: { maximum: 100 }
	validates :message, presence: true, length: { maximum: 200 }
end
