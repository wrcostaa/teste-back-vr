module Rest
    class ProductsEstablishment

        include HTTParty ## Include para trazer os métodos HTTParty para dentro da classe

        base_uri CONFIG['base_uri']

        # criando o método para realizar o GET
        def get_products_establishment
            self.class.get('/', verify: false)
        end
    end
end