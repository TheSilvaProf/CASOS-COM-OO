class CategoryFile
    attr_reader :category_name
    def initialize(category_name)
        @category_name = category_name
    end
    def add_expense()
        category_file_path = "./categories/#{expense["category"]}.csv"
        category_file = File.open(category_file_path, "a+")
        if File.empty?(category_file)
            category_file.puts csv.headers.join(",")
        end
        category_file.write row
        category_file.close
    end
    
    
end