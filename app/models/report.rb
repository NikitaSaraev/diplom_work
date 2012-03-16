class Report < ActiveRecord::Base
  belongs_to :interview
  has_many :answers, :dependent=>:destroy
  has_many :questions, :through =>:answers
  belongs_to :teacher
  accepts_nested_attributes_for :answers, :reject_if => proc {|attributes| attributes['value'].blank?}
end
