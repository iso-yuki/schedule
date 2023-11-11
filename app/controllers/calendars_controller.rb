class CalendarsController < ApplicationController
    def index
        @calendars = Calendar.all
    end

    def new
        @calendar = Calendar.new
      end
    
      def create
        calendar = Calendar.new(calendar_params)
        if calendar.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def calendar_params
        params.require(:calendar).permit(:subject, :homework)
      end
end
