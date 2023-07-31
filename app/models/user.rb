class User < ApplicationRecord
    has_secure_password

    validates :name, :email, presence: true
    validates :email, uniqueness: true

    def authenticate(password)
        if BCrypt::Password.new(self.password_digest) == password
            self
        else
            false
        end
    end
end
