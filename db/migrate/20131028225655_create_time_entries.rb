class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.references :project, index: true
      t.references :client, index: true
      t.references :user, index: true
      t.string :description
      t.integer :minutes
      t.date :date
      t.boolean :billable

      t.timestamps
    end
  end
end
