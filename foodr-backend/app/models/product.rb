require 'csv'

class Product < ApplicationRecord
	has_many :searches
	has_many :users, through: :searches
	has_many :ingredient_products
	has_many :ingredients, through: :ingredient_products

  def self.loadCSV(filename)
    path = Rails.root.join('lib', 'seeds', filename)
    CSV.foreach(path, encoding: 'iso-8859-1:utf-8', headers: true, header_converters: :symbol) do |row|
      product = Product.create(row.to_h)
      product.img_url = 'https://www.jainsusa.com/images/store/landscape/not-available.jpg'
      product.save
    end
  end
end
