class Question < ActiveRecord::Base
  has_many :answers
  has_many :reports, :through =>:answers
  validates :question, :presence=>true, :length    => {:maximum => 100  },:uniqueness => true
  validates :max_count, :presence=>true, :numericality =>{:only_integer=>true}
end
