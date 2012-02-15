class Question < ActiveRecord::Base
  has_one :answer
  
  validates :question, :presence=>true, :length    => {:maximum => 100  },:uniqueness => true
  validates :max_count, :presence=>true, :numericality =>{:only_integer=>true}
end
