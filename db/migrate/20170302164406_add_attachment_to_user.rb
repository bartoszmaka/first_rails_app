class AddAttachmentToUser < ActiveRecord::Migration[5.0]
  def change
    add_attachment :users, :avatar
  end
end
