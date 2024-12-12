import applications.Browser
import applications.Player
import files.VideoFile
import user.User
import user.Computer
import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)

    print("Введите ваш юзернейм: ")
    val userName = readLine() ?: "Пользователь" // Используем "Пользователь" по умолчанию

    val user = User(userName)
    val browser = Browser("Internet Expander")
    val player = Player()
    val computer = Computer()
    val downloadedVideos = HashMap<String, VideoFile>()

    println("Добро пожаловать, ${user.name}!")
    while (true) {
        println("\nМеню:")
        println("1. Скачать браузер")
        println("2. Установить другой браузер")
        println("3. Скачать фильм")
        println("4. Посмотреть фильм")
        println("5. Выйти")

        print("Выберите действие (1-5): ")
        val choice = scanner.nextLine()

        when (choice) {
            "1" -> {
                user.downloadApp("${browser.name}")
                user.installApp("${browser.name}")
                computer.addApp("${browser.name}")
                user.runApp("${browser.name}")
                println("Введите URL для перехода:")
                val url = scanner.nextLine()
                browser.open(url)
                println("Введите имя файла для скачивания:")
                val fileName = scanner.nextLine()
                browser.downloadFile(fileName)
            }

            "2" -> {
                println("Выбираем подходящий под систему браузер...")
                user.downloadApp("Firecat")
                user.installApp("Firecat")
                computer.addApp("Firecat")
                println("Ошибка! Может быть установлен только один браузер! Выберите браузер для удаления:")
                println("1. Удалить ${browser.name}")
                println("2. Удалить Firecat browser")
                val choice2 = scanner.nextLine()
                when (choice2) {
                    "1" -> {
                        computer.removeApp(browser.name)
                        browser.name = "Firecat Browser"
                    }

                    "2" -> {
                        computer.removeApp("Firecat Browser")
                        browser.name = "Internet Expander"
                    }
                    else -> {
                        println("Неверный выбор. Пожалуйста, выберите действие от 1 до 2.")
                    }
                }
            }

            "3" -> {
                println("Введите URL для перехода:")
                val url = scanner.nextLine()
                browser.open(url)
                print("Введите название фильма: ")
                val videoName = scanner.nextLine()
                print("Введите дату создания фильма (YYYY-MM-DD): ")
                val creationDate = scanner.nextLine()
                print("Введите длительность фильма (в минутах): ")
                val videoDuration = scanner.nextLine().toIntOrNull()
                print("Введите формат фильма (mp4, avi, mkv): ")
                val videoFormat = scanner.nextLine()

    // Проверки
                if (videoDuration == null || videoDuration <= 0) {
                    println("Ошибка: Длительность фильма должна быть положительной.")
                    continue
                }
                if (!validateVideoFormat(videoFormat)) {
                    println("Ошибка: Неподдерживаемый формат фильма.")
                    continue
                }

                val videoFile = VideoFile(videoName, creationDate, videoDuration, videoFormat)
                browser.downloadFile(videoFile.name)
                downloadedVideos[videoName] = videoFile
            }

            "4" -> {
                print("Введите название фильма для просмотра: ")
                val videoName = scanner.nextLine()

    // Проверка
                if (downloadedVideos.containsKey(videoName)) {
                    val videoFile = downloadedVideos[videoName] //Обращаемся к хэшмапе
                    if (videoFile != null) {
                        player.playVideo(videoFile)
                        if (player.isVideoSupported()) {
                            println("Фильм '$videoName' воспроизводится успешно.")
                        } else {
                            println("Фильм '$videoName' не поддерживается.")
                        }
                    }
                } else {
                    println("Ошибка: Фильм '$videoName' не скачан. Скачайте его сначала.")
                }
            }

            "5" -> {
                println("Выход из программы.")
                return
            }

            else -> {
                println("Неверный выбор. Пожалуйста, выберите действие от 1 до 5.")
            }
        }
    }
}

fun validateVideoFormat(format: String): Boolean {
    val validFormats = listOf("mp4", "avi", "mkv")
    return format in validFormats
}
