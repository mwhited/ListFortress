class CreateIdentities < ActiveRecord::Migration[5.2]
  def change
    create_table :identities do |t|
      t.string :uid
      t.string :provider
      t.references :user
    end

    change_table :users do |t|
      t.string :display_name
    end
  end
end
