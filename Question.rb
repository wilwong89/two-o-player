class Question
  attr_reader :question_text

  def initialize()
    @num1 = rand(20)
    @num2 = rand(20)

    @answer = (@num1 + @num2)
    @question_text = "#{@num1} + #{@num2}"
  end

  def inspect
    puts "Question: what is #{@question_text}? Answer: #{@answer}"
  end

  def check_answer(input)
    input == @answer.to_s
  end
end
