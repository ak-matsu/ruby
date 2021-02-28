class Student
  def name(last_name, first_name)
    @last_name = last_name
    @first_name = first_name
  end

  def introduce
    puts "私の名前は「#{@first_name + " " + @last_name}」です。"
  end
end

student = Student.name("山田", "太郎")
student.name