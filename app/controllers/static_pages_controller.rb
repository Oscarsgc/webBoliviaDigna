class StaticPagesController < ApplicationController
  	def home
      @carrousels = Carrousel.all
  	end

  	def who_we_are
  	end

  	def social_context  		
  	end

  	def child_care  		
  	end

  	def school_support  		
  	end
  	
  	def english_speaking  		
  	end

    def sports_school      
    end

    def startups      
    end

    def contact      
    end
end
