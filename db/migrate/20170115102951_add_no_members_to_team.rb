class AddNoMembersToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :no_of_members, :integer
  end
end
