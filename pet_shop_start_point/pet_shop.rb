def pet_shop_name(setup)
  return (@pet_shop)[:name]
end

def total_cash(setup)
  return (@pet_shop)[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(setup)
  return @pet_shop[:admin][:pets_sold]
end


def increase_pets_sold(pet_shop, pet_sold)
  return pet_shop[:admin][:pets_sold] += pet_sold
end


def stock_count(pet_shop)
  return @pet_shop[:pets].count()
end


def pets_by_breed(pet_shop, breed)
  pet_array = []
  for pet in pet_shop[:pets]
    if pet[:breed].include?(breed)
      pet_array.push(breed)
    end
  end
  return pet_array
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  # find the pet by its name
  pet = find_pet_by_name(pet_shop, name)
  # delete that pet from the pets array
  pet_shop[:pets].delete(pet)
end

def add_pet_to_stock(pet_shop, new_pet)
  # add new pet to the pet array
  # return new count of pets in pet array
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
    customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end


#OPTIONAL

def customer_can_afford_pet(customer, new_pet)
  #
  if
  customer[:cash] >= new_pet[:price]
  return true
end
else return false
end

def sell_pet_to_customer(pet_shop, pet, customer)
  # declare array for customer_pet_count and pets_sold, and push pet to it
  sold_pet = []
  sold_pet.push(pet)
  num_of_pet = sold_pet.count

  # push sold_pet count to customer_pet_count
  @customers[:pets].push(num_of_pet)

  # push sold_pet count to pets_sold
  [:admin][:pets_sold].push(num_of_pet)

  # get vaule of pet cost into a variable
  cost = @pet_shop[:pets][:price]

  # take value of cost away from customers cash
  @customers[:cash] -= cost

  # add value of cost into pet shops total_cash
  [:admin][:total_cash] += cost

end


# pet_shop[:admin][:total_cash] += amount
