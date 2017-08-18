class CreateAbnormals < ActiveRecord::Migration[5.1]
  def change
    create_table :abnormals do |t|
      t.string :envelop, :principal, :faulter, :department, :client, :model_no, :merchandiser
      t.text :reason, :remarks
      t.integer :quantity, default: 1
      t.datetime :input_time, :raw_delivery, :new_delivery
      t.timestamps
    end
  end
end
