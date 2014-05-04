class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body

      # THIS LINE ADDS AN INTEGER COLUMN CALLED 'article_id'.
      t.references :article, index: true

      t.timestamps
    end
  end
end
