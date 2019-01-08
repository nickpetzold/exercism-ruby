module Bob
  def self.hey(message)
    return 'Calm down, I know what I\'m doing!' if yell_quest?(message)
    return 'Fine. Be that way!' if silence?(message)
    return 'Whoa, chill out!'   if yelling?(message)
    return 'Sure.'              if question?(message)
    'Whatever.'
  end

  private

  def self.yell_quest?(message)
    message !~ /[a-z]/ && message =~ /\?\s*\z/
  end

  def self.silence?(message)
    message =~ /[\A\s*\z]/
  end

  def self.yelling?(message)
    message !~ /[a-z]/
  end

  def self.question?(message)
    message =~ /\?\s*\z/
  end
end