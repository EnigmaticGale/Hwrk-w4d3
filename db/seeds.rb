require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()
House.delete_all()


house_1 = House.new({
  "name" => "Gryffindor"
})
house_2 = House.new({
  "name" => "Ravenclaw"
})
house_3 = House.new({
  "name" => "Hufflepuff"
})
house_4 = House.new({
  "name" => "Slytherin"
})

house_1.save()
house_2.save()
house_3.save()
house_4.save()

student_1 = Student.new({
  "first_name" => "Walter",
  "second_name" => "White",
  "house_id" => house_1.id,
  "age" => 18
})
student_2 = Student.new({
  "first_name" => "Joe",
  "second_name" => "On",
  "house_id" => house_1.id,
  "age" => 20
})
student_3 = Student.new({
  "first_name" => "Hamish",
  "second_name" => "Whyte",
  "house_id" => house_2.id,
  "age" => 19
})


student_4 = Student.new({
  "first_name" => "Chika",
  "second_name" => "Kanu",
  "house_id" => house_3.id,
  "age" => 18
})

student_1.save()
student_2.save()
student_3.save()
student_4.save()
