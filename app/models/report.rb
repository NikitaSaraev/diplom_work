class Report < ActiveRecord::Base
  belongs_to :interview
  has_many :answers
  has_many :questions, :through =>:answers
  belongs_to :teacher
end
