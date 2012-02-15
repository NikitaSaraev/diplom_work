class Group < ActiveRecord::Base
  has_many :interviews
  has_many :disciplines  
  validates :name,:presence=>true,:uniqueness => true
  validates :psd, :presence=>true,
            :length     => {:within=> 5...40 },
            :uniqueness => true  
end
