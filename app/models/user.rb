class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :apartment_number, presence: true

  def after_confirmation
    :send_welcome_email
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
