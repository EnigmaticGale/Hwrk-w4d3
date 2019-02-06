require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('./models/student')
require_relative('./models/student')
also_reload('./models/*')

get /hogwrts-tracker/ do

get '/hogwarts-tracker/index' do #INDEX
  @students = Student.all()
  erb(:index)
end

get '/hogwarts-tracker/index/:id'do #SHOW
  @student = Student.find(params[:id])
  erb(:show)
end
