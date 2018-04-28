json.extract! reserva, :id, :data_inicial, :quilometragem_inicial, :nivel_tanque, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
