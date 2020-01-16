#ruby controller code note

before_action :method, only: [:edit, :update, :show, :destory]

def method_name    
    render json: { message: "test" }
    render plain: "test" 
end