require('spec_helper')

describe(Survey) do
  it("capitalize the first letter") do
    test_survey = Survey.new({:name => "germblaster"})
    test_survey.save()
    expect(test_survey.name()).to(eq("Germblaster"))
  end
end
