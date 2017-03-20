module SanitizedFilterable
  extend ActiveSupport::Concern

  included do

    # Model.sanitized_filter(name: "toto-le_he&ro^s")
    # is equivalent to
    # Model.where(
    # "lower(regexp_replace(name, '[^[:alnum:]]', '', 'g')) = ?", 
    #  "toto-le_he&ro^s".downcase.gsub(/[^[:alnum:]]/,'')
    #  )
   
    scope :sanitized_filter, -> (filters) {      
      query_values = filters.values.map{ |v| v.downcase.gsub(/[^[:alnum:]]/,'') }

      query_string = 
        filters.keys.map{ |key| "lower(regexp_replace(#{key}, '[^[:alnum:]]', '', 'g')) = ?" }.join(" AND ")

      where(query_string, *query_values)
    }
    
  end

end



