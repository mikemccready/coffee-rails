class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :maker_pods, :coffee_pod, :coffee_pod_id
  end
end
