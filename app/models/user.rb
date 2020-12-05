class User < ApplicationRecord
  validates :email,{presence: true,uniqueness: true}
  validates :password,{presence: true}
  validates :username,{presence: true}

end
