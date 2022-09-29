class BirdsController < ApplicationController
    #get birds
    def index
        birds= Bird.all
        render json:birds
    end
    #show birds

    def show
        birds =Bird.find_by (id:params[id])
        if bird
            render json
        else    
            render json{error:"bird not found"}, status: not_found
        end
end
