# coding: Windows-31J

require "./lib/stock_list_maker"

# ØÁ¿ÌÁ¿Xgðìé
# g¢ûFruby bin\make_stock_list.rb file_name
# file_nameÍÈªÂBÈª·éÆ"tosho_list.txt"ÉÈé

slm = StockListMaker.new(:t)
slm.file_name = ARGV[0] || "tosho_list.txt"
puts slm.file_name
(1300..9999).each do |code|
  slm.get_stock_info(code)
end
slm.save_stock_list
