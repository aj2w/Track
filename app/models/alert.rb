class Alert < ActiveRecord::Base
belongs_to :train
belongs_to :user
end