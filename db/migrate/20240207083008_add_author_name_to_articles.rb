# bin/rails g migration add_author_name_to_articles author_name:string
class AddAuthorNameToArticles < ActiveRecord::Migration[7.1]
  def change
    #to change it to something else for ex, writer_name
    #bin/rails db:rollback then make the change then migrate
    #bin/rails g migration rename_author_name_to_writer_name
    #this will generate another schema file
    add_column :articles, :author_name, :string
  end
end
