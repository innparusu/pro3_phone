class Late < ActiveRecord::Base
    require 'xmlrpc/client'
    belongs_to :lecture
    belongs_to :user
    after_save :post_wp

  def post_wp
    student         = User.find(self.user_id)
    st_number       = student.number
    st_name         = student.name
    #st_password    = student.password 

    #lecture        = Lecture.find(self.lecture_id)
    #lecture_name   = lecture.name 
    #teacher_name    = lecture.teacher
    #count          = lecture.lecture_count

    #late           = Late.find(self.late_id)
    #late_bool      = late.late

    lecture_name    = 'アルゴリズムとデータ構造'
    teacher_name    = 'nkmr'
    count           = 7

    # ユーザ情報
    user     = 'observer'
    password = 'hirotanaka1122'
    
    # 投稿区分 ( 0 : 下書き登録, 1 : 即時投稿 )
    publish = 1    

    # 記事タイトル
    title  = "#{teacher_name}先生ごめんなさい"

    # 投稿内容 ( タグも使用可 )
    description =  "私," + st_number + "\s" + st_name + "は\n"
    description << lecture_name + "の講義を\n"
   
    late_bool = 'False' 

    if late_bool == 'False' then
      description << "欠席しました.\n"
    else
      description << "遅刻しました.\n"
    end
    
    description << "次は気を付けます\n"
    description << "合計欠席回数 \s  #{count} \s 回\n"

    # カテゴリ ( 配列で設定 )
    category = [ lecture_name ]

    # タグ ( 配列で設定 )
    keywords = [ lecture_name ]

    # インスタンス化
    client = XMLRPC::Client.new( '133.13.60.164', '/wordpress/xmlrpc.php')

    # 投稿情報構造体 ( ハッシュで設定 )
    struct = {
      'title'       => title,
      'description' => description,
      'categories'  => category,
      'mt_keywords' => keywords
    }

  # 投稿の実行
  # ( "metaWeblog.newPost" というプロシージャを
  #   ブログＩＤ、ユーザ名、ユーザパスワード、投稿情報構造体、投稿区分
  #   の引数を付けてコールすると、ポストID が返る )
  id = client.call(
    "metaWeblog.newPost",
    1,
    user,
    password,
    struct,
    publish
  )
  
  puts "PostID: #{id}"

  end
end
