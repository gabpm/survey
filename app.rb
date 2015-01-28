require('bundler/setup')
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @question = Question.all()
  erb(:index)
end

post('/questions') do
  question = params.fetch('question')
  @question = Question.new({:question => question})
  @task.save()
  erb(:success)
end
