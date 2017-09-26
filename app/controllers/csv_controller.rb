require 'csv'

class CsvController < ApplicationController
  def import
    csvImport(params[:file])
    redirect_to :root, notice: "ファイルをインポートしました。"
  end

  private
  def csvImport(file)
    Qa.delete_all
    Qa.connection.execute("ALTER TABLE qas AUTO_INCREMENT = 1")
    CSV.foreach(file.path, headers: true) do |row|
      qas = Qa.new
      qas.attributes = row.to_hash.slice(*updatable_attributes)
      qas.save!
    end
  end

  def updatable_attributes
    ["question", "answer", "category_id", "create_user_id", "update_user_id", "created_at", "updated_at"]
  end
end
