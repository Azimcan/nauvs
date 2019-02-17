class NauvsInfo < ActiveRecord::Base
	belongs_to :issue
	belongs_to :user
	has_many :details, class_name: "NauvsInfoDetail"#, :dependent => :delete_all, :inverse_of => :journal

end
