class Question
  attr_reader :first_num, :second_num

  def initialize()
    @first_num = rand(20)
    @second_num = rand(20)
  end

  def get_question()
    question = "What does #{first_num} plus #{second_num} equal?"
    answer = first_num + second_num
    return [question, answer]
  end
end

