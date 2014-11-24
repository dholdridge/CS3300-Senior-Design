class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_company_name
      t.string :project_company_technical_name
      t.string :project_company_technical_designation
      t.string :project_company_technical_email
      t.string :project_company_technical_phone
      t.string :project_company_director_name
      t.string :project_company_director_designation
      t.string :project_company_director_email
      t.string :project_company_director_phone
      t.string :project_name
      t.string :project_background
      t.string :project_concept
      t.string :project_design
      t.string :project_skills
      t.string :project_solutions
      t.boolean :project_nda_required
      t.boolean :project_funding_commitment
      t.boolean :project_company_email_conf

      t.timestamps
    end
  end
end
