class TimesController < ApplicationController
  def index
    
    times = [
      {nome: "Flamengo", sigla: "FLA"},
      {nome: "Palmeiras", sigla: "PAL"},
      {nome: "São Paulo", sigla: "SAO"},
      {nome: "Botafogo", sigla: "BOT"},
    ]
    if params["sigla"].present?
      times = times.select{|e| e[:sigla].downcase == params["sigla"].downcase }
    end

    render json: times, status: 200
  end
end
