require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do 
        erb :user_input
    end

    post "/piglatinize" do
        sentence = params[:user_phrase]
        pig = PigLatinizer.new
        @pigified = pig.piglatinize(sentence)
        erb :display_to_user
    end

end