class Student < ActiveRecord::Base
  belongs_to :team

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      student = find_by_id(row["id"]) || new
      student.attributes = row.to_hash.slice(*row.to_hash.keys)
      student.save!
    end
  end
end
