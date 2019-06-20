module Services
  # custom exception class
  class NoValidValue < StandardError

  end
  # handle data requests 
  class QueryData
    def init

      # source feed name
      @uri = './data/eurofxref-hist-90d.json'
      @curr = ''
      @date = ''
      @base = 'EUR'

      path = File.join(
        File.dirname(File.dirname(File.absolute_path(__FILE__))), @uri
      )
      file = File.read(path)
      @data_hash = JSON.parse(file)
      
    end

    def search_provider(date, curr)
      # returns the value for currency key if matched
      #
      @date = date

      if curr != @base
      @curr = curr

        if @data_hash.dig(@date, @curr) != nil
        @data_hash.dig(@date, @curr)
        else

        p 'no value found for date -  error'
        raise NoValidValue.new()

        end

      # returns 1 if base frequency is given
      elsif curr == @base

        @curr = 1

      end

    end
  end
end
