class SignUpsController < ApplicationController
    def create
        @sign_up = SignUp.find_by(sign_up_params)
        if @sign_up.present?
            flash[:alert] = 'You already signed up for this raffle! Thank you'
        else
            SignUp.create(sign_up_params)
            win_percentage = (100.00 / SignUp.where(raffle_option_id: params[:sign_up][:raffle_option_id]).size).round(2)
            flash[:alert] = "Thanks for signing up! Your odds of winning are #{win_percentage}%!"
        end
        redirect_to root_path
    end

    private
    def sign_up_params
        params.require(:sign_up).permit(:email, :raffle_option_id)
    end
end
