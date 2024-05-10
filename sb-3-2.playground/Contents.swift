import Foundation

/*
 Задание 1
 Дополните функцию nextNumber() так, чтобы она получала целое число и возвращала число, следующее за ним по порядку.

 func nextNumber(number: Int) -> Int {
     // Ваш код должен быть здесь
 }
 Вызовите получившуюся функцию. Убедитесь, подставляя различные аргументы, что функция работает корректно.

 Пример:

 Вызов: nextNumber(number: 5)

 Вывод в консоль: 6
 
 */

func nextNumber(number: Int) -> Int {
    return number + 1
}

print("Задание 1")
print(nextNumber(number: -1) == 0)
print(nextNumber(number: 1) == 2)
print(nextNumber(number: 5) == 6)
/*

 Задание 2
 В предыдущем задание, вы вызвали существующую функцию. В этом задании требуется сделать обратное, т.е. вам нужно по описанию вызова функции ее создать.

 let value = getSquare(number: 3)
 print(value)
 Дан вызов функции. Превратите его в функцию, которая вызывается так: getSquare(number: 3) — и возвращает квадрат целого числа, в данном случае 9.
*/ 
func getSquare(number: Int) -> Int {
    return number * number
}

print("Задание 2")
print(getSquare(number: 3) == 9)

/*
 Задание 3
 Напишите функцию, которая получает на вход количество секунд и возвращает количество минут и оставшихся секунд.

 Пример: в качестве аргумента подаётся 70 секунд, тогда функция возвращает два целых числа. Первое — 1 минуту, второе — 10 секунд.

 Подсказки:

 Используйте кортеж, содержащий два значения: количество минут и секунд.
 Переменная, в которой хранится кортеж, имеет тип (minutes: Int, seconds: Int).
 Для получения остатка используйте оператор, возвращающий остаток от деления.
 Вызовите вашу функцию и выведите количество минут и секунд отдельными инструкциями print().
*/
func computeMinutesInSeconds(_ inputSeconds: Int) -> (minutes: Int, seconds: Int) {
    var minutes: Int = inputSeconds / 60
    var seconds: Int = inputSeconds - (minutes * 60);
    
    return (minutes: minutes, seconds: seconds)
}
print("Задание 3")
print(computeMinutesInSeconds(0) == (minutes: 0, seconds: 0))
print(computeMinutesInSeconds(10) == (minutes: 0, seconds: 10))
print(computeMinutesInSeconds(60) == (minutes: 1, seconds: 0))
print(computeMinutesInSeconds(70) == (minutes: 1, seconds: 10))
print(computeMinutesInSeconds(120) == (minutes: 2, seconds: 0))

/*
 Задание 4
 Напишите функцию, которая будет конкатенировать (объединять) две строки в одну. Вызовите вашу функцию и сохраните результат в переменную. Выведите результат в консоль. Для проверки используйте константы ниже.
 */
let string1 = "Writing Swift code "
let string2 = "is interactive and fun"

func concatStr(_ string1: String, _ string2: String) -> String {
    return string1 + string2
}

print("Задание 4")
print(concatStr(string1, string2) == "Writing Swift code is interactive and fun")

/*
 Задание 5
 Напишите функцию, которая на входе будет получать дату в виде строки (например, "2004-11-23"), а на выходе возвращать сущность типа Date.

 Дата задана в формате yyyy-MM-dd.

 Подсказка: для преобразования строки в дату используйте DateFormatter(). DateFormatter при форматировании возвращает optional Date. Чтобы раскрыть optional, используйте значение по умолчанию — текущую дату.
 */

print("Задание 5")
func parseDate(from: String) -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
    
    let date = dateFormatter.date(from: from) ?? Date()
    
    return date
}

print(parseDate(from: "2004-11-23"))
