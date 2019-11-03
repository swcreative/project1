class List < ApplicationRecord
  belongs_to :users, optional :false

  has_and_belongs_to_many :shares

end
