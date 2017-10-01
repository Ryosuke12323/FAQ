class QaCurriculum < ActiveRecord::Base
  belongs_to :qa
  belongs_to :curriculum
end
