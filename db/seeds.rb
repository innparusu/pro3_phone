Period.destroy_all
Room.destroy_all
Lecture.destroy_all


Period.create!(period_number: 1,
                begin_time: Time.mktime(2012,12,24,8,30),
                end_time: Time.mktime(2012,12,24,10,00)
              )
Period.create!(period_number: 2,
                begin_time: Time.mktime(2012,12,24,10,20),
                end_time: Time.mktime(2012,12,24,11,50)
              ) 
Period.create!(period_number: 3,
                begin_time: Time.mktime(2012,12,24,12,50),
                end_time: Time.mktime(2012,12,24,14,20)
              )
Period.create!(period_number: 4,
                begin_time: Time.mktime(2012,12,24,14,40),
                end_time: Time.mktime(2012,12,24,16,10)
              )
Period.create!(period_number: 5,
                begin_time: Time.mktime(2012,12,24,16,20),
                end_time: Time.mktime(2012,12,24,17,50)
              )


Room.create!(name: "工1-321", latitude:26.253330, longitude:127.766570)
Room.create!(name: "工1-322", latitude:26.253470, longitude:127.766430)
Room.create!(name: "工2-313", latitude:26.253270, longitude:127.765730)

period = Period.find_by(period_number: 5)#５限の講義を設定
period.lectures.create!(name:"プログラミング３",
        teacher: "河野真治",
        room_id: Room.find_by(name: "工1-321").id,
        day: "水曜日",
        lecture_count: 7 #最新の授業回数
	      )

period.lectures.create!(name:"ソフトウェア演習Ⅰ",
         teacher: "山田考治",
         room_id: Room.find_by(name: "工1-321").id,
         day: "木曜日",
         lecture_count: 7 
          )

period = Period.find_by(period_number: 4)#４限の講義を設定
period.lectures.create!(name:"情報セキュリティ",
        teacher: "谷口祐治",
        room_id: Room.find_by(name: "工1-321").id,
        day: "水曜日",
        lecture_count: 7 
	      )

period.lectures.create!(name:"情報工学実験Ⅲ",
         teacher: "宮里智樹",
         room_id: Room.find_by(name: "工1-322").id,
         day: "木曜日",
         lecture_count: 7 
          )

period.lectures.create!(name:"キャリア実践",
         teacher: "遠藤聡志",
         room_id: Room.find_by(name: "工1-322").id,
         day: "火曜日",
         lecture_count: 7 
          )

period.lectures.create!(name:"コンピュータシステム",
         teacher: "姜東植",
         room_id: Room.find_by(name: "工1-322").id,
         day: "月曜日",
         lecture_count: 7 
          )


period = Period.find_by(period_number: 3)#３限の講義を設定
period.lectures.create!(name:"デジタル信号処理",
        teacher: "アシャリフ・モハマッド",
        room_id: Room.find_by(name: "工1-321").id,
        day: "金曜日",
        lecture_count: 7 
	      )

period.lectures.create!(name:"ヒューマンインターフェース",
         teacher:"舟木慶一",
         room_id: Room.find_by(name: "工2-313").id,
         day:"木曜日",
         lecture_count: 7 
          )

period.lectures.create!(name:"情報英語Ⅱ",
         teacher:"比嘉健伸",
         room_id:Room.find_by(name: "工1-322").id,
         day:"水曜日",
         lecture_count: 7 
          )

period.lectures.create!(name:"ソフトウェア工学",
         teacher:"河野真治",
         room_id:Room.find_by(name: "工1-321").id,
         day:"火曜日",
         lecture_count: 7 
          )

period.lectures.create!(name:"ディジタルシステム設計",
         teacher: "和田知久",
         room_id: Room.find_by(name: "工1-321").id,
         day: "月曜日",
         lecture_count: 7 
          )

period = Period.find_by(period_number: 2)#２限の講義を設定
period.lectures.create!(name:"数学基礎演習Ⅰ",
        teacher: "宮城隼夫",
        room_id: Room.find_by(name: "工1-322").id,
        day: "金曜日",
        lecture_count: 7 
	      )

period.lectures.create!(name:"アルゴリズム論",
         teacher: "名嘉村盛和",
         room_id: Room.find_by(name: "工1-321").id,
         day: "木曜日",
         lecture_count: 7 
          )

period.lectures.create!(name:"数理計画とアルゴリズム",
         teacher: "長山格",
         room_id: Room.find_by(name: "工1-321").id,
         day: "水曜日",
         lecture_count: 7 ,
          )

period.lectures.create!(name:"認知工学",
         teacher: "高良富夫",
         room_id: Room.find_by(name: "工1-321").id,
         day: "火曜日",
         lecture_count: 7 
          )


period = Period.find_by(period_number: 1)#１限の講義を設定
period.lectures.create!(name:"情報ネットワークⅠ",
        teacher: "名嘉村盛和",
        room_id: Room.find_by(name: "工1-322").id,
        day: "金曜日",
        lecture_count: 7 
	      )

period.lectures.create!(name:"ディジタル回路",
         teacher: "和田知久",
         room_id: Room.find_by(name: "工1-322").id,
         day: "木曜日",
         lecture_count: 7 
          )

period.lectures.create!(name:"並列分散処理",
         teacher: "名嘉村盛和",
         room_id: Room.find_by(name: "工1-321").id,
         day: "水曜日",
         lecture_count: 7 
          )

period.lectures.create!(name:"確率及び統計",
         teacher: "岡崎威生",
         room_id: Room.find_by(name: "工2-313").id,
         day: "火曜日",
         lecture_count: 7 
          )

period.lectures.create!(name:"ソフトコンピューティング",
         teacher: "遠藤聡志",
         room_id: Room.find_by(name: "工1-321").id,
         day: "月曜日",
         lecture_count: 7 
          )
