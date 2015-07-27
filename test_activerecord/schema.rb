require 'active_record'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

ActiveRecord::Schema.define do

  # create a table with 5 fields (actually 6 in total including id)
  create_table :cars do |t|               #where t is of TableDefinition
    t.string    :name,        limit: 255  # ? = where the string method or something else come from? 
    t.integer   :year,        limit: 4    # here: http://stackoverflow.com/questions/31644218/where-does-the-tabledefinition-string-method-come-from
    t.integer   :owner_id,    limit: 4
    t.decimal   :price,       precision: 8, scale: 2
    t.datetime  :purchased_at
  end 

  create_table :cars_drivers, id: false do |t|
    t.integer   :car_id,      limit: 4
    t.integer   :driver_id,   limit: 4
  end

  create_table :drivers do |t|
    t.string    :name,        limit: 255
  end

  create_table :owners do |t|
    t.string    :name,        limit: 255
  end

end

class Car < ActiveRecord::Base
  has_and_belongs_to_many :drivers
  belongs_to :owner
end

class Driver < ActiveRecord::Base
  has_and_belongs_to_many :cars
end

class Owner < ActiveRecord::Base
  has_many :cars
end

puts :yeah_working_by_alan
