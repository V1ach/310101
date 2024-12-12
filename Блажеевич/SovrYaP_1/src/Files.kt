package files

abstract class AbstractFile(val name: String, protected val creationDate: String) {
    abstract fun getDetails(): String
}

class Program(name: String, creationDate: String, private val _author: String) : AbstractFile(name, creationDate) {
    var author: String
        get() = _author
        private set(value) {}

    override fun getDetails(): String {
        return "Программа: $name, Автор: $author, Дата создания: $creationDate"
    }
}

class VideoFile(name: String, creationDate: String, private val _duration: Int, private val _format: String) : AbstractFile(name, creationDate) {
    var duration: Int
        get() = _duration
        private set(value) {}

    val format: String
        get() = _format

    override fun getDetails(): String {
        return "Видеофайл: $name, Длительность: $duration мин, Формат: $format, Дата создания: $creationDate"
    }
}
