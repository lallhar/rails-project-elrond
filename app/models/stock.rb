class Stock < ApplicationRecord

	def self.new_from_lookup(ticker_symbol)
		h = StockQuote::Stock.quote(ticker_symbol)	
		new(name: h.name, ticker: h.symbol, last_price: h.l)
	end

end
