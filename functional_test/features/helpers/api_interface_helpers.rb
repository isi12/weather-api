
def get_ip_address
  url = "#{Settings.ip.base_url}#{Settings.ip.api_endpoint}"
  puts url
HTTParty.get(
  url,
  headers: { :accept => 'application/json', 'Content-Type' => 'application/json' }
)
end



def retrieve_location(ip_address)
  url = "#{Settings.location.base_url}/#{ip_address}?access_key=009636637cb48f813a23d806358cf167"
  puts url
  HTTParty.get(
    url,
    headers: { :accept => 'application/json', 'Content-Type' => 'application/json' }
  )
  end


def get_weather(city)
  url = "#{Settings.weather.base_url}#{Settings.weather.api_endpoint}q=#{city}&APPID=1ab9e891290404d4bfd1f54c239f5d86"
  puts url
  HTTParty.get(
    url,
    headers: { :accept => 'application/json', 'Content-Type' => 'application/json' }
  )
end