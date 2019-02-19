=begin
class User
  attr_reader :first_name, :last_name, :age
  #User.newをしたときに最初に呼ばれる、
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

users.each do |user|
  puts "#{user.full_name},#{user.age}"
end

=end
class User
  def initialize
    puts 'Initialized.'
  end
end
User.new