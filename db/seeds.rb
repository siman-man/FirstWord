# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Question1
q1 = Question.create( text: "どの程度の知り合い?" )

Answer.create( question_id: q1.id, order: 1, text: '友人' )
Answer.create( question_id: q1.id, order: 2, text: '挨拶程度' )
Answer.create( question_id: q1.id, order: 3, text: '顔は知っている' )
Answer.create( question_id: q1.id, order: 4, text: '知らない人' )


# Question2
q2 = Question.create( text: "今日の天気は?" )

Answer.create( question_id: q2.id, order: 1, text: '晴れ' )
Answer.create( question_id: q2.id, order: 2, text: '曇り' )
Answer.create( question_id: q2.id, order: 3, text: '雨' )
Answer.create( question_id: q2.id, order: 4, text: '雪' )


# Question3
q3 = Question.create( text: "現在の時間帯は?" )

Answer.create( question_id: q3.id, order: 1, text: '朝' )
Answer.create( question_id: q3.id, order: 2, text: '昼' )
Answer.create( question_id: q3.id, order: 3, text: '夕方' )
Answer.create( question_id: q3.id, order: 4, text: '夜' )