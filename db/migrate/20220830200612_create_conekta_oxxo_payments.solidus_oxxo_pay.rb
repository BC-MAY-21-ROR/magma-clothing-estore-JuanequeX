# frozen_string_literal: true

# This migration comes from solidus_oxxo_pay (originally 20181121200357)
class CreateConektaOxxoPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :spree_conekta_oxxo_payments do |t|
      t.references :payment_method
      t.string :number
      t.string :conekta_order_id
      t.string :first_name
      t.string :last_name
      t.integer :user_id
    end
  end
end
