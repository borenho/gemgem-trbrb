class Thing < ActiveRecord::Base
  # Models only contain persistence configuration
  # No callbacks, no validation, no business logic
  has_many :comments
end
