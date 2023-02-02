class BoardCases
# Classe avec 2 attr_accessor, valeur en string (X ou 0, ou vide), ainsi que sont identifiant de case
attr_accessor :value, :case_number
    # Doit régler sa valeur, ainsi que son numéro de case
    def initialize(case_number)
        @value = ""
        @case_number = case_number
    end
end