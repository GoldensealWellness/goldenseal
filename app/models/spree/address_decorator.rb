Spree::Address.class_eval do
  def printable
    if address2.present?
%Q{#{firstname} #{lastname}:
#{address1}
#{address2}
#{city}, #{state.abbr}, #{zipcode}}
    else
%Q{#{firstname} #{lastname}:
#{address1}
#{city}, #{state.abbr}, #{zipcode}}  
    end
  end
end
