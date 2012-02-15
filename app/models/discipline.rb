class Discipline < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :group
  
  attr_reader :teacher_tokens
  attr_reader :group_tokens
  def teacher_tokens=(ids)
    self.teacher_id = ids
  end
  def group_tokens=(ids)
   self.group_id = ids
  end

end
