class Interview < ActiveRecord::Base
  belongs_to :group
  has_many :report
end
