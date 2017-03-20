# == Schema Information
#
# Table name: categories_styles
#
#  category_id :integer
#  created_at  :datetime         not null
#  id          :integer          not null, primary key
#  style_id    :integer
#  updated_at  :datetime         not null
#

class CategoryStyle < ApplicationRecord

### Model Config ###

  self.table_name = "categories_styles"

### Modules ###

### Constants ###

### Associations ###

  belongs_to :category
  belongs_to :style

### Macros ###

### Scopes ###

### Validations ###

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
