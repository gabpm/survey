class Answer < ActiveRecord::Base

  validates(:question, {:presence => true, :length => {:maximum => 100}})
  belongs_to(:question)

end
