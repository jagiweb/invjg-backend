class AdminsController < ApplicationController

    def admin_signin
        admin = Admin.find_by(username: params[:username])
        if admin && admin.authenticate(params[:password])
            render json: {token: generate_token({ id: admin.id },), admin: admin}
        else
            render json: {message: false}
        end
    end

    def validate
        admin = get_admin
        if admin
            render json: {token: generate_token({id: admin.id}), admin: admin, admin_id: admin.id}
        else
            render json: {message: "You are not authorized"}
        end
    end

end