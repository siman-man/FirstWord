# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Question1
q1 = Question.create( text: '相手はどの程度の知り合い?', category: 'who' )

Answer.create( question_id: q1.id, order: 1, text: '友人' )
Answer.create( question_id: q1.id, order: 2, text: '挨拶程度の人' )
Answer.create( question_id: q1.id, order: 3, text: '顔は見たことある人' )
Answer.create( question_id: q1.id, order: 4, text: '知らない人' )

# Question2
q2 = Question.create( text: '今日の天気は?', category: 'weather' )

Answer.create( question_id: q2.id, order: 1, text: '晴れ' )
Answer.create( question_id: q2.id, order: 2, text: '曇り' )
Answer.create( question_id: q2.id, order: 3, text: '雨' )
Answer.create( question_id: q2.id, order: 4, text: '雪' )

# Question3
q3 = Question.create( text: '現在の時間帯は?', category: 'time' )

Answer.create( question_id: q3.id, order: 1, text: '朝' )
Answer.create( question_id: q3.id, order: 2, text: '昼' )
Answer.create( question_id: q3.id, order: 3, text: '夕方' )
Answer.create( question_id: q3.id, order: 4, text: '夜' )

# Question4
q4 = Question.create( text: 'どのSNSをよく使いますか?', category: 'like' )
Answer.create( question_id: q4.id, order: 1, text: 'Twitter' )
Answer.create( question_id: q4.id, order: 2, text: 'Facebook' )
Answer.create( question_id: q4.id, order: 3, text: 'LINE' )
Answer.create( question_id: q4.id, order: 4, text: 'mixi' )

# Question5
q5 = Question.create( text: '好きな日本列島の島は?', category: 'like' )
Answer.create( question_id: q5.id, order: 1, text: '北海道' )
Answer.create( question_id: q5.id, order: 2, text: '本州' )
Answer.create( question_id: q5.id, order: 3, text: '四国' )
Answer.create( question_id: q5.id, order: 4, text: '九州' )

# Question6
q6 = Question.create( text: '秋といえば?', category: 'like' )
Answer.create( question_id: q6.id, order: 1, text: '睡眠' )
Answer.create( question_id: q6.id, order: 2, text: '食欲' )
Answer.create( question_id: q6.id, order: 3, text: 'スポーツ' )
Answer.create( question_id: q6.id, order: 4, text: '読書' )

# Question7
q7 = Question.create( text: '今の季節は?', category: 'season' )
Answer.create( question_id: q7.id, order: 1, text: '春' )
Answer.create( question_id: q7.id, order: 2, text: '夏' )
Answer.create( question_id: q7.id, order: 3, text: '秋' )
Answer.create( question_id: q7.id, order: 4, text: '冬' )

# Question8
q8 = Question.create( text: '特技は何ですか?', category: 'boast')
Answer.create( question_id: q8.id, order: 1, text: '勉強' )
Answer.create( question_id: q8.id, order: 2, text: 'スポーツ' )
Answer.create( question_id: q8.id, order: 3, text: '昼寝' )
Answer.create( question_id: q8.id, order: 4, text: '特技なし' )

# Question9
q9 = Question.create( text: '好きな食べ物は?', category: 'like')
Answer.create( question_id: q9.id, order: 1, text: '和食' )
Answer.create( question_id: q9.id, order: 2, text: '中華' )
Answer.create( question_id: q9.id, order: 3, text: '洋食' )
Answer.create( question_id: q9.id, order: 4, text: 'ファーストフード' )

# Question10
q10 = Question.create( text: '行ってみたい所は', category: 'place')
Answer.create( question_id: q10.id, order: 1, text: '海が綺麗な所' )
Answer.create( question_id: q10.id, order: 2, text: '寒い所' )
Answer.create( question_id: q10.id, order: 3, text: '熱い所' )
Answer.create( question_id: q10.id, order: 4, text: '砂漠' )



# Word List
Word.create(text: 'どんな**が好きですか?', category: 'like')
Word.create(text: '**好きそうですね', category: 'like')
Word.create(text: '私も**好きなんですよ', category: 'like')
Word.create(text: '趣味は**でしょ?', category: 'like')
Word.create(text: '**がやっぱ好きやねん', category: 'like')
Word.create(text: '私、**の名人なんですよ', category: 'boast')
Word.create(text: '**に行ったことあります?', category: 'place')
Word.create(text: '私、あなたのこと**だと思っていたんですよ', category: 'who')
Word.create(text: '**ですね', category: 'time')
Word.create(text: 'ついつい**やっちゃうこと', category: 'time')
Word.create(text: 'いやーもう**ですか', category: 'season')
Word.create(text: '私を変えたあの**', category: 'season')
Word.create(text: '**は好きですか', category: 'weather')
Word.create(text: '**でウキウキしちゃいました', category: 'weather')