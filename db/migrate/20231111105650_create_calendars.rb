class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.string :subject
      t.string :homework

      t.timestamps
    end
  end
end
