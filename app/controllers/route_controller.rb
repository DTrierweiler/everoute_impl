class RouteController < ActionController::Base

  def travel
    routing_agent = Everoute.new
    (@route, @pretty_route) = routing_agent.find_tradehubs(params[:System], params[:hisec]) if params[:System]
    render :layout => 'application'
  end

    
end