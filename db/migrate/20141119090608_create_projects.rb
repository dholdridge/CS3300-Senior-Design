class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :company_name
      t.string :company_technical_name
      t.string :company_technical_designation
      t.string :company_technical_email
      t.string :company_technical_phone
      t.string :company_director_name
      t.string :company_director_designation
      t.string :company_director_email
      t.string :company_director_phone
      t.string :name
      t.string :background
      t.string :concept
      t.string :design
      t.string :skills
      t.string :solutions
      t.boolean :nda_required
      t.boolean :funding_commitment
      t.boolean :company_email_conf

      t.timestamps
    end
  end
end
