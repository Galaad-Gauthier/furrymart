module Sortable
  extend ActiveSupport::Concern

  included do

    # Model.sort_with("attribute_a,+attribute_b,-attribute_c")
    # is equivalent to
    # Model.order(attribute_a).order(attribute_b: :asc).order(attribute_c: :desc)

    scope :sort_with, -> (sort) {
      scope = self.all

      String(sort).split(',').each do |attribute|
        
        first_char = attribute[0]
        direction = :asc

        if first_char == '-'
          direction = :desc
          attribute = attribute[1..-1]
        elsif first_char == '+'
          attribute = attribute[1..-1]
        end
        
        if self.sortable_attributes.include? attribute
          scope = scope.order(attribute => direction)
        else
          raise ActionController::BadRequest
        end
      
      end
      scope
    }

  end

  module ClassMethods
    
    attr_accessor :sortable_attributes
    
    def sortable *attributes
      self.sortable_attributes = attributes.map(&:to_s)
    end

  end

end
