class User
  attr_accessor :first_name, :last_name, :middle_name

  def initialize(first_name: '', last_name: '', middle_name: '')
    @first_name = first_name
    @last_name = last_name
    @middle_name = middle_name
  end
end
