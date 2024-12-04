class Address < ApplicationRecord
  belongs_to :client

  # Scope para obtener la dirección activa
  scope :active, -> { where(status: true) }
  
  # Validación para garantizar que solo una dirección esté activa por tipo
  validates :status, uniqueness: { scope: [:client_id, :address_type], message: "Solo puede haber una dirección activa de este tipo para el cliente" }, if: :status?
end
