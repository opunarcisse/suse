class Team < ActiveRecord::Base

has_many :teamtasks, :as => :taskable

end
