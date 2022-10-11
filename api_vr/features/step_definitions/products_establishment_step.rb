Quando('faço uma requisição GET para o serviço de produtos e estabelecimentos') do
    #realizando requisição
    @request_products_establishment = products_establishment.get_products_establishment
  end
  
  Então('o serviço deve responder com {int}') do |status_code|
    #validando o status code retornado é 200
    expect(@request_products_establishment.code).to eq status_code
  end
  
  Então('o JSON deve possuir a chave typeOfEstablishment') do
    #Validando que o JSON retornado pelo serviço possui a chave "typeOfEstablishment"
    response = JSON.parse(@request_products_establishment.body)
    expect(response).to have_key("typeOfEstablishment")
    #Gerando o print aleatorio de um estabelecimento
    print response["typeOfEstablishment"].sample
  end
  