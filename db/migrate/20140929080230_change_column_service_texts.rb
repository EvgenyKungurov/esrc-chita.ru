class ChangeColumnServiceTexts < ActiveRecord::Migration
  def change
  rename_column :service_texts, :user_id, :service_id
  end
end
