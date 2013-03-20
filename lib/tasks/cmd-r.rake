require 'open-uri'

namespace :scrape do
  desc "Scrape all registered marks."
  task :all => :environment do
    Mark.find_each do |mark|
      doc = Nokogiri::HTML(open(mark.url))
      data = doc.css(mark.selector)
      lines = []
      data.each do |node|
        node.traverse do |element|
          lines << element.to_s
        end
      end
      lines = lines.join("\n")
      unless mark.content == lines
        mark.old_content = mark.content
        mark.content = lines
        mark.save
      end
    end
  end

  desc "Scrape only registered sites from active users."
  task :active => :environment do
    # Need to add a column to track recent activity.
  end
end
