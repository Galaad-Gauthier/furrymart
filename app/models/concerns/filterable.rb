module Filterable
  extend ActiveSupport::Concern

  included do

    # Model.filter({ an_attribute: value, a_scope: "value_a,value_b" })
    # is equivalent to
    # Model.where(an_attribute: value).a_scope("value_a", "value_b")
   
    scope :filter, -> (filters) {
      scope = self.all
      (filters || {}).each do |attribute, value|
        next unless value.present?

        if self.filterable_attributes.include? attribute.to_s
          if scope.respond_to?(attribute, true)
            scope = scope.send(attribute, * value.split(','))
          else
            scope = scope.where(attribute => value)
          end
        else
          raise ActionController::BadRequest
        end
      end
      scope
    }
    
  end

  module ClassMethods
    
    attr_accessor :filterable_attributes
    
    def filterable *attributes
      self.filterable_attributes = attributes.map(&:to_s)
    end
  
  end

end
