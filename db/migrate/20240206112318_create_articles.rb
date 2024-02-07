class CreateArticles < ActiveRecord::Migration[7.1]
  #db:migrate to generate a table
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end

  # def down
  #   drop_table :articles
  # end

end
