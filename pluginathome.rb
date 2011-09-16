# -*- coding: utf-8 -*-#
# mikutterのpluginディレクトリ以下に配置すると~/.mikutter/plugins/以下の
# プラグインを読み込む

dir = File.expand_path("~/.mikutter/plugins")
if FileTest.directory?(dir)
    Dir.glob(dir + "/*.rb").each do |rb|
        require rb
    end
end
