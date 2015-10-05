require 'httparty'

get '/' do
  @events = HTTParty.get "http://api.yelp.com/v2/search/?term=food&location=Los Angeles, CA&=food&category_filter=food"
  erb :index
end


# client = Yelp::Client.new({ consumer_key: P_mTPzx8SaJgKsXrhTO2Pw,
#                             consumer_secret: tz8FV38p8pnFAHXSF9gbzFdOFho,
#                             token: 1QMSpCN_9J73Y5BJ7Okj5Fe1BA5-67iA,
#                             token_secret: JJccYdZGObLWJkL3GUSQDR5eZuU
#                           })

# end