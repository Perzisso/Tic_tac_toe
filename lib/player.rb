class Player
# 2 attr_reader : nom et valeur X ou 0
attr_reader :name, :symbol

    # On règle son nom et sa valeur
    def initialize(name, symbol)
        @name = name
        @symbol = symbol
    end
    
end