class User < ApplicationRecord

    validates :username, presence: true
    validates :password_digest, presence: { message: 'Password cannot be blank'}
    validates :session_token, presense: true

    def self.find_by_credentials(username, password)
        
    end

    def generate_session_token
    end


    def reset_session_token!
    end

    def ensure_session_token
    end

    def password=(password)
        self.password_digest = BCrypt::Password.create(password)

    end

    def is_password?(password)
        self.password_digest == 
    end

end
