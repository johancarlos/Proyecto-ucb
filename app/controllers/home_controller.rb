class HomeController < ApplicationController
  respond_to :html, :js
  before_action :set_home, only: [:show]
  
  @home = Home.create(showq: true)
    def show
    end
    def index
      @homes=Home.all
      @questions = Question.all
      
      @question = Question.new
      vote_id = cookies["vote_#{@question.secret}"]
      @vote = Vote.where({secret: vote_id}).first_or_initialize
      
    end
    def ajax_setshowquestion()
      @homes=Home.all
      num1 = params["num1"].to_i
      if (num1 == 0)
      @homes.first.update_attribute(:showq, true)
      else
        if(num1 == 1)
        @homes.first.update_attribute(:showq, false)
        end
      end
      
    end
    
    private
      def set_home
        @home = Home.find(params[:id])
      end
end
