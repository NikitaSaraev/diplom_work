class Answer < ActiveRecord::Base
  belongs_to :report
  belongs_to :question
end
