class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable #, :registerable

  has_many :responsibilities
  has_many :journals
  has_many :goals

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: ["100x100#"] }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
