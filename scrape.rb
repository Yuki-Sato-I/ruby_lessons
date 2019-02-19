require 'nokogiri'

# URLに簡単にアクセスできるようにするためのライブラリ
require 'open-uri'

#CSV出力をできるようにするためのライブラリ
#require 'csv'

url = "https://news.yahoo.co.jp/topics"

#文字コード
charset = nil

html = open(url) do |page|
  #文字コードを取得して
  charset = page.charset
  #ページを読む
  page.read
end

contents = Nokogiri::HTML.parse(html,nil,charset)

contents.css('div.list').css('')

puts contents
