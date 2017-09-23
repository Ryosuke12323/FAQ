require 'csv'
require 'nkf'

class Qa < ActiveRecord::Base

  def self.to_csv
    headers = %w(question answer category_id create_user_id update_user_id created_at )
    csv_data = CSV.generate(headers: headers, write_headers: true, force_quotes: true) do |csv|
      all.each do |record|
        csv << record.attributes.values_at(*headers)
      end
    end
  end

end
