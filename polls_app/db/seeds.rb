# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  u1 = User.create!(username: 'Socrates')
  u2 = User.create!(username: 'Lao Tzu')
  u3 = User.create!(username: 'Thomas Aquinas')
  
  p1 = Poll.create!(title: 'Toga', author_id: u1.id)
  
  q1 = Question.create!(body: 'What color is the toga in the painting?', poll_id: p1.id)
  q1_c1 = AnswerChoice.create!(body: 'Blue', q1.id)
  q1_c2 = AnswerChoice.create!(body: 'White', q1.id)
  q1_c3 = AnswerChoice.create!(body: 'Impossible to tell', q1.id)
  #Lao Tzu thinks the toga is white.
  #Thomas Aquinas thins the toga is blue 
  q1_r1 = Response.create!(choice_id: q1_c1.id, user_id: u2.id)
  q1_r2 = Response.create!(choice_id:, q1_c2.id, user_id: u3.id)
  
  q2 = Question.create!(body: "What is the best toga material?", poll_id: p1.id)
  q2_c1 = AnswerChoice.create!(body: 'Silk', q2.id)
  q2_c2 = AnswerChoice.create!(body: 'Cotton', q2.id)
  # q2_c3 = AnswerChoice.create!(body: '', )
end