class Group < ActiveRecord::Base
  has_many :interviews
  has_many :disciplines  
  validates :name,:presence=>true,:uniqueness => true, :format=> { :with => Authentication.login_regex, :message => Authentication.bad_login_message },:length     => { :within => 2..40 }
  validates :psd, :presence=>true,
            :length     => {:within=> 5..40 },
            :uniqueness => true,
	    :format     => { :with => Authentication.name_regex, :message => Authentication.bad_name_message }
end
