
require 'csv'

CSV.foreach(Rails.root.join("countries.csv"), headers: true,
encoding:'iso-8859-1:utf-8') do |row|
  Country.find_or_create_by(country: row[1]) do |country|
    country.id = row[0]
    country.country = row[1]
    country.continent_id = row[3]
  end
end

CSV.foreach(Rails.root.join("countries.csv"), headers: true, encoding:'iso-8859-1:utf-8') do |row|
  Continent.find_or_create_by(cont: row[2]) do |cont|
    cont.id = row[3]
    cont.cont = row[2]
  end
end
