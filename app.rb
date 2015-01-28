require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

DB = PG.connect({:dbname => 'survey_development'})

get('/') do
  @surveys = Survey.all()
  erb(:index)
end

post('/questions') do
  question = params.fetch('question')
  @new_question = Question.new({:question => question})
  @new_question.save()
  erb(:success)
end

post('/surveys') do
  name = params.fetch('name')
  @survey = Survey.new({:name => name})
  @survey.save()
  erb(:success)
end
