module StudentModule
  require_relative 'person'
  include PersonModule

  class Student < Person
    attr_accessor :classroom

    def initialize(classroom)
      super
      @classroom = classroom
    end

    def play_hooky
      "¯\(ツ)/¯"
    end
  end
end
