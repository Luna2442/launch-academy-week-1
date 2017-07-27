class UserAccountValidator
  attr_reader :email, :username, :name

  class ValidatorError < StandardError
  end

  def initialize(hash)

    if hash[:email].nil?
      raise ValidatorError, "Email is missing."
    elsif !hash[:email].include?('@')
      raise ValidatorError, "Not a valid email address."
    else
      @email = hash[:email]
    end

    if hash[:username].nil?
      raise ValidatorError, "Please provide a username."
    else
      @username = hash[:username]
    end

    @name = hash[:name]

  end

end
