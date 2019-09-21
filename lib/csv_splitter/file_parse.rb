require 'csv'

module CsvSplitter
  class FileParse
    attr_reader :content, :data

    def initialize(content_file)
      @content = content_file
    end

    def parse
      @data ||= CSV.parse(content)
    end
  end
end
