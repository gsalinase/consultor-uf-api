class Asset < ApplicationRecord
  require 'csv' 
  
  def self.get_csv(file, year, month)
    csv_text = File.read(file)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Asset.create!(
        date: Date.new(year, month, row[0].to_i),
        value: row[month].to_i
      )
    end
  end
end
