class RenameAuthorNameToWriterName < ActiveRecord::Migration[7.1]
  #bin/rails db:rollback
  #bin/rails db:migrate
  def change
    rename_column(:articles, :author_name, :writer_name)
  end
end
