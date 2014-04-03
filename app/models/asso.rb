class Asso < ActiveRecord::Base

	has_one :localisation, as: :localisable

 #  validates :last_name, presence: true
	# validates :email, presence: true
	# validates :time, presence: true
	# validates :address, presence: true
	# validates :phone, presence: true
	# validates :description, presence: true
	# validates :besoins, presence: true
  # Asso.create_with_address(params)

  def self.create_with_address(params)
    binding.pry
    asso = Asso.new(address: params[:address])
    asso.localisation = Localisation.create_from(params[:address])
    asso.save
    asso
  end    

  def position
    if localisation
      localisation.position
    end
  end
end
	
