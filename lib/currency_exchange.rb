require 'json'
require_relative 'services.rb'
require 'date'
module CurrencyExchange


  # Return the exchange rate between from_currency and to_currency on date as a float.
  # Raises an exception if unable to calculate requested rate.
  # Raises an exception if there is no rate for the date provided.

  def self.rate(date, from_currency, to_currency)

    date_given = date.strftime('%Y-%m-%d') # date input validation
    from_curr = from_currency
    to_curr = to_currency

    query = Services::QueryData.new
    query.init

    # get currency figures
    obj = query.search_provider(date_given,from_curr)

    obj1 = query.search_provider(date_given,to_curr)

    #call calc to calculate rates
    calc(obj,obj1)

  end

  def self.calc(obj,obj1)
  
    say_something = -> { obj1 / obj}
    say_something.call

  rescue StandardError => e
    puts 'An Error occurred - Cannot calculate '
    puts e.message

  end

end
