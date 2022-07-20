require_relative 'nameable'
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission == true
  end

  def correct_name
    @name
  end

  def add_rentals(date, book)
    @rentals.push(Rental.new(date, self, book)) unless @rentals.include?(Rental.new(date, self, book))
  end

  private

  def of_age?
    @age >= 18
  end
end
