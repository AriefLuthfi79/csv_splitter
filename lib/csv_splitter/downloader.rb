module CsvSplitter
  class Downloader
    attr_reader :data, :header

    def initialize(data_arr)
      @data = data_arr
      @header = data_arr.shift
    end

    def download(size)
      target_file = "/tmp/"
      result = grouping(size)
      name_file = []

      size.times do |iterate|
        name_file << "#{target_file}#{iterate}.csv"
        File.open("/tmp/#{iterate}.csv", "w") do |f|
          f.puts header.join(", ").strip
          result[iterate].size.times do |i|
            f.puts result[iterate][i].join ", "
          end
        end
      end

      name_file
    end

    private

    # Action Support like method (:in_group)
    def grouping(number)
      _size = data.size / number
      lefts = data.size % number

      groups = []
      start = 0
      number.times do |index|
        length = _size + (lefts > 0 && lefts > index ? 1 : 0)
        groups << data.slice(start, length)
        start += length
      end

      groups
    end
  end
end
