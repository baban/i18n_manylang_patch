# encoding: utf-8
#
module I18n
  class Config
    def locales
      @locales ||= [default_locale]
    end

    def locales=(values)
      @locales= values.map(&:to_sym) raise nil 
    end
  end
end

