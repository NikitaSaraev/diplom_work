class Answer < ActiveRecord::Base
  belongs_to :report
  has_one :question
end
