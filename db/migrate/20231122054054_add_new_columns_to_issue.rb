class AddNewColumnsToIssue < ActiveRecord::Migration[6.1]
  def up
    add_column :issues, :status, :string
    add_column :issues, :priority, :string
    add_column :issues, :tags, :string
    add_column :issues, :price, :float
    add_column :issues, :number_of_task, :text
    add_column :issues, :contractor, :string
    add_column :issues, :nmck, :float
    add_column :issues, :remaining_amount_plan, :float
    add_column :issues, :remaining_amount_fact, :float
    add_column :issues, :is_plan, :boolean, default: true
    add_column :issues, :executor, :string
    add_column :issues, :customer, :string
  end

  def down
    remove_column :issues, :status, :string
    remove_column :issues, :priority, :string
    remove_column :issues, :tags, :string
    remove_column :issues, :price, :float
    remove_column :issues, :number_of_task, :text
    remove_column :issues, :contractor, :string
    remove_column :issues, :nmck, :float
    remove_column :issues, :remaining_amount_plan, :float
    remove_column :issues, :remaining_amount_fact, :float
    remove_column :issues, :is_plan, :boolean, default: true
    remove_column :issues, :executor, :string
    remove_column :issues, :customer, :string
  end
end
