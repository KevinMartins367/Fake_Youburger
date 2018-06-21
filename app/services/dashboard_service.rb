class DashboardService

    def initialize(type)
      @type = type
    end
  
    def perform
      send("group_by_#{@type}")
    end
  
    private
  
      def group_by_category
        categories = Category.includes(:food)
        :json => categories, each_serializer: CategorySerializer
      end
  
  end