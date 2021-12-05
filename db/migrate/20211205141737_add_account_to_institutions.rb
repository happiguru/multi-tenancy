class AddAccountToInstitutions < ActiveRecord::Migration[6.1]
  def change
    add_reference :institutions, :account, null: false, foreign_key: true
  end
end
