class Status < ActiveRecord::Base
	validates_inclusion_of :singleton_guard, :in => [0]
	
	has_many :messages

	def self.instance
		Status.first_or_create!
			row = Status.new
			row.singleton_guard = 0
			row.currently_up = true
			row.save!
			row
	end

	def status_report
		if self.currently_up
			"Litmus is up"
		else
			"Litmus is down"
		end
	end

end