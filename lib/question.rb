class Question < ActiveRecord::Base

  validates(:question, {:presence => true, :length => {:maximum => 50}})
  before_save(:upcase_first_letter)

  private

  define_method(:upcase_first_letter) do
    self.question=(question().capitalize())
  end

end
