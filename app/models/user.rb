class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :username, presence: true
  # validates :firstname, presence: true
  # validates :lastname, presence: true
  # validates :email, presence: true
  # validates :encrypted_password, presence: true

  has_many :posts, :foreign_key => "user_id"

end
