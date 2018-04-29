class Patient < ApplicationRecord
    has_many :prescriptions
end
