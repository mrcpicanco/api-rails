class EstadosController < ApplicationController
  def index
    estados = [
      {nome: "Amapá", uf: "AP"},
      {nome: "Rio de Janeiro", uf: "RJ"},
      {nome: "São Paulo", uf: "SP"},
      {nome: "Belo Horizonte", uf: "BH"},
      {nome: "Santa Catarina", uf: "SC"}
    ]

    if params["uf"].present?
      estados = estados.select{|e| e[:uf].downcase == params["uf"].downcase}
    end
    render json: estados, status: 200

  end

    def listar_cidades
      cidades = [
        {nome: "São Paulo", uf: "SP"},
        {nome: "Ubatuba", uf: "SP"},
        {nome: "Pernambuco", uf: "REC"}, 
        {nome: "Macapá", uf: "MCP"},
        {nome: "Cabo Frio", uf: "RJ"},
      ]
   
        if params["uf"].present?
          cidades = cidades.select{|e| e[:uf].downcase == params["uf"].downcase}
        end
        
    render json: cidades, status: 200
  end


  def listar_municipios
    municipios = [
      {nome: "Macapá", uf: "AP"},
      {nome: "Santana", uf: "AP"},
      {nome: "Porto Grande", uf:"AP"},
      {nome: "Santo André", uf: "SP"},
      {nome: "Arcovede", uf: "PE"},

    ]

    if params["uf"].present?
      municipios = municipios.select{|e| e[:uf].downcase == params["uf"].downcase}
    end

    render json: municipios, status: 200
  end
  

end
