# frozen_string_literal: true

class NftsController < ApplicationController
  def index
    @nfts = Nft.all
    render json: @nfts
  end

  def latest_contract
    @nft = Nft.last
    render json: @nft
  end

  def create
    @nft = Nft.create(request_id: params[:request_id], tx: params[:tx], from: params[:from],
                      time: params[:time], chain_id: params[:chain_id], status: params[:status])
    render json: @nft
  end
end
