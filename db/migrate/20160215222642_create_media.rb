class CreateMedia < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'

    create_table :media, id: :uuid do |t|
      t.string :type, null: false
      t.string :title, null: false
      t.string :teaser, null: false
      t.string :thumbnail_uid, null: false
      t.json :sti_store, null: false

      t.timestamps null: false
    end
  end
end
