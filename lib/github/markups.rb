GitHub::Markup.instance_eval do
  markup(:markdown, /md|mkdn?|markdown/) do |content|
    Markdown.new(content).to_html
  end

  markup(:redcloth, /textile/) do |content|
    RedCloth.new(content).to_html
  end
end