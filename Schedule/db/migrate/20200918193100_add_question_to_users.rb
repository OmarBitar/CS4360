class AddQuestionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :question, :string, default: ""
    add_column :users, :answer, :string, default: Base64.encode64(Digest::SHA256.digest(""))
  end
end
