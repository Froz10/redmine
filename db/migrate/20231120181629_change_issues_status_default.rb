class ChangeIssuesStatusDefault < ActiveRecord::Migration[6.1]
  change_table :issues do |t|
    t.change :status_id, :string, null: true
    t.change :priority_id, :string, null: true
  end
end
