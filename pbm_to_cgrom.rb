#!/usr/bin/env ruby
#
# pbm_to_cgrom.rb
# PBM形式の画像からX1エミュレータ用のフォントファイルを生成する
#
# 2020-07-24 programed by NAKAUE,T (Meister)
#
# These codes are licensed under CC0.
# http://creativecommons.org/publicdomain/zero/1.0/deed.ja
#
# 使用方法： gm convert X1font.png -quality 0 pbm:- | ruby pbm_to_cgrom.rb 
#

puts 'PBM image -> Character Generator ROM data'

raise 'FormatError' if ARGF.gets.strip != 'P1'

case ARGF.gets.strip
when '128 128'
    mode = :FNT0808
    output_name = 'FNT0808.X1'
    x,y,n = 128,128,8
else
    raise 'FormatError'
end

puts "file name = #{output_name}"

src_data = [ARGF.read.gsub(/[^01]/,'')].pack('B*').each_byte.to_a
data = src_data.each_slice(x / 8).each_slice(n).map(&:transpose).flatten.pack('C*')

open(output_name,'wb') {|ofs| ofs.write(data)}

puts 'ok.'
