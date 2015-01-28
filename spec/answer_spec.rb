require("spec_helper")


describe(Answer) do
  it("tells which list it belongs to") do
    question = Question.create({:question => "question"})
    answer = Answer.create({:answer => "answer", :question_id => question.id})
    expect(answer.question()).to(eq(question))
  end
end
