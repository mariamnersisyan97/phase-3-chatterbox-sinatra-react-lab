class Messages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :body, :username
      t.timestamps
    end
  end

end
