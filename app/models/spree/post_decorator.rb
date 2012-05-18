Spree::Post.class_eval do
  default_scope :order => 'posted_at DESC'
end
