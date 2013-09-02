require 'open-uri'

namespace :nokogiri do
  desc "TODO"
  task :scrape => :environment do

doc = Nokogiri::HTML(open('http://www.mta.info/status/serviceStatus.txt').read)

line_index_number = 1
train = 2

    while line_index_number < 12
      name = doc.xpath("//subway//line[#{line_index_number}]//name")

      status = doc.xpath("//subway//line[#{line_index_number}]//status")

      text = doc.xpath("//subway//line[#{line_index_number}]//text")
      cleaned_text = Sanitize.clean(text.inner_text).gsub!(/\s+/, " ")

      date = doc.xpath("//subway//line[#{line_index_number}]//date")

      time = doc.xpath("//subway//line[#{line_index_number}]//time")

      train = Train.find(line_index_number)
      train.update(name: "#{name.inner_text}", status: "#{status.inner_text}", text: "#{cleaned_text}", date: "#{date.inner_text}", time: "#{time.inner_text}")
      line_index_number += 1
    end
  end
end