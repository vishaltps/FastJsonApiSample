class AddEmailToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :email, :string, uniq: true, default: "", null: false
  end
end
