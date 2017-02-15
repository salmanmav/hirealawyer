class AddPhotoToLawyers < ActiveRecord::Migration[5.0]
  def change
    add_attachment :lawyers, :photo

  end
end
