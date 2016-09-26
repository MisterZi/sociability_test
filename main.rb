# Тест взят http://www.syntone.ru/library/psytests/content/4969.html

require "./" + File.dirname(__FILE__) + "/test.rb"
require "./" + File.dirname(__FILE__) + "/result_printer.rb"

about = "Данный тест поможет определить Ваш уровень коммуникабельности.\n\n"

puts about
sleep(2)

test = Test.new
result_printer = ResultPrinter.new

# основной цикл программы
while test.next_question == true do
  # Активные действия происходят в методе test.next_question
  # а он вызывается на каждой итерации цикла и сразу же делается проверка – какое 
  # метод возвращает значение.
  # Поэтому само "тело" цикла может быть пустым.
end

# Выводим результат
result_printer.print_result(test)
