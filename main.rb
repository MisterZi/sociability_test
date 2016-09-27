# Тест взят http://www.syntone.ru/library/psytests/content/4969.html

current_path = File.dirname(__FILE__)

require "./" + current_path + "/lib/test.rb"
require "./" + current_path + "/lib/result_printer.rb"

about = "Данный тест поможет определить Ваш уровень коммуникабельности.\n\n"

puts about
sleep(2)

questions_file_name = "./" + current_path + "/data/questions.txt" # массив вопросов, загружаем из файла questions.txt
results_file_name = "./" + current_path + "/data/results.txt"     # массив результатов, загружаем из файла results.txt

test = Test.new(questions_file_name)
result_printer = ResultPrinter.new(results_file_name)

# основной цикл программы
while test.next_question == true do
  # Активные действия происходят в методе test.next_question
  # а он вызывается на каждой итерации цикла и сразу же делается проверка – какое 
  # метод возвращает значение.
  # Поэтому само "тело" цикла может быть пустым.
end

# Выводим результат
result_printer.print_result(test)
