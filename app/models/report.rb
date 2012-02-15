class Report < ActiveRecord::Base
  belongs_to :interview
  has_many :answers
  has_one :teacher
end
