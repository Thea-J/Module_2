class BankAccountsController < ApplicationController
    before_action :set_bank_account, only: [:show, :edit, :update]
    def index
        @bank_accounts = BankAccount.all
    end

    def show
    end

    def new
        @bank_account = BankAccount.new
    end

    def create
        @bank_account = BankAccount.create(bank_account_params)
        redirect_to @bank_account
    end

    def edit
    end

    def update
        @bank_account.update(bank_account_params)
        redirect_to @bank_account
    end

    private 

    def bank_account_params
        params.require(:bank_account).permit!
    end

    def set_bank_account 
        @bank_account = BankAccount.find(params[:id])
    end 
end
