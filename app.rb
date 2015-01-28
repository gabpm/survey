require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

DB = PG.connect({:dbname => 'survey_development'})

get('/') do
  @surveys = Question.all()
  erb(:index)
end

post('/questions') do
  question = params.fetch('question')
  @survey = Question.new({:question => question})
  @survey.save()
  erb(:success)
end
