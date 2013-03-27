require "rest_client"

class Crest

  def initialize(url)
    @base_url = url
  end

  def await(barrier, timeout="10000")
    barrier_url = "#{@base_url}/barriers/#{barrier}"
    RestClient.get(barrier_url, {:params => {:t => timeout}}) {|response, request, result|
      case response.code
      when 200
        p "Barrier Met!"
        response
      when 408
        raise "Broken Barrier - Request Timed Out"
      else
        response
      end
    }
  end

end
