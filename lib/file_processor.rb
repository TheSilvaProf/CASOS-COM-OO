class FileProcessor
    attr_reader :file_path
    def initialize(file_path)
        @file_path = file_path
    end
    def process()
        file = File.read(file_path)
        #file.force_encoding(file).scrub!("") Forcar utf-8
        csv = CSV.parse(file, headers: true)
        
        csv.each do |row|
            expense = row.to_h

        end
    end
    
end