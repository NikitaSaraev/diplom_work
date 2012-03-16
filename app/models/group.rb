class Group < ActiveRecord::Base
  has_many :interviews, :dependent=>:destroy
  has_many :disciplines ,:dependent=>:destroy 
  has_many :teachers, :through =>:disciplines
  validates :name,:presence=>true,:uniqueness => true, :format=> { :with => Authentication.login_regex},:length     => { :within => 1..40 }
  validates :psd, :presence=>true,
            :length     => {:within=> 5..40 },
            :uniqueness => true,
	    :format     => { :with => Authentication.name_regex  }
end
