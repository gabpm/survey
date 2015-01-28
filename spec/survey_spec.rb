require('spec_helper')


describe(Survey) do
  it("capitalize the first letter") do
    test_survey = Survey.new({:name => "germblaster"})
    test_survey.save()
    expect(test_survey.name()).to(eq("Germblaster"))

  end

  it("tells which questions are in it") do
    survey = Survey.create({:name => "survey"})
    question1 = Question.create({:question => "question1", :survey_id => survey.id})
    question2 = Question.create({:question => "question2", :survey_id => survey.id})
    expect(survey.questions()).to(eq([question1, question2]))
  end
end
