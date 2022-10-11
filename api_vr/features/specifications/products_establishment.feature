#language: pt


@products_establishment
Funcionalidade: Products and establishment
    Validar retorno dos produtos e estabelecimentos

    @get_products_establishment
    Cenário: Validar json retornado pelo serviço
        Quando faço uma requisição GET para o serviço de produtos e estabelecimentos
        Então o serviço deve responder com 200
        E o JSON deve possuir a chave typeOfEstablishment