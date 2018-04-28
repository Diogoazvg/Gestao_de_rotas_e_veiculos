json.extract! veiculo, :id, :marca, :modelo, :ano, :placa, :tipo, :categoria_cnh, :status, :quilometragem, :combustivel, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)
