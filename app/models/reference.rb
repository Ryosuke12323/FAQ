class Reference < ActiveRecord::Base
  has_many :qas, through: :qa_references
end
