module TranslationHelper
  def t(*args)
    I18n.t(*args)
  end
end

RSpec.configure do |config|
  config.include TranslationHelper
end
