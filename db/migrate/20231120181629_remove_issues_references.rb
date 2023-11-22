class RemoveIssuesReferences < ActiveRecord::Migration[6.1]
  def up
    remove_reference :issues, :tracker, index: true
    remove_reference :issues, :status, index: true
    remove_reference :issues, :category, index: true
    remove_reference :issues, :assigned_to, index: true
    remove_reference :issues, :priority, index: true
    remove_reference :issues, :fixed_version, index: true
    remove_reference :issues, :author, index: true
    remove_reference :issues, :parent, index: true
    remove_reference :issues, :root, index: true
  end

  def down
    add_reference :issues, :tracker, index: true
    add_reference :issues, :status, index: true
    add_reference :issues, :category, index: true
    add_reference :issues, :assigned_to, index: true
    add_reference :issues, :priority, index: true
    add_reference :issues, :fixed_version, index: true
    add_reference :issues, :author, index: true
    add_reference :issues, :parent, index: true
    add_reference :issues, :root, index: true
  end
end
