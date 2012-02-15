class Teacher < ActiveRecord::Base
  has_many :disciplines  
  validates :name, :presence=>true,
            :length     => { :maximum => 100  },
            :uniqueness => true
end
