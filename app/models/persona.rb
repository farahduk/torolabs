class Persona < ApplicationRecord
  validates :Nombre, presence: true,
                     length: { minimum: 3}

end
