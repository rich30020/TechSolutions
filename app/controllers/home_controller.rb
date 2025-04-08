class HomeController < ApplicationController
    def index
    end

    def contatti
    end

    def vpn
    end

    def prezzi
    end

    def server
    end

    def supporto
    end

    def track
        section = params[:section]
        visit = Visit.find_or_initialize_by(section: section)
        visit.count ||= 0
        visit.count += 1
        visit.save
      
        redirect_to action: section
    end      
end
