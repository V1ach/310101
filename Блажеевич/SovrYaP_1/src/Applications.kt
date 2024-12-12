package applications

import files.VideoFile

class Browser(private var _name: String) {
    var name: String
        get() = _name
        set(value) {
            _name = value
        }

    private fun openWebPage(url: String) {
        println("$name: Открываю веб-страницу $url")
        println("$name: Страница $url открыта!")
    }

    fun open(url: String) {
        openWebPage(url)
    }

    fun downloadFile(fileName: String) {
        println("$name: Скачиваю файл $fileName")
        println("Файл $fileName успешно скачан!")
    }
}


class Player {
    private var isVideoSupported: Boolean = false // Приватная переменная

    fun playVideo(videoFile: VideoFile) {
        if (checkVideoFormat(videoFile)) {
            println("Воспроизводится: ${videoFile.getDetails()}")
            isVideoSupported = true // Устанавливаем значение при успешном воспроизведении
        } else {
            println("Неподдерживаемый формат видео.")
            isVideoSupported = false // Устанавливаем значение при неуспешном воспроизведении
        }
    }

    private fun checkVideoFormat(videoFile: VideoFile): Boolean {
        isVideoSupported = videoFile.format in listOf("mp4", "avi", "mkv") // Устанавливаем значение
        return isVideoSupported // Возвращаем булевое значение
    }

    fun isVideoSupported(): Boolean {
        return isVideoSupported // Геттер для проверки поддержки видео
    }
}
