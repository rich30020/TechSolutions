json.extract! prodotti, :id, :titolo, :descrizione, :prezzo, :created_at, :updated_at
json.url prodotti_url(prodotti, format: :json)
