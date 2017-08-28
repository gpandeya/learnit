class KlassesController < ApplicationController

    def index
        @klasses =Klass.all
    end
    
    def new
        @klass = Klass.new
    end
    
    def create
        @klass = Klass.new(params[:klass].permit(:name, :subject, :level, :credit))
        
        if @klass.save
            redirect_to klasses_path(@klass)
        else
            render 'new'
        end
        
    end
    
end