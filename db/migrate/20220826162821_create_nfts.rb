# frozen_string_literal: true

class CreateNfts < ActiveRecord::Migration[5.2]
  def change
    create_table :nfts do |t|
      t.string :request_id
      t.string :tx
      t.string :from
      t.string :time
      t.string :chain_id
      t.string :status

      t.timestamps
    end
  end
end
