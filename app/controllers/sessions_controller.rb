class SessionsController < ApplicationController


      def create
        user = User.find_by_email(params[:user][:email])
        if user && user.authenticate(params[:user][:password])
          session[:user_id] = user.id
          redirect_to '/sources'
        else
          puts user.errors.messages
          redirect_to '/login'
        end
      end

      def destroy
        session[:user_id] = nil
        redirect_to '/'
      end

    end
