class Garden
  attr_reader :alice,
              :bob,
              :charlie,
              :david,
              :eve,
              :fred,
              :ginny,
              :harriet,
              :ileana,
              :joseph,
              :kincaid,
              :larry,
              :patricia

  def initialize(plant_string, students = [])
    # require 'pry'; binding.pry
    @garden_array = plant_string.split("\n")
    if students == []
      @students = students


      @alice = plant_names(find_plants(:alice))
      @bob = plant_names(find_plants(:bob))
      @charlie = plant_names(find_plants(:charlie))
      @david = plant_names(find_plants(:david))
      @eve = plant_names(find_plants(:eve))
      @fred = plant_names(find_plants(:fred))
      @ginny = plant_names(find_plants(:ginny))
      @harriet = plant_names(find_plants(:harriet))
      @ileana = plant_names(find_plants(:ileana))
      @joseph = plant_names(find_plants(:joseph))
      @kincaid = plant_names(find_plants(:kincaid))
      @larry = plant_names(find_plants(:larry))
      # @students = [@alice, @bob, @charlie, @david, @eve, @fred, @ginny, @harriet, @ileana, @joseph, @kincaid, @larry]
    else
      @students = make_students(students)
    end
  end

  def make_students(students)
    
  end

    # def patricia
    #   # require 'pry'; binding.pry
    #   @patricia = plant_names(find_plants(:patricia))
    # end
     
  def find_plants(student)
    # require 'pry'; binding.pry
    if @students == [] # no custom input
      plant_position = {
        alice: [0,1],
        bob: [2,3],
        charlie: [4,5],
        david: [6, 7],
        eve: [8, 9],
        fred: [10, 11],
        ginny: [12, 13],
        harriet: [14, 15],
        ileana: [16, 17],
        joseph: [18, 19],
        kincaid: [20, 21],
        larry: [22, 23]
      }
      plants = []
      #row 1
      plants << @garden_array[0][plant_position[student][0]]
      plants << @garden_array[0][plant_position[student][1]]
      #row 2
      plants << @garden_array[1][plant_position[student][0]]
      plants << @garden_array[1][plant_position[student][1]]
      return plants
    else
      #find custom plant position
      custom_position = {}
      counter = 0
      @students.map  do |s|
        custom_position[s] = []
        custom_position[s] << counter
        custom_position[s] << counter + 1
        counter += 2
      end
      #output an array of strings
      plants = []
      require 'pry'; binding.pry
      custom_position.keys.each do |stu|
        # row 1
        plants << @garden_array[0][custom_position[stu][0]]
        plants << @garden_array[0][custom_position[stu][1]]
        plants << @garden_array[1][custom_position[stu][0]]
        plants << @garden_array[1][custom_position[stu][1]]
      end
      return plants
    end
  end

  def plant_names(plant_letters)
    full_names = []
    plant_letters.each do |l|
      full_names << :grass if l == 'G'
      full_names << :clover if l == 'C'
      full_names << :radishes if l == 'R'
      full_names << :violets if l == 'V'
    end
    full_names
  end
end