class QaReference < ActiveRecord::Base
  belongs_to :qa
  belongs_to :reference
end
