package user

class User(private var _name: String) {
    var name: String
        get() = _name
        set(value) {
            _name = value
        }

    fun downloadApp(programName: String) {
        println("$name: Скачивает $programName")
    }

    fun installApp(programName: String) {
        println("$name: Устанавливает $programName")
    }

    fun runApp(programName: String) {
        println("$name: Запускает $programName")
    }
}

class Computer {
    fun addApp(programName: String) {
        println("Программа $programName успешно установлена!")
    }

    fun removeApp(programName: String) {
        println("Программа $programName успешно удалена!")
    }
}
