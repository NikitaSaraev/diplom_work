class Discipline < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :group
  belongs_to :discipline_dictionary
  attr_reader :teacher_tokens
  attr_reader :group_tokens
  attr_reader :discipline_dictionary_tokens
  def teacher_tokens=(ids)
    self.teacher_id = ids
  end
  def group_tokens=(ids)
   self.group_id = ids
  end
  def discipline_dictionary_tokens=(ids)
   self.discipline_dictionary_id = ids
  end
 
validates :discipline_dictionary_id, :presence=>true
validates :teacher_id, :presence=>true
validates :group_id, :presence=>true

end
