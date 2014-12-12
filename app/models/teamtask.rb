class Teamtask < ActiveRecord::Base

self.inheritance_column = nil

belongs_to :taskable, :polymorphic => true 

end
