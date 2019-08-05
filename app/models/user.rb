class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: {with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}
  validates :username, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :password_digest, presence: true, length: { minimum: 8 }

end
