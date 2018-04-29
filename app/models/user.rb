class User < ApplicationRecord

    has_secure_password
    validates :email, presence: true

    has_many :prescriptions
    has_many :users
end
