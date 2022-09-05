# frozen_string_literal: true

class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
    render json: @contracts
  end

  def latest_contract
    @contract = Contract.last
    render json: @contract
  end

  def create
    @contract = Contract.new(request_id: params[:request_id], tx: params[:tx], from: params[:from],
                             time: params[:time], chain_id: params[:chain_id], contract_address: params[:contract_address], status: params[:status])
    render json: @contract
  end
end
