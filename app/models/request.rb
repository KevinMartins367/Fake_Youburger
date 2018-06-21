class Request < ApplicationRecord
    validates :description, presence: true, length: { minimum: 50 }
    validates :total, presence: true, length: { minimum: 2 }
end
