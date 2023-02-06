class AddPhoneAndHiredToAuditions < ActiveRecord::Migration[5.2]
  def change
    add_column :auditions, :phone, :integer
    add_column :auditions, :hired, :boolean
  end
end
