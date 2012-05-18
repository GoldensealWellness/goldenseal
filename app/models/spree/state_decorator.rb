Spree::State.class_eval do
  default_scope :order => 'name ASC'
end
