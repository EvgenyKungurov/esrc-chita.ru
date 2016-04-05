class AddColumnInAnswerpost < ActiveRecord::Migration
  def change
    add_column :answerposts, :answer, :text
  end
end
