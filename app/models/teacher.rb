class Teacher < ActiveRecord::Base
  has_many :reports
  has_many :disciplines  , :dependent=>:destroy
  has_many :groups, :through =>:disciplines
  validates :name, :presence=>true,
            :length     => { :maximum => 100  },
            :uniqueness => true
end
