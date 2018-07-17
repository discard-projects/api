class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  validates :mobile, :username, :email, presence: true, uniqueness: true
  validates :mobile, format: {with: /1[0-9]{10}\z/}
end
