BabaScript = require "../babascript"
baba = new BabaScript("takumibaba")
yamada = new BabaScript("yamada")
# baba.進捗どうですか {format: "list", list: ["hoge", "fuga", "sore", "are", "foo", "bar"]}, (result)->
#   console.log result

#書類整理
# お金の精算系
baba.書類の種類はなんですか {format: "list", list:["領収書", "講義資料", "研究費申請書類", "広告", "その他"]}, (type)->
  switch type
    when "領収書"
      baba.書類棚のA番の領収書ファイルに入れておいてください {}, (result)->
        console.log "次の書類整理"
    when "講義資料"
      baba.書類棚のC番に積んでおいてください {}, (result)->
        console.log "次の書類整理"
    when "研究費申請書類"
      console.log "??"
      baba.締切は1ヶ月以内ですか {}, (result)->
        if result is "true"
          baba.あと何日ですか {format: "int"}, (i)->
            if i < 10
              baba.至急連絡してください()
            else
              baba.山田の机の上にわかりやすく配置しておいてください {}, ()->
            console.log "次の書類整理"
        else
          baba.書類棚のB番に積んでおいてください {}, ()->
            console.log "次の書類整理"
    when "広告"
      baba.捨ててください {}, (result)->
        console.log "次の書類整理"
    else
      baba.書類のタイトルは何ですか {format: "string"}, (name)->
        baba."" {}, ()->
      # baba.山田くんに聞いてください {}, ()->
      #   console.log "山田くんから教えてもらったら次の書類整理"