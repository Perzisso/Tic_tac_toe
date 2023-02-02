class BoardCases
# Classe avec 2 attr_accessor, valeur en string (X ou 0, ou vide), ainsi que sont identifiant de case
attr_accessor :case_value, :case_id
    # Doit régler sa valeur, ainsi que son numéro de case
    def initialize(case_value, case_id)
      @case_value = case_value
      @case_id = case_id

    end
end