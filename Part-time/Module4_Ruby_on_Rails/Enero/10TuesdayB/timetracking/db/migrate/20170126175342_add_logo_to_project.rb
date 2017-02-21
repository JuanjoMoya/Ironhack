class AddLogoToProject < ActiveRecord::Migration[5.0]
  def change
    add_attachment :projects, :logo
  end
end
