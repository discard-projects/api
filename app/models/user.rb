class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  validates :mobile, :username, presence: true, uniqueness: {allow_blank: true}
  validates :mobile, format: {with: /1[0-9]{10}\z/}, :if => Proc.new {mobile.present?}
end
