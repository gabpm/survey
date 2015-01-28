require('spec_helper')

describe(Survey) do
  it("capitalize the first letter") do
    test_survey = Survey.new({:survey => "germblaster"})
    test_survey.save()
    expect(test_survey.survey()).to(eq("Germblaster"))
  end
end
