class AdminController < ApplicationController

    
      def dashboard
        @homes=Home.all
        @questions = Question.all.sort_by { |question| -question.votes.count }.first(100)
      end
end
