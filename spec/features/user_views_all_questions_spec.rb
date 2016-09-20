require 'rails_helper'

feature "questions page" do
  let!(:questions) {FactoryGirl.create(:question, 5)}
  context "as a user" do
    context "Visiting the questions page" do
      before { visit questions_path }
      scenario "I can see all questions" do
        questions.each do |question|
          expect(page).to have_content(question.title)
        end
      end
      scenario "I can see questions listed in order, most recent first" do
        visit questions_path
        sorted_questions = @questions.order(:created_at)
        sorted_questions.each do |question|
          expect(page).to have_content(question)
        end
      end
    end
  end
  scenario "user sees all questions on the home page" do
  end
end
