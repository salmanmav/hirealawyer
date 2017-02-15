class AddResumeAttachmentToLawyers < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :lawyers, :resume
  end
end
