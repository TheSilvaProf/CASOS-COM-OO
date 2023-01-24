require "csv"
require_relative "./lib/file_processor"

puts "Processador de Arquivos CSV"

FileProcessor.new("./data/meu.csv").process()
