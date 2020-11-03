class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable

    has_many :attendances
    has_many :admin_events, foreign_key: 'admin_id', class_name: 'Event'
    has_many :participant_events, foreign_key: 'participant_id', class_name: "Event"
    
    # after_create :welcome_send
    
    # def welcome_send
    #   UserMailer.welcome_email(self).deliver_now
    # end

    # after_edit :edit_send

    # def edit_send
    #   Devise.reset_password_instructions(self).deliver_now
    # end
  end
