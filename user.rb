class User
  attr_accessor :token

  def initialize info
    @info = info
  end

  def info
    @info if token_valid?
  end

  def token_valid?
    # send request to facebook, return true if valid
  end
end
