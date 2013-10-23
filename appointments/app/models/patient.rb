class Patient < ActiveRecord::Base

  belongs_to :insurances
  has_many :appointments
  has_many :doctors, :through => :appointments

end
