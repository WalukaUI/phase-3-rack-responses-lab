require 'time'

class Application

def call(env)
    resp = Rack::Response.new

    # time = Time.new.strftime("%H")
    time =Time.now
  
    if time.hour <= 12
        resp.write "Good Morning!" 
    else
         resp.write "Good Afternoon!"
    end
   
    resp.finish    
end
end
