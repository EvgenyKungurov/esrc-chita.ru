class ChangeSocialIdToSocialPosts < ActiveRecord::Migration
  def change
    rename_column :social_posts, :social_id, :social_service_id
  end
end
