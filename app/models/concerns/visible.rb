module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['Público', 'Privado', 'Arquivado']

  included do
    validates :status, inclusion: { in: VALID_STATUSES }
  end

  class_methods do
    def public_count
      where(status: 'Público').count
    end
  end

  def archived?
    status == 'Arquivado'
  end
end
