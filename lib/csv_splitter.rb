require "sinatra"
require "zipruby"
require "tempfile"
require "fileutils"
require "csv_splitter/version"
require "csv_splitter/csv_splitter_app"
require "csv_splitter/file_parse"
require "csv_splitter/downloader"

module CsvSplitter
  class Error < StandardError; end

  class Split
    class << self
      def run
        CsvSplitterApp.run! host: "localhost", port: 8000
      end
    end
  end
end
