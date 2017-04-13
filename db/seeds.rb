# Create given sample data
Question.create!(description: "tolerate")
Question.create!(description: "catalyst")
Question.create!(description: "absolve")

Question.count.times do |id|
  question = Question.find(id + 1)
  revision = Revision.create!(question: question)
  approved_revision_id = revision.id
  question.update(approved_revision_id: approved_revision_id)
end

revision1 = Revision.find(1)
revision2 = Revision.find(2)
revision3 = Revision.find(3)

Answer.create!(
  description: "accept-reject",
  revision: revision1,
  correct: true
)
Answer.create!(
  description: "action-inaction",
  revision: revision1,
  correct: false
)
Answer.create!(
  description: "sure-unsure",
  revision: revision1,
  correct: false
)
Answer.create!(
  description: "bend-stiff",
  revision: revision1,
  correct: false
)

Answer.create!(
  description: "courage-fear",
  revision: revision2,
  correct: false
)
Answer.create!(
  description: "cause-effect",
  revision: revision2,
  correct: true
)
Answer.create!(
  description: "clean-dirty",
  revision: revision2,
  correct: false
)
Answer.create!(
  description: "careful-careless",
  revision: revision2,
  correct: false
)

Answer.create!(
  description: "forgive-condemn",
  revision: revision3,
  correct: true
)
Answer.create!(
  description: "form-shapeless",
  revision: revision3,
  correct: false
)
Answer.create!(
  description: "agree-disagree",
  revision: revision3,
  correct: false
)
Answer.create!(
  description: "always-never",
  revision: revision3,
  correct: false
)

# Seed random alternatives
alternatives = ["accept-reject", "courage-fear", "forgive-condemn",
                "action-inaction", "cause-effect", "form-shapeless",
                "sure-unsure", "clean-dirty", "agree-disagree",
                "bend-stiff", "careful-careless", "always-never"]

Answer.count.times do |id|
  5.times do
    Alternative.create!(
      answer: Answer.find(id + 1),
      description: alternatives.sample
    )
  end
end
