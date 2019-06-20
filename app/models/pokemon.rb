class Pokemon < ApplicationRecord
    self.inheritance_column = :_type_disabled 
    
    has_many :pokemon_teams

end
