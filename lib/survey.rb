class Survey < ActiveRecord::Base

  validates(:name, {:presence => true, :length => {:maximum => 50}})
  before_save(:upcase_first_letter)
  has_many(:questions)

  private

  define_method(:upcase_first_letter) do
    self.name=(name().capitalize())
  end

end
