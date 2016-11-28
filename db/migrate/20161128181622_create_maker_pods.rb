class CreateMakerPods < ActiveRecord::Migration[5.0]
  def change
    create_table :maker_pods do |t|
      t.integer :coffee_maker_id
      t.integer :coffee_pod

      t.timestamps
    end
  end
end
