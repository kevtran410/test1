class GetDataService
  require 'net/http'

  def self.perform url
    uri = URI.parse url
    http = Net::HTTP.new(uri.host, uri.port)
    http.read_timeout = 100
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new uri.request_uri, {"Content-Type" => "application/json"}
    response = http.request request

    return false unless response.code == "200"
    JSON.parse(response.body)
  end
end
