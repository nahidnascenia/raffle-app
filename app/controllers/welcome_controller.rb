class WelcomeController < ApplicationController
    def index
        @sign_up = SignUp.new
        @raffle_options = RaffleOption.all
    end
end
