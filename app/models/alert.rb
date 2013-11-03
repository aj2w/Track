class Alert < ActiveRecord::Base
belongs_to :train
belongs_to :user
has_and_belongs_to_many :days
end