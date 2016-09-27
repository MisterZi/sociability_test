# Тест взят http://www.syntone.ru/library/psytests/content/4969.html

# Класс, хранящий вопросы и логику прохождения теста
class Test

  attr_reader :points  

  def initialize(file_name)
        
    if !File.exist?(file_name)
      abort "Невозможно загрузить вопросы!"
    end

    f = File.new(file_name, "r:UTF-8")
    @questions = f.readlines
    f.close

    # поле, где будем хранить суммарное кол-во баллов за ответы
    @points = 0

    # указатель на текущий вопрос теста, увеличивается на 1 с каждым заданным вопросом
    @current_question = 0
  end


  # метод, которы задает пользователю очередной вопрос и спрашивает ответ
  # если еще остались незаданные вопросы - метод должен вернуть false
  # если задан последний вопрос теста – метод должен вернуть true

  def next_question   
    puts @questions[@current_question]

    user_input = nil

    until (user_input == 1 or user_input == 2 or user_input == 3)
      puts "введите число: 1 – да, 2 – нет, 3 – иногда, и нажмите Enter"
      user_input = gets.to_i  
    end
    
    if (user_input == 1)
      @points += 2 # увеличиваем значение поля на 2 за ответ "да"
    elsif (user_input == 3)
      @points += 1 # увеличиваем значение поля на 1 за ответ "иногда"
    end

    # увеличиваем счетчик заданных вопросов
    @current_question += 1

    # проверяем, если больше вопросов нет, возвращаем false, иначе - true
    if @current_question >= @questions.size
      return false
    else
      return true
    end
  end 
end
