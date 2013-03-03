# I18nManylangPatch

翻訳ファイルのに抜けがあっても、英語版の翻訳ファイルを再度見に行くように
I18nのgemに修正をかけます

## Installation

Add this line to your application's Gemfile:

    gem 'i18n_manylang_patch'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install i18n_manylang_patch

## Usage

通常のI18n gemでは、各言語の翻訳がすべて揃っていないと
翻訳に失敗した時にエラーメッセージが表示されます
これを防ぐために翻訳に失敗した場合は、英語の翻訳ファイルを見に行くロジックを追加しました　
英語版の翻訳ファイルさえ揃っていれば、他の言語ファイルは抜けがあっても最低限の処理はできます

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
