require "csv"

puts "Processador de Arquivos CSV"

file = File.read("./data/atelie-catalogo-produtos.csv")

csv = CSV.parse{ |io| io.read.encode("UTF-8", invalid: :replace, replace: "") }
csv.each do |row|
    puts row
end
#open("file.txt", "r") { |io| io.read.encode("UTF-8", invalid: :replace, replace: "") }