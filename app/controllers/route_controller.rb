class RouteController < ActionController::Base

  def travel
    routing_agent = Everoute.new
    (@route, @pretty_route) = routing_agent.find_tradehubs(params[:system], params[:hisec]) if params[:system]
    render :layout => 'application'
  end

    
end