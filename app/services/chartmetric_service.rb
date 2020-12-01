class ChartmetricService
  def initialize(spotify_id)
    @spotify_id = spotify_id
  end


  def call
    response = HTTParty.get("https://api.chartmetric.com/api/artist/#{@spotify_id}/where-people-listen?since=2019-11-01&until=2019-11-30",
    headers: {"Authorization" => "Bearer #{refresh_token}"})
    return response["obj"]
  end

private

  def refresh_token
    response = HTTParty.post('https://api.chartmetric.com/api/token',
      headers: {'Content-Type' => 'application/json'},
      body: {'refreshtoken' => ENV["CHARTMETRIC_API_TOKEN"]}.to_json)
    return response["token"]
  end
end
