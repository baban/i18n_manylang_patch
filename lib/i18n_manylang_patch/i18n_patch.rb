# encoding: utf-8

module I18n
  class<< self
    alias :translate_old :translate
    def translate(*args)
      options  = args.last.is_a?(Hash) ? args.pop : {}
      key      = args.shift
      backend  = config.backend
      locale   = options.delete(:locale) || config.locale
      handling = options.delete(:throw) && :throw || options.delete(:raise) && :raise # TODO deprecate :raise

      raise I18n::ArgumentError if key.is_a?(String) && key.empty?
      if key.is_a?(Array)
        result = catch(:exception) do
          key.map { |k| backend.translate(locale, k, options) }
        end
      else
        locales = [locale,:en]
        result = -> {
          locales.map do |locale|
            catch(:exception) do
              ret = backend.translate(locale, key, options)
              return ret if ret.is_a?(String)
              ret
            end
          end.first
        }.call
      end 
      result.is_a?(MissingTranslation) ? handle_exception(handling, result, locale, key, options) : result
    end
  end
end

