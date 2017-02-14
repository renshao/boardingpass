json.extract! boarding_pass, :id, :departure_airport_code, :arrival_airport_code, :flight_number, :departure_datetime, :created_at, :updated_at
json.url boarding_pass_url(boarding_pass, format: :json)