require "csv"

puts "Processador de Arquivos CSV"

file = File.read("./data/atelie-catalogo-produtos.csv")
file.force_encoding(file).scrub!("")
csv = CSV.parse(file, headers: true)
file.each do |row|
    puts row.class
end
#open("file.txt", "r") { |io| io.read.encode("UTF-8", invalid: :replace, replace: "") }

#CSV.new('').encoding # => #<Encoding:UTF-8>