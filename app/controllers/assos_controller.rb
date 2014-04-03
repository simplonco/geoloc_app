class AssosController < ApplicationController

def map
	call_loc = Localisation.all
	@locs = call_loc.map{ |l| [l.latitude,l.longitude] }

end

def new
	@asso = Asso.new
end
 
def create
	Asso.create_with_address(asso_params)
end







# 	@asso.save if @asso.valid?
# 	gb = Gibbon::API.new("62f2fb210e5b52601f3646a44c3923c2-us3")	
# 	list_id = "be69e57317"
# 	begin
# 	gb.lists.subscribe({
# 		id: list_id, 
# 		email: {email: params[:asso][:email]},
# 		double_optin: true
# 	 })
# 	notice = "Merci de confirmer votre inscription :)"
# 	rescue Gibbon::MailChimpError => e 
# 		notice = e.message
# 	end
# 	render 'voluntaries/create'
# end

private
	def asso_params
		params.require(:asso).permit(:last_name, :description, :address, :email, :besoins, :phone)
	end
end
