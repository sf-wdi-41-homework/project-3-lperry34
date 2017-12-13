class SessionsController < ApplicationController


      def create
        user = User.find_by_email(params[:user][:email])
        if user && user.authenticate(params[:user][:password])
          session[:user_id] = user.id
          redirect_to '/sources'
        else
          flash[:notice] = "Wrong email or password"
          redirect_to '/login'
        end
      end

      def destroy
        session[:user_id] = nil
        redirect_to '/'
      end

    end
