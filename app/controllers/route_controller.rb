class RouteController < ActionController::Base

  def travel
    routing_agent = Everoute.new
    @route = routing_agent.find_tradehubs(params[:System]) if params[:System]
  end

    
end