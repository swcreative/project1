class Share < ApplicationRecord

  has_and_belongs_to_many :lists
  has_and_belongs_to_many :notes

end
