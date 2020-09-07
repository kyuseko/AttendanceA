class AddIndexToUsersEmail < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :email, unique: true      # カラムにインデックスを追加 一意性
  end
end
