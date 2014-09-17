## Animal is-a object look at the extra credit
class Animal
end

## A class named Dog that is-a Animal
class Dog < Animal

    def initialize(name)
        ## ??
        @name = name
    end
end

## A class named Cat that is-a Animal
class Cat < Animal

    def initialize(name)
        ## class Cat has-a initialize that accepts the name parameter
        @name = name
    end
end

## a class named Person
class Person

    def initialize(name)
        ## class Person has-a initialize that accepts the name parameter
        @name = name

        ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet 
end

## a class named Employee that is-a Person
class Employee < Person

    def initialize(name, salary)
        ## ?? hmm what is this strange magic?
        ## access parent class' initialize function passing name parameter (initializes @name @pet)
        super(name)
        ## class Employee has-a initialize that accepts the salary parameter
        @salary = salary
    end

end

## Fish is a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## mary is-a Person
mary = Person.new("Mary")

## from mary get the .pet attribute and set it to satan
mary.pet = satan

## frank is-a Employee
frank = Employee.new("Frank", 120000)

## from frank get the .pet attribute and set it to rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new()

## crouse is-a Salmon
crouse = Salmon.new()

## harry is-a Halibut
harry = Halibut.new()