class Doctor < ActiveRecord::Base

  belongs_to :insurances
  has_many :appointments
  has_many :patients, :through => :appointments

end
