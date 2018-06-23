Hanami::Model.migration do
  change do
    create_table :tasks do
      primary_key :id

      column :title, String, null: false
      column :description, String, null: false
      foreign_key :owner_id, :users
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
