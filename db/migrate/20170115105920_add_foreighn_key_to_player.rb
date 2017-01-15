class AddForeighnKeyToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_reference :players, :team, index: true
  end
end
