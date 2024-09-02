require 'csv'

class ReportsController < ApplicationController
  def index
    # csv_config = { col_sep: ',', force_quotes: true }
    
    # csv_data = CSV.generate(csv_config) do |csv|
    #   csv << ["お客様ID", "ポイント", "説明"]

    #   csv << ["1(お客様IDを設定してください）", "100", "売上連動ポイントの場合、１に設定してください"]
    #   csv << ["2", "10", "非売上連動ポイントの場合、0に設定してください"]
    # end

    csv_data = "\"お客様ID\",\"ポイント\",\"説明\"\n\"1(お客様IDを設定してください）\",\"100\",\"売上連動ポイントの場合、１に設定してください\"\n\"2\",\"10\",\"非売上連動ポイントの場合、0に設定してください\"\n"
    send_data csv_data, filename: "report.csv", type: 'text/csv; charset=utf-8'
  end
end
