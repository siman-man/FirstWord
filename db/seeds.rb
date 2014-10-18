# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Question1
q1 = Question.create( text: "相手はどの程度の知り合い?", category: 'how' )

Answer.create( question_id: q1.id, order: 1, text: '友人' )
Answer.create( question_id: q1.id, order: 2, text: '挨拶程度' )
Answer.create( question_id: q1.id, order: 3, text: '顔は知っている' )
Answer.create( question_id: q1.id, order: 4, text: '知らない人' )


# Question2
q2 = Question.create( text: "今日の天気は?", category: 'weather' )

Answer.create( question_id: q2.id, order: 1, text: '晴れ' )
Answer.create( question_id: q2.id, order: 2, text: '曇り' )
Answer.create( question_id: q2.id, order: 3, text: '雨' )
Answer.create( question_id: q2.id, order: 4, text: '雪' )


# Question3
q3 = Question.create( text: "現在の時間帯は?", category: 'time' )

Answer.create( question_id: q3.id, order: 1, text: '朝' )
Answer.create( question_id: q3.id, order: 2, text: '昼' )
Answer.create( question_id: q3.id, order: 3, text: '夕方' )
Answer.create( question_id: q3.id, order: 4, text: '夜' )


# Question4
q4 = Question.create( text: "どのSNSをよく使いますか?", category: 'like' )
Answer.create( question_id: q4.id, order: 1, text: 'Twitter' )
Answer.create( question_id: q4.id, order: 2, text: 'Facebook' )
Answer.create( question_id: q4.id, order: 3, text: 'LINE' )
Answer.create( question_id: q4.id, order: 4, text: '使っていない' )


# Question5
q5 = Question.create( text: "好きな日本列島の島は?", category: 'like' )
Answer.create( question_id: q5.id, order: 1, text: '北海道' )
Answer.create( question_id: q5.id, order: 2, text: '本州' )
Answer.create( question_id: q5.id, order: 3, text: '四国' )
Answer.create( question_id: q5.id, order: 4, text: '九州' )


# Question6
q6 = Question.create( text: "秋といえば?", category: 'like' )
Answer.create( question_id: q6.id, order: 1, text: '睡眠' )
Answer.create( question_id: q6.id, order: 2, text: '食欲' )
Answer.create( question_id: q6.id, order: 3, text: 'スポーツ' )
Answer.create( question_id: q6.id, order: 4, text: '読書' )


# Question7
q7 = Question.create( text: "今の季節は?", category: 'season' )
Answer.create( question_id: q7.id, order: 1, text: '春' )
Answer.create( question_id: q7.id, order: 2, text: '夏' )
Answer.create( question_id: q7.id, order: 3, text: '秋' )
Answer.create( question_id: q7.id, order: 4, text: '冬' )


# Send Words
Word.create(text: "どんな**が好きですか?", category: 'like')
Word.create(text: "**って行ったことありますか?", category: 'place')
Word.create(text: "**好きそうですね?", category: 'like')