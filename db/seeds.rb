puts "Cleaning the database"

Owner.destroy_all
Car.destroy_all
Favourite.destroy_all
Review.destroy_all

puts "Creating owners.."

owners = Owner.create!([
  { nickname: "Nikol" },
  { nickname: "Luke" },
  { nickname: "Sam" },
  { nickname: "Aisha" },
  { nickname: "Carlos" },
  { nickname: "Emily" },
  { nickname: "Noah" },
  { nickname: "Dani" },
  { nickname: "Leo" },
  { nickname: "William" }
])

puts "Done! #{Owner.count} owners created!"

Car.create!([
  { brand: "Mercedes", model: "A-Class Hatchback", year: 2024, fuel: "Unleaded petrol", owner: owners[0] },
  { brand: "Peugeot", model: "308", year: 2017, fuel: "Unleaded petrol", owner: owners[1] },
  { brand: "Tesla", model: "Model 3", year: 2023, fuel: "Electric", owner: owners[2] },
  { brand: "Toyota", model: "Corolla", year: 2021, fuel: "Hybrid", owner: owners[3] },
  { brand: "BMW", model: "X5", year: 2022, fuel: "Diesel", owner: owners[4] },
  { brand: "Audi", model: "A4", year: 2020, fuel: "Petrol", owner: owners[5] },
  { brand: "Hyundai", model: "Elantra", year: 2019, fuel: "Petrol", owner: owners[6] },
  { brand: "Ford", model: "Focus", year: 2021, fuel: "Diesel", owner: owners[7] },
  { brand: "Kia", model: "Sportage", year: 2022, fuel: "Hybrid", owner: owners[8] },
  { brand: "Honda", model: "Civic", year: 2020, fuel: "Petrol", owner: owners[9] }
])

puts "Done! #{Car.count} cars created!"
