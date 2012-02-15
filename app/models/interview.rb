class Interview < ActiveRecord::Base
  belongs_to :group
  has_many :report
  validates :selfauth, :presence=>true, :lenght {:minimum => 5}
end
