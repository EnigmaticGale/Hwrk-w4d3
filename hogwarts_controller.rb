require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('./models/student')
require_relative('./models/student')
also_reload('./models/*')

get '/hogwarts-tracker' do

end

get '/hogwarts-tracker/new' do # new
  erb( :new )
end

get '/hogwarts-tracker/index' do #INDEX
  @students = Student.all()
  erb(:index)
end

get '/hogwarts-tracker/index/:id'do #SHOW
  @student = Student.find(params[:id])
  erb(:show)
end

post '/hogwarts-tracker/new' do # create
  @student = Student.new( params )
  @student.save()
  erb( :create )
end
