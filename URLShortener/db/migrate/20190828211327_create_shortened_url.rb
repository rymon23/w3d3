class CreateShortenedUrl < ActiveRecord::Migration[5.2]
  def change
    create_table :shortened_urls do |t|
      t.text :long_url, null: false
      t.text :short_url, null: false
      t.integer :user_id, null: false, unique: true

      t.timestamps
    end

  #  add_column :shortened_urls, :long_url, :text, null: false
  #  add_column :shortened_urls, :short_url, :text, null: false
  #  add_column :shortened_urls, :user_id, :integer, null: false, unique: true
  #  add_index :shortened_urls, :user_id, unique: true
  end
end
