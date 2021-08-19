puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "freebie one", value: rand(5..20), dev_id: Dev.ids.sample, company_id: Company.ids.sample)
Freebie.create(item_name: "freebie two", value: rand(5..20), dev_id: Dev.ids.sample, company_id: Company.ids.sample)
Freebie.create(item_name: "freebie three", value: rand(5..20), dev_id: Dev.ids.sample, company_id: Company.ids.sample)
Freebie.create(item_name: "freebie four", value: rand(5..20), dev_id: Dev.ids.sample, company_id: Company.ids.sample)

puts "Seeding done!"
