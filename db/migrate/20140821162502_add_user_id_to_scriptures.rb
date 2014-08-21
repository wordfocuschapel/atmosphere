class AddUserIdToScriptures < ActiveRecord::Migration
  def change
    add_reference :scriptures, :user, index: true
  end
end
