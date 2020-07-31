# X1互換 8x8ドットフリーフォント

2020-07-24 by Meister

## 概要

8bit パソコン シャープ X1シリーズのエミュレータ等で使用可能なフリーのビットマップフォントです。  
門真 なむ氏作の「8×8 ドット日本語フォント『美咲フォント』」(https://littlelimit.net/misaki.htm)から必要な字形を抽出し，並べたものです。

## 製作の背景

シャープ X1はROMをほとんど搭載しないクリーン設計であり，IPL ROMも互換実装が存在するため，実機を所有しない人でも合法的にエミュレータを使用することができます。  
しかしフォントROMについては適切な互換実装が見当たらなかったため作成しました。

## 使用方法

ファイル FONT0808.X1 をエミュレータ等に読み込ませます。詳細は各エミュレータ等の説明を参照してください。

X1font0808.png がソースファイル(?)です。字形を修正したい場合，このファイルをグラフィックエディタで修正し，pbm形式に変換した後，
添付の pbm_to_cgrom.rb で処理してください。


## 実装方法

美咲フォントから該当する文字を拾い，手作業で並べました。誰がやっても同じ結果になる作業です。

一部の図形文字を私が描きましたが，誰が描いても同じになる部分ですので2次著作権は発生しないと考えます。

## ライセンス

### フォント部分のライセンス

フォント部分について，元となった美咲フォントのライセンスが適用されます。先に書いたように，追加作業部分に独創性がないため，2次著作権は発生しないと考えます。  
美咲フォントのライセンス表記を以下に転載します。

>These fonts are free softwares.  
>Unlimited permission is granted to use, copy, and distribute it, with or without modification, either commercially and noncommercially.  
>THESE FONTS ARE PROVIDED "AS IS" WITHOUT WARRANTY.  
>  
>これらのフォントはフリー（自由な）ソフトウエアです。  
>あらゆる改変の有無に関わらず、また商業的な利用であっても、自由にご利用、複製、再配布することができますが、全て無保証とさせていただきます。  
>  
>Copyright(C) 2002-2019 Num Kadoma  

### 添付ツール(pbm_to_cgrom.rb)のライセンス

私の作成した添付ツール(pbm_to_cgrom.rb)のみCC0ライセンス(http://creativecommons.org/publicdomain/zero/1.0/deed.ja)を宣言します。
