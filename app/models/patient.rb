class Patient < ApplicationRecord
    has_many :prescriptions
    has_many :user, through :prescriptions
end
