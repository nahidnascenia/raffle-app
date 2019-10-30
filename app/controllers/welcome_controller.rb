class WelcomeController < ApplicationController
    def index
        @sign_up = SignUp.new
        @raffle_draws = RaffleDraw.all
    end
end
