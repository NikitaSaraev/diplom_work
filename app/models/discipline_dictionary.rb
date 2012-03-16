class DisciplineDictionary < ActiveRecord::Base
has_many :disciplines, :dependent=>:destroy
end
