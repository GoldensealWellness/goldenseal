module ApplicationHelper
  def taxon_level(root_taxon, current_taxon)
    current_taxon.self_and_ancestors.include?(root_taxon) ? current_taxon.self_and_ancestors.count : 1
  end
  
  def my_taxons_tree(root_taxon, current_taxon)
      return '' if root_taxon.children.empty?
      content_tag :ul, :class => 'taxons-list' do
        root_taxon.children.map do |taxon|
          css_class = (current_taxon && current_taxon ==taxon) ? 'current' : nil
          content_tag :li do
            link_to(taxon.children.empty? ? taxon.name : taxon.name + " >", seo_url(taxon),
                    :class => css_class) +
            if current_taxon && current_taxon.self_and_ancestors.include?(taxon)
              my_taxons_tree(taxon, current_taxon)
            end
          end
        end.join("\n").html_safe
      end
    end
end
