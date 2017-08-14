class Article < ApplicationRecord
	validates :name, presence: true, length:{ minimum: 3}, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/,
    message: "only allows letters" }
     validates :password, confirmation: true, length: { in: 6..20 }, presence: true,format: { with: /\A^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}\z/, message: " Minimum characters, at least one uppercase letter, one lowercase letter, one number and one special character  " }
     validates :password_confirmation, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	#validates :email, presence: true,format: {with: VALID_EMAIL_REGEX},
     validates :email, confirmation: true, :presence => true, 
                :length => {:minimum => 3, :maximum => 254},
                :uniqueness => true,
                :format => {with: VALID_EMAIL_REGEX}
       validates :email_confirmation, presence: true
       validates :state, presence: true, inclusion: { in: %w(Delhi Bihar U.P West Bengal),
    message: "%{value} is not a valid state" }
       validates :gender, presence: true         
      validates :dob, presence: true
      validates :phone,presence: true,:length =>{:is =>10},numericality: { only_integer: true }
      validates :terms_of_service, acceptance: true
     before_save :correct
     
     validate :date_of_birth
     def date_of_birth
     	if dob.present? && dob > Date.today
     		errors.add(:date,"can't be in the future")
     	end
     
     def correct
     	email.downcase!
     end                   
end
end