class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :short_url
      t.references :site, index: true

      t.timestamps
    end
  end
end
