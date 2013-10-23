class Insurance < ActiveRecord::Base
  has_many :patients
  has_many :appointments, :through => :patients
  has_many :doctors, :through => :patients

end
