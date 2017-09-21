require 'csv'

class CsvImport
  def self.import
    if File.exist?('lib/faq_sample2.csv') == true
      CSV.foreach('lib/faq_sample2.csv', headers: true).each do |row|
        Qa.find_or_create_by(row.to_hash)
        # binding.pry
      end
    else
      puts "not exists"
    end
  end
end
