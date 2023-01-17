class AddColumnSkills < ActiveRecord::Migration[7.0]
  def change
    add_reference :skills, :level, foreign_key: true
  end
end
