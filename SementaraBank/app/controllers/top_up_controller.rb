class TopUpController < ApplicationController

  before_action :set_account

  def index
  end

  def execute
    @account.top_up_balance(params[:amount])
    # Account.top_up_dbtx(@account, params[:amount])
  end

protected

  def set_account
    @account = Account.find_default
  end
end
