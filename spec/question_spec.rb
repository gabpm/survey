require('spec_helper')

describe(Question) do
  it("capitalize the first letter") do
    survey = Question.new({:question => "germblaster"})
    survey.save()
    expect(survey.question()).to(eq("Germblaster"))
  end
end
