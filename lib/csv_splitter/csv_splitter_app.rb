module CsvSplitter
  class CsvSplitterApp < Sinatra::Base

    get '/' do
      erb :hello
    end

    post '/' do
      file = params[:file][:tempfile]
      input = params[:size]
      file = Downloader.new(FileParse.new(file).parse).download(input.to_i)

      erb :hello
      download_every_file(file)
    end

    private

    def download_every_file(name_file)
      zipfile = Tempfile.new('downloader.zip')
      Zip::Archive.open(zipfile.path, Zip::CREATE) do |zip|
        name_file.each do |file|
          zip.add_file file
        end
      end

      send_file(zipfile, :disposition => 'attachment')
    end
  end
end
