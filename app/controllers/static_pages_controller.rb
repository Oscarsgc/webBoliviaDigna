class StaticPagesController < ApplicationController
  	def home
      @carrousels = Carrousel.all
  	end

  	def about_us
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

    def vision_mission
    end

    def areas_of_action
    end

    def target_population
    end

end
