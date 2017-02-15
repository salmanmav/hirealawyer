class LawyersController < ApplicationController
	before_action :authenticate_lawyer!

	def lawyer_profile
		lawyer = current_lawyer
		if lawyer.update(lawyer_params)
		
			if params[:speciality_ids].present?
        params[:speciality_ids].each do |speciality|
        	sp = LawyerSpeciality.new
        	sp.lawyer_id = lawyer.id
        	sp.speciality_id = speciality
        	sp.save
        end
      end
      redirect_to dashboard_lawyers_path
		else
			redirect_to :back
		end
		
	end

	def dashboard
		@lawyer = current_lawyer
	end
	def index
		@lawyer = current_lawyer
	end

	private
	def lawyer_params
    params.require(:lawyer).permit!
  end
end
