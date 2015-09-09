# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

company_list = [
  [ "Accenture", "France", "Mr. A", 100, 81831000, "up", "on" ],
  [ "Infosys", "India", "Mr. B", 200, 65447374, "up", "on" ],
  [ "Wipro", "India", "Mr. C", 300, 10839905, "up", "on" ],
  [ "CTS", "US", "Mr. D", 400, 16680000, "up", "on" ],
  [ "TCS", "India", "Mr. E", 500, 81831000, "up", "off" ],
  [ "Qburst", "India", "Mr. F", 600, 65447374, "up", "off" ],
  [ "Hibiscus", "UK", "Mr. G", 700, 10839905, "down", "on" ],
  [ "Strapp", "UAE", "Mr. H", 800, 16680000, "down", "on" ],
  [ "Dell", "US", "Mr. I", 900, 81831000, "up", "off" ],
  [ "Deloitte", "NZ",  "Mr. J", 1000, 65447374, "up", "on" ],
  [ "L&T", "Australia",  "Mr. K", 1100, 10839905, "up", "on" ],
  [ "HP", "UK",  "Mr. L", 1200, 16680000, "up", "on" ],
  [ "JP Morgan", "Germany",  "Mr. M", 1300, 81831000, "up", "on" ],
  [ "Aditi", "India",  "Mr. N", 1400, 65447374, "up", "on" ],
  [ "XL Health", "South Africa",  "Mr. O", 1500, 10839905, "up", "on" ],
  [ "Toyota", "Japan",  "Mr. P", 1600, 16680000, "up", "on" ]
]
company_list.each do |company_name, company_hq, ceo, employees, revenue, stock_position, status|
  Company.create( company_name: company_name, 
                  company_hq: company_hq,
                  ceo: ceo,
                  employees: employees,
                  revenue: revenue,
                  stock_position: stock_position,
                  status: status
                )
end