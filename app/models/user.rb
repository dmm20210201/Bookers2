class User < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :profile_image

  has_many :books, dependent: :destroy
  validates :name,length: {minimum: 2}
  validates :name,length: {maximum: 20}

end
