class SignUpsController < ApplicationController
    def create
        @sign_up = SignUp.find_by(sign_up_params)
        if @sign_up.present?
            flash[:alert] = 'You already signed up for this raffle! Thank you'
        else
            SignUp.create(sign_up_params)
            flash[:alert] = "Thanks for signing up! Your odds of winning are #{SignUp.calculate_win_percent(params[:sign_up][:raffle_draw_id])}%!"
        end
        redirect_to root_path
    end

    private

    def sign_up_params
        params.require(:sign_up).permit(:email, :raffle_draw_id)
    end
end
