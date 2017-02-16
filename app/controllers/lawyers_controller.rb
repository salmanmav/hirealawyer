class LawyersController < ApplicationController
	before_action :authenticate_lawyer!, except: [:search, :profile]

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
      redirect_to dashboard_lawyer_path(lawyer)
		else
			redirect_to :back
		end
	end

	def search
		if params[:location].present?
			@lawyers = Lawyer.where('lower(location) = ?', params[:location].downcase) 
		end
		speciality = Speciality.where(id: params[:speciality_id])
        
    if speciality.present?
      speciality_obj = Lawyer.joins(:specialities).where('specialities.id IN (?)', speciality.select(:id))
    end

    if speciality_obj.present?
      result = @lawyers + speciality_obj
      result.map{|i| i.id}
      @lawyers = Lawyer.where(id:result).uniq
    end
	end
	
	def dashboard
		@lawyer = current_lawyer
	end

	def profile

		@lawyer = Lawyer.find_by_id params[:id]
		
	end

	def index
		@lawyer = current_lawyer
	end

	private
	def lawyer_params
    params.require(:lawyer).permit!
  end
end
