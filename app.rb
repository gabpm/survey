require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

DB = PG.connect({:dbname => 'survey_development'})

get('/') do
  @surveys = Survey.all()
  erb(:index)
end

post('/surveys') do
  name = params.fetch('name')
  @survey = Survey.new({:name => name})
  @survey.save()
  @surveys = Survey.all()
  erb(:index)
end

get('/surveys/:id') do
  @survey = Survey.find(params.fetch("id").to_i())
  erb(:survey)
end

post('/questions') do
  question = params.fetch('question')
  survey_id = params.fetch('survey_id').to_i()
  new_question = Question.new({:question => question, :survey_id => survey_id})
  new_question.save()
  @survey = Survey.find(survey_id)
  erb(:survey)
end
