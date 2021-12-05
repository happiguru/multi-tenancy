class Account < ApplicationRecord
    has_many :institutions, dependent: :destroy

    validates_uniqueness_of :subdomain
end
