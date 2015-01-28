require('spec_helper')

describe(Question) do
  it("capitalize the first letter") do
    survey = Question.new({:question => "germblaster"})
    survey.save()
    expect(survey.question()).to(eq("Germblaster"))
  end

  it("tells which list it belongs to") do
    survey = Survey.create({:name => "survey"})
    question = Question.create({:question => "question", :survey_id => survey.id})
    expect(question.survey()).to(eq(survey))
  end
end
