class CreateQuestions < ActiveRecord::Migration
  def change
    create_table(:questions) do |t|
      t.column(:question, :string)
    end
  end
end
