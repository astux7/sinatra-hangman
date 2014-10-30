class SlackMan
  def initialize(payload, flag = nil)
    @payload = payload

    unless flag == :skip_authentication
      raise_error_if_not_valid
    end
  end

  private

  def raise_error_if_not_valid
    if !token
      raise SlackManError, "token is required"
    elsif !authenticated?
      raise SlackManError, "token is invalid"
    end
  end

  def authenticated?
    # hardcoded tokens are very bad!! Don't do this.
    token == "ajflXZhEaHFDwWa0oucaZ0L7"
  end

  def method_missing(name, *args, &block)
    @payload.fetch(name.to_sym, false)
  end
end

class SlackManError < StandardError; end