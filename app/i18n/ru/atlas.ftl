### Fluxxwave Manager: Russian (ru). Preview translation, revised on 1 October 2026 from the en-GB source (i18n/en-GB/atlas.ftl).
###
### Conventions for this catalog: the reader is addressed as "вы" (lower case,
### as Windows does); the computer is "ПК"; buttons are short imperatives;
### "перезапустить" is the Fluxxwave Manager relaunching, "перезагрузить" is the PC or
### Windows restarting. Windows feature names follow the Russian Windows UI.
### The .apbx file is the "пакет Fluxxwave" (declined: пакета, пакетом), shortened to
### "пакет" once that is clear. The user's choices are "настройки", the app's
### Settings page "параметры". A control the text tells people to choose is quoted
### with its exact label: нажмите «Повторить попытку»; a quote inside a label uses
### „…“. Cards on the Get ready page are "раздел «…»"; update stages are "этап",
### the flow's steps "шаг".

## Shared

app-name = Fluxxwave Manager
common-done = Готово
common-cancel = Отмена
common-back = Назад
common-next = Далее
common-dismiss = Закрыть
# Link beside a summary row that jumps back to change that choice.
common-change = Изменить
common-copy = Копировать
# Shown where a list of options is empty.
common-none = Нет
# Accessible name of the back arrow on the Install and Settings pages.
common-back-to-home = На главную
# Accessible name of the gear button in the title bar.
common-settings = Параметры
common-close-settings = Закрыть параметры
common-open-windows-security = Открыть «Безопасность Windows»
common-restart-as-administrator = Перезапустить от имени администратора
common-try-again = Повторить попытку
common-read-the-docs = Открыть руководство Atlas
common-show-details = Показать подробности
common-hide-details = Скрыть подробности
# Accessible name of a Show details or Hide details toggle. $action is common-show-details or
# common-hide-details; $section is the title of the card it opens.
common-details-a11y = { $action }, { $section }
common-open-log-file = Открыть файл журнала
# Accessible name of the Copy button beside the install log.
common-copy-install-log = Копировать журнал установки
common-install-log = Журнал установки
# Row labels in summary cards.
common-windows = Windows
common-options = Выбранные настройки
common-package = Установочные файлы
common-installed-as = Тип установки
common-installed = Установлено
common-checking = Проверка
# Joins two items in a list: "Brave, Firefox". The braces keep the space.
list-separator = { ", " }
# Joins two alternatives: "26100 or 26200".
list-or = { $a } или { $b }
list-and = { $a } и { $b }
# Accessible name of a message bar that announces itself: its title, then its message.
infobar-a11y = { $title }. { $message }

## Window

# Dialog shown when the window is closed while an install runs.
window-close-title = Закрыть окно, пока идёт установка?
window-close-message = Установка продолжится в фоновом режиме. Чтобы увидеть ход и результат, снова откройте Fluxxwave. Не выключайте ПК до завершения установки.
# Instead of window-close-message when the installation restarts the PC afterwards: only an
# open Fluxxwave window restarts it, so closing the window cancels that.
window-close-message-restart = Установка продолжится в фоновом режиме, но пока Fluxxwave закрыт, ПК не перезагрузится автоматически. Чтобы увидеть ход и результат, снова откройте Fluxxwave. Не выключайте ПК до завершения установки.
# The safe answer in every dialog shown when the window is closed, including those for ISO
# and USB creation, updates and Windows Update access.
window-close-keep = Не закрывать
window-close-close = Закрыть окно
# Dialog shown when the window is closed during the final checks, before the
# installer has started; window-close-keep and window-close-close are its buttons.
window-close-preparing-title = Закрыть окно до начала установки?
window-close-preparing-message = Fluxxwave ещё проверяет ваш ПК и пока не начал установку. Если закрыть окно сейчас, установка не начнётся. Чтобы продолжить, снова откройте Fluxxwave.
prepare-close-title = Обновление ещё выполняется
# "Stop updating" is prepare-stop, the dialog's other button.
prepare-close-message = Не закрывайте Fluxxwave, пока идёт обновление. Если нажать «Остановить обновление», обновление прекратится после текущего этапа, и тогда Fluxxwave можно будет закрыть.
# Dialog shown when the window is closed during the restart countdown after a
# successful install. Its buttons are window-close-keep, restart-now and
# window-close-restart-close.
window-close-restart-title = Закрыть Fluxxwave без перезагрузки?
# "Перезагрузить сейчас" is restart-now, one of this dialog's three buttons.
window-close-restart-message = Чтобы завершить настройку Fluxxwave, ПК нужно перезагрузить. Если закрыть Fluxxwave сейчас, он не перезагрузит ПК, поэтому перезагрузите его самостоятельно, когда будете готовы. Сохраните работу, прежде чем нажать «Перезагрузить сейчас».
window-close-restart-close = Закрыть без перезагрузки
# Dialog shown when the window is closed during a setup with Windows Security switches still
# off. $switches names them as Windows Security does, joined like a list. Its buttons are
# window-close-keep, common-open-windows-security and window-close-close.
window-close-protection-title = Закрыть Fluxxwave с отключённой защитой?
window-close-protection-message = Некоторые средства защиты в приложении «Безопасность Windows» всё ещё отключены: { $switches }. Если вы не собираетесь завершать установку Fluxxwave, включите их снова, прежде чем закрыть Fluxxwave. Если собираетесь, Fluxxwave продолжит настройку, когда вы снова его откроете.
# The Open button of the file picker for a Fluxxwave package (.apbx) file, on Get ready and the
# ISO page. It's a button label, so keep it short.
file-dialog-open-package = Открыть пакет Fluxxwave (.apbx)
# Message Windows shows in its restart notification.
shutdown-comment = Fluxxwave установлен. Windows перезагружается, чтобы завершить настройку.
# Message Windows shows in its restart notification when "Get ready" restarts
# to finish installing Windows updates.
prepare-shutdown-comment = Fluxxwave перезагружает Windows, чтобы завершить установку обновлений.

## System

# "Windows 11 Pro 25H2 (build 26200.1234)". All three values are text.
system-description = { $product } { $version } (сборка { $build })

## Home page

home-not-installed = Добро пожаловать в Fluxxwave
# The headline when Fluxxwave Manager can't tell what is installed on this PC.
home-state-unknown = Fluxxwave на этом ПК
# The headline when Fluxxwave is installed. $version is text.
home-version = Fluxxwave { $version }
# $date is a formatted date.
home-installed-on = Установлено { $date }
home-status-checking = Проверка обновлений
# While startup checks whether another window's installation is running.
home-status-recovering = Поиск выполняющейся установки
home-status-offline = Не удалось проверить обновления
home-status-not-checked = Обновления ещё не проверялись
home-status-update = Доступен Fluxxwave { $version }
home-status-up-to-date = Установлена последняя версия
home-status-newest = Последняя версия: Fluxxwave { $version }
# An earlier installation of Fluxxwave { $version } stopped before it finished.
home-status-unfinished = Установка Fluxxwave { $version } не завершена
home-check-again = Проверить снова
# Primary button while an install is running or waiting.
home-show-install = Показать ход установки
home-continue-installing = Продолжить настройку
home-update-to = Обновить до Fluxxwave { $version }
home-reinstall = Переустановить Fluxxwave
home-install = Установить Fluxxwave
home-finish-install = Завершить установку Fluxxwave { $version }
home-start-over = Начать заново
home-restart-title = ПК нужно перезагрузить
home-security-reminder-title = Снова включите защиту
# Instead of home-security-reminder-title when no switch reads off but some couldn't be read
# (with home-security-reminder-unreadable-message).
home-security-reminder-unreadable-title = Убедитесь, что защита включена
home-security-reminder-message = Fluxxwave сейчас ничего не устанавливает, но некоторые средства защиты в приложении «Безопасность Windows» всё ещё отключены. Откройте «Безопасность Windows» и убедитесь, что включены: { $switches }.
home-security-reminder-unreadable-message = Fluxxwave не удалось проверить все переключатели защиты. Убедитесь, что в приложении «Безопасность Windows» включены: { $switches }.
home-elevation-title = Для установки Fluxxwave нужны права администратора
home-state-error-title = Не удалось прочитать сведения об установке Fluxxwave
home-state-error-message = Версия Fluxxwave, выбранные настройки и история установок могут отображаться неправильно. Нажмите «Проверить снова», чтобы повторить попытку. Подробности: { $error }
home-whats-new = Что нового в Fluxxwave { $version }
home-view-release = Открыть заметки о выпуске на GitHub
home-released = Дата выпуска: { $date }
home-show-less = Свернуть
home-show-full-notes = Показать все заметки о выпуске
home-your-install = Ваша установка Fluxxwave
# Fluxxwave is installed, but without the record Fluxxwave Manager keeps (older versions didn't write one).
home-install-unrecorded = На этом ПК нет записи о том, как был установлен Fluxxwave, поэтому нельзя показать выбранные настройки и историю установок.
# Row label: how Fluxxwave was set up.
home-set-up = Способ настройки
home-set-up-during-oobe = При первоначальной настройке Windows
home-history = История установок
# One history row. $version is text, $mode one of the history-mode-* messages, $date a formatted date and time.
home-history-entry = Fluxxwave { $version } · { $mode } · { $date }
home-how-it-works = Подготовим ПК к установке Fluxxwave
home-step-1-detail = Fluxxwave проверит ПК, установит ожидающие обновления Windows и Microsoft Store и скачает установочные файлы. Приложения Store могут закрыться, и может потребоваться перезагрузка ПК, поэтому сначала сохраните работу.
# Tester build: the Fluxxwave package is bundled, nothing is downloaded.
home-step-1-detail-bundled = Fluxxwave проверит ПК, установит ожидающие обновления Windows и Microsoft Store и подготовит встроенные установочные файлы. Приложения Store могут закрыться, и может потребоваться перезагрузка ПК, поэтому сначала сохраните работу.
home-step-2-detail = Выберите, оставить ли Microsoft Defender и защиту процессора, как устанавливать обновления Windows и какие необязательные дополнения добавить.
home-step-3-detail = Отключите четыре переключателя защиты в приложении «Безопасность Windows», чтобы они не блокировали установку. Fluxxwave покажет, как это сделать.
home-step-4-detail =
    { $minutes ->
        [one] Установка займёт около { $minutes } минуты. Затем ПК нужно будет перезагрузить.
        [few] Установка займёт около { $minutes } минут. Затем ПК нужно будет перезагрузить.
        [many] Установка займёт около { $minutes } минут. Затем ПК нужно будет перезагрузить.
       *[other] Установка займёт около { $minutes } минуты. Затем ПК нужно будет перезагрузить.
    }
# Accessible name of a numbered step.
home-step-a11y = Шаг { $number }: { $title }
home-github = Открыть Atlas на GitHub
home-discord = Сообщество Atlas в Discord
home-report-problem = Сообщить о проблеме

## How an install was done (from the state document)

mode-fresh = Первая установка
mode-upgrade = Обновление с предыдущей версии
mode-reapply = Переустановка той же версии
mode-unknown = Установка
# Lower-case forms used inside a history row.
history-mode-fresh = первая установка
history-mode-upgrade = обновление
history-mode-reapply = переустановка
history-mode-unknown = установка

## Notices on the Home page

notice-settings-reset-title = Fluxxwave использует параметры приложения по умолчанию
# $error is a raw error message (text).
notice-settings-unreadable = Fluxxwave не удалось прочитать сохранённые параметры приложения. Параметры Windows не изменились. Подробности: { $error }
# $file is a file name (text).
notice-settings-damaged-kept = Файл параметров приложения был повреждён и сброшен. Копия старого файла сохранена как { $file }. Подробности: { $error }
notice-settings-damaged = Файл параметров приложения был повреждён. Пока Fluxxwave использует параметры по умолчанию. Подробности: { $error }
notice-settings-not-saved-title = Не удалось сохранить параметры приложения
# $error is a raw error message (text).
notice-settings-not-saved = Fluxxwave не удалось сохранить последние изменения, поэтому они могут быть потеряны при закрытии Fluxxwave. Если открыто другое окно Fluxxwave, закройте его, затем внесите изменение снова. Подробности: { $error }
notice-session-unreadable-title = Не удалось проверить предыдущую установку
# $path is a file path (text).
notice-session-unreadable-message = Fluxxwave не удалось определить, выполняется ли ещё предыдущая установка. Если вы не уверены, обратитесь за помощью к сообществу Atlas. Только если вы уверены, что установка не выполняется, удалите { $path } и повторите попытку. Подробности: { $error }

## Administrator elevation

elevation-declined = Разрешение не получено. Повторите попытку и нажмите «Да», когда Windows спросит, разрешить ли Fluxxwave вносить изменения.
elevation-declined-continue = Разрешение не получено. Повторите попытку и нажмите «Да», когда Windows спросит, разрешить ли Fluxxwave вносить изменения. Выбранные вами настройки сохранены.
elevation-draft-not-saved = Fluxxwave не удалось сохранить выбранные настройки, поэтому приложение не было перезапущено. Повторите попытку. Подробности: { $error }
# Shown with the home-start-over button.
elevation-taken-over = Эта настройка теперь продолжается в другом окне Fluxxwave, поэтому Fluxxwave не был перезапущен. Продолжите в том окне или нажмите «Начать заново», чтобы снова пройти настройку здесь.

## The install flow

step-ready = Подготовка
step-options = Ваш выбор
step-security = Безопасность Windows
step-install = Установка
install-title = Настройка Fluxxwave
# Accessible name of the row of steps.
stepper-label = Шаги настройки Fluxxwave
# Accessible name of one step. $status is one of the stepper-status-* messages.
stepper-step-a11y = Шаг { $number } из { $total }, { $title }, { $status }
stepper-status-completed = завершён
stepper-status-current = текущий шаг
stepper-status-upcoming = предстоящий шаг
stepper-status-attention = требует внимания
# Heading above each step's content.
step-heading = Шаг { $number } из { $total }: { $title }
# Accessible name of the step heading on a screen of Your choices, read when it takes focus.
# $heading is step-heading; $progress is options-progress; $question is the screen's question.
step-heading-choice-a11y = { $heading }. { $progress }: { $question }
# The same on the optional extras screen; $progress is options-progress-extras.
step-heading-extras-a11y = { $heading }. { $progress }

## Step 1: Get ready

ready-banner-busy-title = Подготовка ПК
ready-banner-busy-message = Fluxxwave проверяет ваш ПК и подготавливает установочные файлы.
ready-banner-blocked-title = ПК пока не готов
ready-banner-blocked-message = Устраните отмеченные проблемы в разделе «Проверки ПК», затем нажмите «Проверить снова».
ready-banner-no-package-title = Скачайте Fluxxwave, чтобы продолжить
ready-banner-no-package-message = Скачайте Fluxxwave в разделе «Установочные файлы» или нажмите «Открыть файл пакета», если у вас уже есть пакет Fluxxwave (.apbx).
# Tester build: the bundled Fluxxwave package couldn't be unpacked.
ready-banner-no-package-bundled-title = Подготовьте встроенный пакет Fluxxwave, чтобы продолжить
ready-banner-no-package-bundled-message = Пакет Fluxxwave, встроенный в эту тестовую сборку, ещё не готов. Проверьте раздел «Установочные файлы».
ready-banner-updates-title = Обновите Windows и приложения Store, чтобы продолжить
ready-banner-updates-message = Нажмите «Найти и установить обновления». Когда обновление завершится, Fluxxwave снова проверит ПК.
# While Windows and Store apps update. "Update Windows and Store apps" is prepare-title, the
# card further down the page.
ready-banner-updating-title = Идёт обновление Windows и приложений Store
ready-banner-updating-message = Это может занять некоторое время. Не закрывайте Fluxxwave. Ход обновления можно отслеживать в разделе «Обновление Windows и приложений Store».
# After Stop updating. "Check and install updates" is prepare-start, the card's button.
ready-banner-updates-stopped-title = Обновление остановлено
ready-banner-updates-stopped-message = Чтобы завершить обновление, нажмите «Найти и установить обновления» в разделе «Обновление Windows и приложений Store».
# Fluxxwave reopened after restarting the PC to continue updating. "Continue updates" is
# prepare-continue, the card's button.
ready-banner-updates-resumed-title = ПК перезагружен
ready-banner-updates-resumed-message = Чтобы завершить обновление, нажмите «Продолжить обновления» в разделе «Обновление Windows и приложений Store».
# Under prepare-failed-title or prepare-unconfirmed-title. "Try again" is common-try-again,
# the card's button.
ready-banner-updates-failed-message = Выполните указания в разделе «Обновление Windows и приложений Store», затем нажмите «Повторить попытку».
# Under prepare-reboot-title. "Restart and continue" is prepare-restart, the card's button.
ready-banner-reboot-message = Сначала сохраните работу, затем нажмите «Перезагрузить и продолжить» в разделе «Обновление Windows и приложений Store».
ready-banner-warnings-title = Есть несколько замечаний
ready-banner-warnings-message = Можно продолжить, но сначала ознакомьтесь с отмеченными пунктами в разделе «Проверки ПК».
ready-banner-ok-title = Можно переходить к выбору настроек
ready-banner-ok-message = Проверки пройдены, установочные файлы готовы.

# Card title and accessible name of the list of checks.
ready-this-pc = Проверки ПК
ready-check-again = Проверить снова
ready-checks-passed =
    { $count ->
        [one] Пройдена { $count } проверка
        [few] Пройдены { $count } проверки
        [many] Пройдено { $count } проверок
       *[other] Пройдено { $count } проверки
    }

package-title = Установочные файлы
# $received and $total are formatted numbers of megabytes (text).
package-downloading = Скачивание Fluxxwave { $version } · { $received } из { $total } МБ
package-unpacking-progress =
    { $total ->
        [one] Распаковка · { $done } из { $total } файла
        [few] Распаковка · { $done } из { $total } файлов
        [many] Распаковка · { $done } из { $total } файлов
       *[other] Распаковка · { $done } из { $total } файлов
    }
package-unpacking = Распаковка
package-looking = Поиск последней версии Fluxxwave.
# Tester build: the bundled Fluxxwave package is being unpacked, nothing is downloaded.
package-looking-bundled = Подготовка встроенного пакета Fluxxwave.
package-none = Скачайте Fluxxwave, чтобы получить установочные файлы. Если у вас уже есть пакет Fluxxwave (.apbx), откройте его.
# The GitHub release check failed. "Скачать последнюю версию" is package-download-newest,
# the button offered in this state; it checks again.
package-release-failed = Fluxxwave не удалось проверить наличие последней версии. Проверьте подключение к интернету, затем нажмите «Скачать последнюю версию» или откройте сохранённый пакет Fluxxwave (.apbx).
# Short status words beside the card title.
package-status-downloading = Скачивание
package-status-unpacking = Распаковка
package-status-failed = Не удалось подготовить
package-status-ready = Готово
package-status-checking = Проверка
package-status-preparing = Подготовка
package-status-missing = Не скачано
# Accessible name of the progress bar.
package-progress = Ход подготовки установочных файлов
package-download-again = Скачать снова
package-download-version = Скачать Fluxxwave { $version }
package-download-newest = Скачать последнюю версию
package-cancel-download = Отменить скачивание
package-open-file = Открыть файл пакета
# Where the package came from. $file is a file name (text).
package-from-release = Fluxxwave { $version } скачан с GitHub и готов к установке.
package-from-file = Fluxxwave { $version } загружен из { $file } и готов к установке.
package-unpacked = Fluxxwave { $version } готов к установке.
package-none-yet = Установочные файлы не выбраны
acquire-no-asset = Для Fluxxwave { $version } нет файла пакета для скачивания. Чтобы продолжить, откройте сохранённый пакет Fluxxwave (.apbx).
acquire-unsupported = Это приложение устанавливает Fluxxwave 0.6.0 и новее. Чтобы установить Fluxxwave { $version }, используйте AME Wizard.
# A package new enough to include the installer script that this app drives, but without it.
acquire-incomplete = В Fluxxwave { $version } отсутствуют файлы, которые нужны этому приложению для установки. Скачайте его снова или откройте другой пакет Fluxxwave (.apbx).
acquire-failed = Не удалось подготовить установочные файлы. Попробуйте скачать их снова или откройте другой пакет Fluxxwave (.apbx). Подробности: { $error }
# The download received nothing for a minute and was stopped.
acquire-stalled = Скачивание остановлено, так как данные перестали поступать. Проверьте подключение к интернету, затем скачайте снова или откройте сохранённый пакет Fluxxwave (.apbx).
# Tester build: the bundled Fluxxwave package couldn't be unpacked. Try again is the only control offered.
acquire-failed-bundled = Не удалось подготовить встроенный пакет Fluxxwave. Нажмите «Повторить попытку». Подробности: { $error }

## System checks

check-administrator = Разрешение на установку
check-supported-build = Совместимость с Windows
check-pending-updates = Обновления Windows
check-pending-reboot = Перезагрузка Windows
check-third-party-antivirus = Другие антивирусы
check-internet = Подключение к интернету
check-power = Питание
check-activation = Активация Windows
# Accessible name of a check row. $state is one of the check-state-* messages.
check-a11y = { $title }: { $state }
check-state-checking = проверяется
check-state-passed = пройдено
check-state-warning = требует внимания
check-state-failed-blocking = требуется действие перед установкой
check-state-failed = требует внимания
check-state-unknown = не удалось проверить
check-fix-windows-update = Открыть Центр обновления Windows
check-fix-network = Открыть параметры сети
check-fix-power = Открыть параметры питания
check-fix-activation = Открыть параметры активации
check-fix-apps = Открыть «Установленные приложения»
# Check box the user ticks when the Windows Update scan could not run. Written
# without a gendered past tense so it reads the same for everyone.
check-ack-updates = Центр обновления Windows проверен: обновлений, ожидающих установки, нет

detail-admin-ok = У Fluxxwave есть разрешение вносить изменения, необходимые для установки.
detail-admin-missing = Перезапустите Fluxxwave от имени администратора и нажмите «Да», когда Windows запросит разрешение.
# $builds is a list of build numbers such as "26100 or 26200"; $build is this PC's (text).
detail-build-unsupported = Этой версии Fluxxwave нужна сборка Windows { $builds }. На этом ПК сборка { $build }. Прежде чем продолжить, установите поддерживаемую версию Windows.
detail-build-missing = В этом пакете Fluxxwave не указаны поддерживаемые сборки Windows. Используйте полную сборку пакета вместо сборки LocalTest.
detail-updates-none = Обновлений Windows, ожидающих установки, нет.
# $titles lists up to two update names (text); $count is the total.
detail-updates-pending =
    { $count ->
        [1] Ожидает установки обновление: { $titles }. Fluxxwave установит его в разделе «Обновление Windows и приложений Store».
        [2] Ожидают установки обновления: { $titles }. Fluxxwave установит их в разделе «Обновление Windows и приложений Store».
        [one] Ожидает установки { $count } обновление, в том числе { $titles }. Fluxxwave установит их в разделе «Обновление Windows и приложений Store».
        [few] Ожидают установки { $count } обновления, в том числе { $titles }. Fluxxwave установит их в разделе «Обновление Windows и приложений Store».
        [many] Ожидают установки { $count } обновлений, в том числе { $titles }. Fluxxwave установит их в разделе «Обновление Windows и приложений Store».
       *[other] Ожидают установки { $count } обновлений, в том числе { $titles }. Fluxxwave установит их в разделе «Обновление Windows и приложений Store».
    }
detail-updates-unknown = Не удалось проверить обновления Windows. Откройте Центр обновления Windows и, если ожидающих установки обновлений нет, подтвердите это ниже. ({ $error })
detail-reboot-none = Сейчас Windows не требует перезагрузки.
detail-reboot-pending = Windows требуется перезагрузка, чтобы завершить предыдущие изменения. Когда вы нажмёте «Найти и установить обновления», Fluxxwave сначала предложит перезагрузить ПК.
# $reasons: the pending-restart markers Windows set, from the prepare-reason-* names.
detail-reboot-pending-reasons = Windows требуется перезагрузка, чтобы завершить предыдущие изменения ({ $reasons }). Когда вы нажмёте «Найти и установить обновления», Fluxxwave сначала предложит перезагрузить ПК.
# Warning, not a block: $files lists up to three file paths Windows will replace or remove at the next restart.
detail-reboot-file-renames = Можно продолжить. При следующей перезагрузке Windows заменит или удалит файлы ({ $files }). Некоторые приложения, например Xbox Gaming Services, запрашивают это после каждой перезагрузки.
detail-reboot-unknown = Не удалось проверить, нужна ли Windows перезагрузка. Перезагрузите ПК, затем снова откройте Fluxxwave и повторите проверку. ({ $error })
detail-antivirus-none = Других антивирусов не обнаружено.
# $products is a list of product names (text).
detail-antivirus-found = Антивирусы, кроме Microsoft Defender, могут блокировать установку. Удалите { $products }, затем нажмите «Проверить снова».
# Warning, not a block: Security Center still lists the product but its files are gone.
detail-antivirus-stale = «Безопасность Windows» всё ещё показывает { $products }, но файлов этой программы больше нет, то есть она уже не установлена. Fluxxwave всё равно можно установить.
detail-antivirus-unknown = Не удалось проверить наличие других антивирусов. Нажмите «Проверить снова». Если ошибка повторяется, перезагрузите ПК и проверьте снова. ({ $error })
detail-internet-ok = Подключение есть. Не отключайтесь от интернета, пока Fluxxwave скачивает и устанавливает программы.
detail-internet-missing = Подключитесь к интернету, затем проверьте снова.
detail-power-mains = ПК подключён к электросети. Не отключайте его от сети до завершения установки.
detail-power-battery = Подключите ПК к электросети, чтобы он не выключился во время установки.
detail-power-unknown = Fluxxwave не удалось определить, подключён ли ПК к электросети. Если у вас ноутбук, подключите его, затем нажмите «Проверить снова». Если ошибка повторяется, нажмите «Отправить отчёт».
detail-activation-ok = Windows активирована. Fluxxwave это не изменит.
detail-activation-missing = Windows не активирована. Можно продолжить, но Fluxxwave не активирует Windows.
detail-activation-no-licence = Windows не сообщила о лицензии. Можно продолжить; Fluxxwave не меняет состояние активации.
detail-activation-unknown = Не удалось проверить активацию Windows. Можно продолжить; Fluxxwave не меняет состояние активации. ({ $error })

## Step 2: Options

options-progress = Выбор { $number } из { $total }
options-progress-extras = Выбор { $number } из { $total }: необязательные дополнения
options-change-later = Параметры Microsoft Defender, защиты процессора и обновлений можно позже изменить в папке Fluxxwave на рабочем столе.
# Short names for each decision (summary rows) and the question each screen asks.
screen-defender-title = Microsoft Defender
screen-defender-question = Оставить Microsoft Defender?
screen-mitigations-title = Защита процессора
screen-mitigations-question = Оставить защиту процессора, встроенную в Windows?
screen-updates-title = Центр обновления Windows
screen-updates-question = Как Windows должна устанавливать обновления?
screen-browser-title = Браузер
screen-power-title = Питание и безопасность
screen-apps-title = Приложения
screen-optional-apps-title = Дополнительные приложения
screen-choose-one-title = Выберите вариант
screen-extras-title = Необязательные дополнения
# Question for a required choice this app has no specific wording for.
screen-generic-question = Выберите вариант: { $title }
learn-more-defender = Подробнее о Microsoft Defender
learn-more-mitigations = Подробнее о защите процессора
learn-more-updates = Подробнее о Центре обновления Windows
learn-more-browser = Подробнее о браузерах
learn-more-power = Подробнее о питании и безопасности
learn-more-apps = Подробнее о приложениях
learn-more-eclean = Как eclean работает с AtlasOS
learn-more-generic = Открыть руководство по настройке
# One line under the chosen answer: what it means for the PC.
consequence-defender-enable = Оставляет встроенный антивирус Windows, который помогает защитить ПК от вирусов и других угроз.
consequence-defender-disable = Также удаляет SmartScreen. ПК останется без антивирусной защиты, пока вы не установите другой антивирус, а Windows не будет предупреждать вас перед открытием неопознанных приложений и скачанных файлов.
consequence-mitigations-default = Сохраняет стандартную защиту Windows от уязвимостей процессора и от атак, использующих ошибки в приложениях.
consequence-mitigations-disable = Также отключает защиту от эксплойтов для приложений, например защиту потока управления (CFG). Это снижает безопасность. Разница в производительности зависит от процессора.
consequence-auto-updates-disable = Регулярно открывайте Центр обновления Windows, чтобы устанавливать обновления. Уведомления об обновлениях останутся включёнными.
consequence-auto-updates-default = Windows будет устанавливать обновления автоматически, включая исправления безопасности.

## Fluxxwave package text
## The Fluxxwave package carries its own English text for each option. These
## UI labels and explanations are used only when the package text matches
## i18n/playbook-source.ftl. A future package with different wording keeps
## its own text instead of receiving a potentially outdated description.

playbook-option-defender-enable = Оставить Microsoft Defender (рекомендуется)
playbook-option-defender-disable = Удалить Microsoft Defender
playbook-option-mitigations-default = Оставить защиту процессора (рекомендуется)
playbook-option-mitigations-disable = Отключить защиту процессора
playbook-option-auto-updates-disable = Устанавливать обновления самостоятельно
playbook-option-auto-updates-default = Устанавливать обновления автоматически
playbook-option-disable-hibernation = Отключить гибернацию
playbook-option-disable-power-saving = Отключить энергосбережение
playbook-option-disable-core-isolation = Отключить безопасность на основе виртуализации (VBS)
playbook-option-remove-snipping-tool = Удалить приложение «Ножницы»
playbook-option-uninstall-edge = Удалить Microsoft Edge
playbook-option-install-another-browser = Установить браузер
playbook-option-install-toolbox = Установить Atlas Toolbox
playbook-option-install-eclean = Установить eclean
playbook-option-browser-brave = Brave
playbook-option-browser-librewolf = LibreWolf
playbook-option-browser-firefox = Firefox
playbook-option-browser-chrome = Chrome
playbook-page-defender-enable-description = Microsoft Defender — встроенный антивирус Windows. Удаляйте его, только если понимаете риски и собираетесь использовать другой антивирус. При любом выборе Fluxxwave отключает функции «Интеллектуальное управление приложениями», «Расширенная защита от фишинга» и «Поиск устройства».
playbook-page-mitigations-default-description = Эти средства защиты, которые также называют мерами по снижению рисков, помогают защититься от уязвимостей процессора, например Spectre и Meltdown, и от атак, использующих ошибки в приложениях. Рекомендуется оставить стандартные параметры Windows.
playbook-page-auto-updates-disable-description = Обновления Windows включают исправления безопасности. Windows может устанавливать их автоматически, или вы можете устанавливать их самостоятельно. В обоих случаях Fluxxwave оставляет Windows на текущей версии, которая получает исправления безопасности, только пока Microsoft её поддерживает. Fluxxwave также отключает автоматическое обновление приложений Microsoft Store, поэтому обновляйте их в Microsoft Store.
playbook-page-browser-brave-description = Выберите браузер для установки. Fluxxwave не будет менять настройки браузера.

## Step 3: Windows Security

security-banner-reading-title = Проверка параметров защиты
security-banner-reading-message = Fluxxwave проверяет четыре переключателя защиты, перечисленные ниже.
security-banner-off-title = Все четыре переключателя защиты отключены
# Shown instead of the switch list when Microsoft Defender isn't on this PC and the user
# chose to remove it.
security-banner-absent-title = Microsoft Defender не установлен на этом ПК
security-banner-absent-message = На этом шаге ничего отключать не нужно. Нажмите «Далее».
security-banner-off-message = Нажмите «Далее», чтобы проверить настройки и установить Fluxxwave.
security-banner-on-title = Отключите антивирусную защиту в приложении «Безопасность Windows»
security-banner-on-message = Microsoft Defender может блокировать изменения, которые вносит Fluxxwave. Нажмите «Открыть „Безопасность Windows“» и отключите каждый переключатель из списка ниже. Если вы оставляете Microsoft Defender, после завершения установки снова включите эти переключатели.
# The page name in Windows Security.
security-list-title = Параметры защиты от вирусов и других угроз
security-switch-off = Откл.
security-switch-on = Вкл.
security-switch-unreadable = Не удалось проверить
security-switch-reading = Проверка
security-all-off = Все отключены
# Accessible name of a switch row. $state is one of the security-switch-* messages.
security-a11y = { $title }: { $state }
# Parts of the summary "2 still on, 1 can't be read".
security-count-still-on =
    { $count ->
        [one] { $count } ещё включён
        [few] { $count } ещё включены
        [many] { $count } ещё включены
       *[other] { $count } ещё включены
    }
security-count-unreadable = { $count } не удалось проверить
security-count-join = { $a }, { $b }
security-unknown-title = Подтвердите состояние переключателей, которые Fluxxwave не удалось проверить
security-unknown-message = Убедитесь, что в приложении «Безопасность Windows» все четыре переключателя отключены, затем подтвердите это ниже.
# First-person statement; written without a gendered past tense.
security-acknowledge = «Безопасность Windows» проверена: все четыре переключателя отключены
security-unknown-unelevated-title = Для проверки защиты Fluxxwave нужны права администратора
security-unknown-unelevated-message = Перезапустите Fluxxwave от имени администратора, чтобы он мог прочитать параметры Microsoft Defender.
# The four switches, named as Windows Security names them.
protection-tamper = Защита от подделки
protection-tamper-why = Отключите её, чтобы Fluxxwave мог изменить параметры безопасности Defender.
protection-realtime = Защита в режиме реального времени
protection-realtime-why = Отключите её, чтобы Defender не блокировал установочные файлы Fluxxwave при их проверке.
protection-cloud = Облачная защита
protection-cloud-why = Отключите её, чтобы онлайн-проверка угроз не блокировала установочные файлы Fluxxwave.
protection-samples = Автоматическая отправка образцов
protection-samples-why = Отключите её, чтобы Defender не отправлял файлы Fluxxwave в Microsoft на анализ.

## Step 4: Install

# Accessible name of the progress bar.
install-progress = Ход установки
# The installation's progress shown beside the bar. $percent is a whole number from 0 to 99.
install-percent = { $percent }%
outcome-succeeded-title = Fluxxwave установлен
outcome-lost-title = Не удалось подтвердить результат установки
outcome-failed-title = Установка не завершена
outcome-requirements = ПК не соответствует требованиям установки. Изменения не вносились. Вернитесь на шаг «Подготовка» и запустите проверки снова.
# The -resumed variants follow a retry of an installation an earlier attempt had already started applying.
outcome-requirements-resumed = ПК не соответствует требованиям установки, поэтому эта попытка остановлена. Предыдущая попытка уже начала вносить изменения. Вернитесь на шаг «Подготовка» и запустите проверки снова.
outcome-not-elevated = У Fluxxwave не было прав администратора. Изменения не вносились. Перезапустите Fluxxwave от имени администратора и повторите попытку.
outcome-not-elevated-resumed = У Fluxxwave не было прав администратора, поэтому эта попытка остановлена. Предыдущая попытка уже начала вносить изменения. Перезапустите Fluxxwave от имени администратора и повторите попытку.
# The installer's live check found Windows or Store updates unfinished. Get ready offers the
# update check again; "Найти и установить обновления" is prepare-start, its button in that state.
outcome-preparation-stale = Fluxxwave не удалось подтвердить, что Windows и приложения Store обновлены, поэтому установка остановлена до внесения изменений в Windows. Вернитесь на шаг «Подготовка» и нажмите «Найти и установить обновления».
outcome-preparation-stale-resumed = Fluxxwave не удалось подтвердить, что Windows и приложения Store обновлены, поэтому эта попытка остановлена, но предыдущая попытка уже начала вносить изменения. Вернитесь на шаг «Подготовка» и нажмите «Найти и установить обновления».
outcome-failed-preflight = Установка остановилась, ничего не изменив. Можно повторить попытку. Если это повторится, нажмите «Отправить отчёт».
outcome-failed-staging = Установка остановилась при подготовке файлов, до внесения изменений в Windows. Можно повторить попытку. Если это повторится, нажмите «Отправить отчёт».
outcome-failed-applying = Часть изменений уже могла быть внесена. Можно повторить попытку. Если вы решите не продолжать, снова включите отключённые средства защиты в приложении «Безопасность Windows», если они ещё доступны.
outcome-failed-applying-defender-removed = Часть изменений уже могла быть внесена. Можно повторить попытку. Если установка снова остановится, нажмите «Отправить отчёт».
outcome-failed-resumed = Эта попытка прервалась на раннем этапе, но предыдущая попытка уже начала вносить изменения. Можно повторить попытку. Если вы решите не продолжать, снова включите отключённые средства защиты в приложении «Безопасность Windows», если они ещё доступны.
outcome-failed-resumed-defender-removed = Эта попытка прервалась на раннем этапе, но предыдущая попытка уже начала вносить изменения. Можно повторить попытку. Если установка снова остановится, нажмите «Отправить отчёт».
outcome-failed-repeated = Эта попытка прервалась с той же ошибкой, что и предыдущая, и часть изменений уже могла быть внесена. Повторять попытку, ничего не меняя, вряд ли поможет. Нажмите «Отправить отчёт», чтобы команда Atlas могла найти причину. Если вы решите не продолжать, снова включите отключённые средства защиты в приложении «Безопасность Windows», если они ещё доступны.
outcome-failed-repeated-defender-removed = Эта попытка прервалась с той же ошибкой, что и предыдущая, и часть изменений уже могла быть внесена. Повторять попытку, ничего не меняя, вряд ли поможет. Нажмите «Отправить отчёт», чтобы команда Atlas могла найти причину.
outcome-failed-repeated-apps = Windows снова не удалось удалить { $apps }, поэтому эта попытка прервалась с той же ошибкой, что и предыдущая. Часть изменений уже могла быть внесена. Повторять попытку, ничего не меняя, вряд ли поможет. Нажмите «Отправить отчёт», чтобы команда Atlas могла найти причину. Если вы решите не продолжать, снова включите отключённые средства защиты в приложении «Безопасность Windows», если они ещё доступны.
outcome-failed-repeated-apps-defender-removed = Windows снова не удалось удалить { $apps }, поэтому эта попытка прервалась с той же ошибкой, что и предыдущая. Часть изменений уже могла быть внесена. Повторять попытку, ничего не меняя, вряд ли поможет. Нажмите «Отправить отчёт», чтобы команда Atlas могла найти причину.
outcome-not-started = Установщик не запустился вовремя. Изменения не вносились. Можно повторить попытку.
outcome-lost = Установщик остановился, не сообщив о результате, и часть изменений уже могла быть внесена. Можно повторить попытку. Если вы решите не продолжать, снова включите отключённые средства защиты в приложении «Безопасность Windows», если они ещё доступны.
outcome-lost-defender-removed = Установщик остановился, не сообщив о результате, и часть изменений уже могла быть внесена. Можно повторить попытку. Если это повторится, нажмите «Отправить отчёт».
restart-now-message = Windows перезагружается, чтобы завершить настройку Fluxxwave.
restart-countdown =
    { $seconds ->
        [one] Windows перезагрузится через { $seconds } секунду, чтобы завершить настройку Fluxxwave. Чтобы сначала сохранить работу, нажмите «Перезагрузить позже».
        [few] Windows перезагрузится через { $seconds } секунды, чтобы завершить настройку Fluxxwave. Чтобы сначала сохранить работу, нажмите «Перезагрузить позже».
        [many] Windows перезагрузится через { $seconds } секунд, чтобы завершить настройку Fluxxwave. Чтобы сначала сохранить работу, нажмите «Перезагрузить позже».
       *[other] Windows перезагрузится через { $seconds } секунды, чтобы завершить настройку Fluxxwave. Чтобы сначала сохранить работу, нажмите «Перезагрузить позже».
    }
restart-stopped = Автоматическая перезагрузка отменена. Сохраните работу, затем перезагрузите ПК, чтобы завершить настройку Fluxxwave.
restart-needed = Сохраните работу, затем перезагрузите ПК, чтобы завершить настройку Fluxxwave.
restart-dont-now = Перезагрузить позже
restart-now = Перезагрузить сейчас
restart-start-failed = Fluxxwave не удалось перезагрузить ПК. Сохраните работу, затем перезагрузите ПК через меню «Пуск». Подробности: { $error }
preflight-title = Установка не началась
preflight-invalid-options = Fluxxwave не удалось использовать выбранные настройки. Вернитесь на шаг «Ваш выбор», проверьте их и повторите попытку. Подробности: { $error }
# $problems is a sentence or two built from preflight-problem and preflight-security.
preflight-changed = Состояние ПК изменилось после предыдущих проверок. Прежде чем повторить попытку, устраните следующее. { $problems }
preflight-problem = { $title }: { $detail }
# $summary is the Windows Security summary such as "2 still on".
preflight-security = Безопасность Windows: { $summary }.
preflight-busy = Другое окно Fluxxwave уже запускает установку. Подождите немного, затем снова нажмите «Установить Fluxxwave».
# Shown with the home-start-over button.
preflight-taken-over = Эта настройка теперь продолжается в другом окне Fluxxwave, поэтому установка не началась. Продолжите в том окне или нажмите «Начать заново», чтобы снова пройти настройку здесь.
preflight-record-unreadable = Fluxxwave не удалось проверить, выполняется ли ещё предыдущая установка, поэтому новая не запущена. Вернитесь на шаг «Подготовка», чтобы узнать, что делать дальше. Подробности: { $error }
preflight-refused = Не удалось запустить установщик. Изменения не вносились. Чтобы попробовать снова, нажмите «Установить Fluxxwave». Если ошибка повторяется, нажмите «Отправить отчёт». Подробности: { $error }
# Instead of preflight-refused when retrying an installation an earlier attempt had already started applying.
preflight-refused-resumed = Не удалось запустить установщик, поэтому эта попытка остановлена. Предыдущая попытка уже начала вносить изменения. Чтобы попробовать снова, нажмите «Установить Fluxxwave». Если ошибка повторяется, нажмите «Отправить отчёт». Подробности: { $error }
go-to-ready = Вернуться к шагу «Подготовка»
go-to-options = Вернуться к шагу «Ваш выбор»
# Replaces Continue on a choice opened from a Change link on the Install step, while Continue leads straight back there.
go-to-install = Вернуться к шагу «Установка»
output-problem-title = Не удалось прочитать ход установки
output-problem-message = Fluxxwave не удалось прочитать журнал. Это не значит, что установка остановилась. Не выключайте ПК и попробуйте открыть файл журнала. Подробности: { $error }
install-elevate-title = Для установки Fluxxwave нужны права администратора
install-no-package-title = Сначала выберите установочные файлы
install-no-package-message = Вернитесь на шаг «Подготовка», чтобы скачать Fluxxwave или открыть сохранённый пакет Fluxxwave (.apbx).
# Tester build variant of install-no-package-message.
install-no-package-bundled-message = Вернитесь на шаг «Подготовка», чтобы подготовить пакет Fluxxwave, встроенный в эту тестовую сборку.
# Step 4 when step 1 is incomplete for this session (checks or Windows updates), with go-to-ready as the button.
install-not-ready-title = Сначала завершите шаг «Подготовка»
install-not-ready-message = Прежде чем начать установку, Fluxxwave должен завершить проверку ПК и обновление Windows.
install-security-title = Перед установкой проверьте антивирусную защиту
install-security-reading = Повторная проверка четырёх переключателей защиты.
install-security-message = { $summary }. Откройте «Безопасность Windows» и убедитесь, что все четыре переключателя отключены, прежде чем начать установку.
summary-try-again = Проверьте перед повторной попыткой
summary-ready = Проверьте настройки Fluxxwave
summary-activation = Активация
summary-activation-ok = Активирована. Fluxxwave это не изменит.
summary-activation-missing = Не активирована. Можно продолжить, но Fluxxwave не активирует Windows.
summary-activation-unknown = Fluxxwave не меняет состояние активации Windows.
summary-duration = Примерное время
summary-duration-value =
    { $minutes ->
        [one] { $minutes } минута, затем перезагрузка
        [few] { $minutes } минуты, затем перезагрузка
        [many] { $minutes } минут, затем перезагрузка
       *[other] { $minutes } минуты, затем перезагрузка
    }
summary-restart-checkbox = Автоматически перезагрузить ПК после установки
summary-show-command = Показать команду установки
summary-hide-command = Скрыть команду установки
summary-copy-command-a11y = Копировать команду установки
summary-command-unavailable = Не удалось подготовить команду установки. Подробности: { $error }
summary-not-chosen = Пока не выбрано
# Accessible name of a Change link. $title is a screen-*-title message.
summary-change-a11y = Изменить: { $title }
footer-still-checking = Подготовка к установке
footer-fix-items = Чтобы продолжить, устраните проблемы в разделе «Проверки ПК»
footer-need-package = Чтобы продолжить, скачайте Fluxxwave или откройте пакет Fluxxwave
# Tester build variant of footer-need-package.
footer-need-package-bundled = Чтобы продолжить, подготовьте встроенный пакет Fluxxwave
footer-reading-security = Проверка переключателей защиты
footer-security-pending = Чтобы продолжить, отключите все четыре переключателя
footer-security-confirm = Чтобы продолжить, подтвердите состояние непроверенных переключателей
footer-install-ready = Сначала сохраните работу и закройте приложения
button-install = Установить Fluxxwave
log-earlier-lines =
    { $count ->
        [one] { $count } предыдущая строка находится в файле журнала.
        [few] { $count } предыдущие строки находятся в файле журнала.
        [many] { $count } предыдущих строк находятся в файле журнала.
       *[other] { $count } предыдущих строк находятся в файле журнала.
    }
# Appended when the log is copied. $path is a file path (text).
log-full-log-note = (полный журнал: { $path })

## The installing view

installing-checking-title = Последняя проверка
installing-checking-line = Перед внесением изменений Fluxxwave проверяет ПК. Это может занять некоторое время.
installing-title = Установка Fluxxwave
installing-phase-preflight = Проверка ПК и подготовка установочных файлов.
installing-phase-staging = Подготовка установочных файлов. Не выключайте ПК.
installing-phase-applying = Настройка Windows согласно вашему выбору. Не выключайте ПК и не отключайте его от электросети.
installing-phase-done = Завершение установки. Не выключайте ПК.
installing-installed-title = Fluxxwave установлен
# $time is a formatted clock time.
installing-started-just-now = Начало в { $time }, меньше минуты назад
installing-started-minutes =
    { $minutes ->
        [one] Начало в { $time }, { $minutes } минуту назад
        [few] Начало в { $time }, { $minutes } минуты назад
        [many] Начало в { $time }, { $minutes } минут назад
       *[other] Начало в { $time }, { $minutes } минуты назад
    }
installing-restart-auto = ПК перезагрузится автоматически, когда установка завершится. Заранее сохраните работу в других приложениях.

## The "Fluxxwave is installed" window after the restart

installed-title-version = Fluxxwave { $version } установлен
installed-title = Fluxxwave установлен
installed-ready = Всё настроено. ПК готов к работе с Fluxxwave.
installed-security-message = Вы оставили Microsoft Defender, но некоторые его средства защиты всё ещё отключены. Откройте «Безопасность Windows» и убедитесь, что включены: { $switches }.
installed-defender-removed-title = Microsoft Defender удалён
installed-defender-removed-message = ПК останется без антивирусной защиты, пока вы не установите другой антивирус. SmartScreen тоже удалён, поэтому Windows не будет предупреждать вас перед открытием неопознанных приложений и скачанных файлов.
# Home and the "Fluxxwave is installed" window, after an installation that kept Microsoft Defender,
# when it is missing and no Fluxxwave package removed it. Its title is security-banner-missing-title;
# "Report a problem" is home-report-problem, its button.
installed-defender-missing-message = Вы решили оставить Microsoft Defender, но его нет на этом ПК, и Fluxxwave его не удалял. Если другого антивируса у вас нет, установите его, чтобы защитить ПК. Если вы не удаляли Defender сами, нажмите «Сообщить о проблеме».

## Settings

settings-title = Параметры
settings-theme = Тема приложения
settings-theme-system = Как в Windows
settings-theme-light = Светлая
settings-theme-dark = Тёмная
settings-theme-contrast-note = Fluxxwave использует цвета контрастной темы Windows.
settings-theme-mica-note = Полупрозрачный фон показывается, когда выбранная здесь тема, светлая или тёмная, совпадает с темой Windows.
settings-language = Язык
settings-language-system = Как в Windows
settings-language-system-selected = { settings-language-system } ({ $language })
# Under "Match Windows": which language that gives. $language is a language's own name.
settings-language-system-detail = При выборе «Как в Windows»: { $language }
# A short tag under each language that is translated but not yet reviewed by a native speaker.
settings-language-preview-tag = Предварительный перевод
# Under the language list, once, explaining the Preview tag.
settings-language-preview-note = Предварительные переводы ещё не проверены носителями языка.
preview-notice = { $language } — предварительный перевод, в нём могут быть ошибки.
preview-notice-switch = Переключиться на английский
preview-notice-language = Изменить язык
# $tag is a language tag (text).
settings-language-unavailable = Язык { $tag } недоступен в этой версии Fluxxwave. Пока показывается английский, а ваш выбор языка сохранён.
# $languages is the Windows display-language list (text).
settings-language-windows-unmatched = Fluxxwave пока не поддерживает языки интерфейса вашей Windows ({ $languages }). Пока показывается английский.
settings-language-windows-unavailable = Не удалось определить язык интерфейса Windows. Пока Fluxxwave использует английский. Подробности: { $error }
# $locale is the regional format's own name, for example "English (United Kingdom)".
settings-language-formats = Числа, даты и время отображаются в региональном формате Windows ({ $locale }).
# Instead of settings-language-formats when the regional format writes dates or times
# right to left. $locale is the format's English name, for example "Arabic (Saudi Arabia)".
settings-language-formats-numbers-only = Числа отображаются в региональном формате Windows ({ $locale }). Даты и время показываются в стандартном формате, так как Fluxxwave пока не может отображать текст справа налево.
settings-language-contribute = Помочь с переводом Atlas на GitHub
settings-restart-label = Автоматически перезагрузить ПК после установки
settings-restart-locked = Это можно изменить после завершения установки.
settings-restart-description = Если этот параметр включён, ПК перезагрузится в течение минуты после завершения установки, и все открытые приложения закроются. Сохраните работу перед установкой.
settings-help = Помощь и обратная связь
settings-about = О приложении
settings-about-app = Fluxxwave Manager
settings-about-licence = Лицензия
settings-about-licence-value = GPL-3.0, свободное ПО с открытым исходным кодом
settings-view-source = Открыть исходный код на GitHub
# Link that opens the third-party licence notices.
settings-view-licences = Открыть сведения о лицензиях
# Under the links when Windows could not open the notices.
settings-licences-failed = Не удалось открыть сведения о лицензиях. Повторите попытку или найдите их в исходном коде на GitHub.
settings-open-data-folder = Открыть папку приложения

## Optional choices: explanations shown before selection.

consequence-disable-hibernation = Освобождает место на диске, которое используется для сохранения сеанса при гибернации. Гибернация и быстрый запуск станут недоступны.
consequence-disable-power-saving = Отключает функции энергосбережения. ПК может потреблять больше энергии, сильнее нагреваться и быстрее разряжать батарею.
consequence-disable-core-isolation = Отключает дополнительный уровень защиты Windows, включая целостность памяти. Это снижает защиту и может повлиять на приложения и игры, которым она нужна.
consequence-remove-snipping-tool = Удаляет приложение Windows для снимков и записи экрана.
consequence-uninstall-edge = Удаляет браузер Microsoft Edge. Убедитесь, что у вас есть другой браузер, или выберите его ниже.
# Instead of consequence-uninstall-edge when Fluxxwave is installed on this PC, which has the
# user's Edge data. "choose one below" refers to the browser choice under it.
consequence-uninstall-edge-data = Удаляет Microsoft Edge вместе с закладками, историей просмотров и сохранёнными паролями Edge на этом ПК. Всё, что не синхронизировано с учётной записью Майкрософт, будет потеряно. Убедитесь, что у вас есть другой браузер, или выберите его ниже.
# Under Remove Microsoft Edge in the Install step's summary, with a caution glyph.
caution-uninstall-edge = Удаляет закладки, историю просмотров и сохранённые пароли Edge на этом ПК.
consequence-install-another-browser = Выберите браузер ниже, и Fluxxwave установит его.
consequence-install-toolbox = Atlas Toolbox помогает управлять параметрами Fluxxwave. Это бета-версия, поэтому некоторые функции могут быть не доработаны.
consequence-install-eclean = Инструмент обслуживания от команды AtlasOS, который помогает поддерживать порядок на ПК после настройки. Просматривайте ненужные файлы и приложения автозагрузки. Требуется учётная запись и подключение к интернету.

# Introduction on the home page before Fluxxwave is installed.
home-intro = Fluxxwave настраивает Windows так, чтобы уменьшить фоновую активность и убрать отвлекающие элементы. Устанавливайте Fluxxwave сразу после чистой установки Windows, до того как добавите свои приложения и файлы.

## ISO creation (Beta)
iso-home-title = Установочный носитель Windows
iso-home-description = Создайте установочный файл Windows (ISO) с Fluxxwave, а затем переустановите с его помощью Windows на этом или другом ПК.
iso-open = Создать ISO с Fluxxwave
iso-title = Создать ISO с Fluxxwave
iso-beta = Бета
iso-beta-description = Проверьте ISO-образ в виртуальной машине, прежде чем использовать его на ПК. Перед установкой Windows сделайте резервную копию файлов.
iso-admin-description = Чтобы прочитать ваш ISO-образ Windows и создать новый, Fluxxwave нужны права администратора. Нажмите «Перезапустить от имени администратора», затем нажмите «Да», когда Windows запросит разрешение.
iso-files-description = Fluxxwave создаёт копию ISO-образа Windows 11 с добавленным Fluxxwave для переустановки Windows. Выберите ISO-образ Windows 11, скачанный с сайта Microsoft, скачайте последний пакет Fluxxwave или выберите уже имеющийся (.apbx), затем укажите, где сохранить новый ISO-образ.
# Tester build: no package picker.
iso-files-description-bundled = Fluxxwave создаёт копию ISO-образа Windows 11 и добавляет в неё пакет Fluxxwave, встроенный в эту тестовую сборку. Выберите ISO-образ Windows 11, скачанный с сайта Microsoft, затем укажите, где сохранить новый ISO-образ.
iso-source = ISO-образ Windows
iso-source-download = Скачать Windows 11 с сайта Microsoft
# $minimum is the first Fluxxwave version that can be used (text, such as 0.6.0).
iso-package = Пакет Fluxxwave ({ $minimum } или новее)
iso-output = Сохранить новый ISO-образ в
iso-no-file = Файл не выбран
iso-browse = Обзор
iso-save-as = Сохранить как
# Accessible name of the Browse or Save as button beside a file field: $action is
# that button's text and $field the field's label.
iso-pick-a11y = { $action }: { $field }
iso-inspect = Проверить файлы
iso-mode-title = Как вы хотите настроить Fluxxwave?
iso-mode-interactive = Выбрать настройки Fluxxwave после входа
iso-mode-interactive-description = После входа в систему Fluxxwave откроется и проведёт вас через обновления, выбор настроек и установку Fluxxwave.
iso-mode-before = Выбрать настройки Fluxxwave сейчас
iso-mode-before-description = Fluxxwave сохранит ваши настройки в ISO. После входа в систему Fluxxwave откроется и проведёт вас через обновления, а затем вы установите Fluxxwave с этими настройками.
iso-package-unsupported-title = Выберите более новый пакет Fluxxwave
# "Выбрать настройки Fluxxwave после входа" is iso-mode-interactive.
iso-package-unsupported = С этим пакетом Fluxxwave нельзя сохранить настройки Fluxxwave в ISO. Выберите более новый пакет или вариант «Выбрать настройки Fluxxwave после входа».
# Shown when Check files refuses the Fluxxwave package; $minimum as for iso-package.
iso-failed-package-unsupported = Этот пакет Fluxxwave нельзя использовать для создания ISO. Выберите пакет для Fluxxwave { $minimum } или новее.
# Tester build: the bundled Fluxxwave package cannot be swapped, so the only way on is the after-sign-in mode.
iso-package-unsupported-bundled-title = Настройки Fluxxwave нельзя сохранить в этом ISO
# "Выбрать настройки Fluxxwave после входа" is iso-mode-interactive.
iso-package-unsupported-bundled = Пакет Fluxxwave, встроенный в эту тестовую сборку, не поддерживает установку из ISO. Вместо этого выберите вариант «Выбрать настройки Fluxxwave после входа».
iso-atlas-options = Настройки Fluxxwave
iso-review = Проверить параметры ISO
iso-review-description = Создание ISO-образа ничего не устанавливает на этот ПК и не изменяет исходный ISO-образ. После этого Fluxxwave может записать новый образ на USB-накопитель, чтобы вы могли переустановить с него Windows.
iso-review-files = Файлы
iso-step-windows = Установка Windows
iso-step-review = Проверка
iso-review-package = Пакет Fluxxwave
iso-review-output = Новый ISO-образ
iso-review-editions = Редакции
iso-architecture-x64 = x64
iso-architecture-arm64 = Arm64
# A file size; $size is a formatted number (text). Megabytes below a gigabyte.
size-megabytes = { $size } МБ
size-gigabytes = { $size } ГБ
iso-review-account = Имя учётной записи
iso-review-target = Установка на
iso-review-drivers = Драйверы
iso-create = Создать ISO
iso-progress-title = Создание ISO-образа
iso-stage-inspect = Проверка ISO-образа Windows
iso-stage-copy = Копирование файлов Windows
iso-stage-add-atlas = Добавление Fluxxwave
iso-stage-master = Запись файла ISO
iso-stage-verify = Проверка нового ISO-образа
iso-stage-cleanup = Завершение
# Accessible name of one stage while the ISO is created. No "Step": the screen reader adds
# "4 of 6". $status is stepper-status-completed or one of the three below.
iso-stage-a11y = { $title }, { $status }
iso-stage-status-current = выполняется
# The stage where creating the ISO stopped with an error.
iso-stage-status-failed = ошибка
iso-stage-status-not-started = не начат
iso-progress-description = Не закрывайте Fluxxwave. Обработка больших образов может занять некоторое время.
iso-cancel = Отменить создание
iso-cancelling = Ожидание безопасной остановки
iso-cancelled = Создание ISO отменено
iso-cancelled-description = Исходный ISO-образ не изменён. Если остались временные файлы, нажмите «Открыть папку журналов», чтобы узнать, где они находятся.
iso-complete = ISO-образ готов
iso-complete-description = Создание ISO находится на этапе бета-тестирования, поэтому сначала проверьте образ в виртуальной машине. Затем нажмите «Создать установочную флешку» и перед переустановкой Windows создайте резервную копию файлов.
iso-open-folder = Показать в папке
iso-failed = Не удалось завершить создание ISO
iso-failed-description = Убедитесь, что файлы по-прежнему находятся там, где вы их выбрали, а диск для сохранения подключён, затем нажмите «Создать ISO». Если ошибка повторяется, нажмите «Отправить отчёт».
# Title while the Check files step fails; the messages below say why.
iso-check-failed = Не удалось проверить файлы
iso-check-failed-description = Убедитесь, что ISO-образ и пакет Fluxxwave по-прежнему находятся там, где вы их выбрали, и полностью скачаны, затем нажмите «Проверить файлы». Если ошибка повторяется, нажмите «Отправить отчёт».
# Title of the bar that asks for administrator permission. Its message is iso-admin-description,
# or elevation-declined after Windows refused the relaunch (UAC declined).
iso-elevation-title = Для создания ISO нужны права администратора
# Typed reasons reported by the image worker.
iso-failed-output-exists = Файл с таким именем уже существует. Нажмите «Сохранить как» и введите новое имя файла.
iso-failed-destination = Fluxxwave не может сохранить новый ISO-образ в этом месте. Нажмите «Сохранить как» и выберите папку на этом ПК, например «Загрузки». Сетевые расположения и диски в формате FAT32 или exFAT, как у многих USB-накопителей, использовать нельзя.
iso-failed-space = На целевом диске недостаточно свободного места. Освободите место или сохраните новый ISO-образ на другом диске.
# Home and LTSC are the editions ISO creation drops; the others are examples it keeps.
iso-failed-edition = Этот ISO-образ не содержит поддерживаемых редакций Windows. Редакции Windows Home и LTSC не поддерживаются. Используйте ISO-образ с другой редакцией, например Pro, Education или Enterprise.
iso-failed-customised = Этот ISO-образ уже содержит пользовательские файлы установки, например autounattend.xml. Выберите неизменённый ISO-образ Windows от Microsoft.
iso-failed-windows-unsupported = Пакет Fluxxwave не поддерживает этот образ Windows. Используйте неизменённый 64-разрядный ISO-образ Windows 11 той версии, которую поддерживает этот пакет.
iso-failed-network-architecture = Сетевые драйверы этого ПК не соответствуют архитектуре этого ISO-образа. Вернитесь назад и снимите флажок «Добавить сетевые драйверы этого ПК» или выберите ISO-образ для этого ПК.
iso-failed-unstaged = Fluxxwave не удалось подготовить рабочую папку, поэтому ничего не изменилось. Повторите попытку. Если ошибка повторяется, нажмите «Экспорт диагностики» и приложите файл к отчёту об ошибке.
iso-failed-package-changed = Пакет Fluxxwave изменился после проверки файлов. Нажмите «Изменить» рядом с разделом «Файлы», затем нажмите «Проверить файлы».
iso-diagnostics = Открыть папку журналов
iso-close-title = ISO-образ ещё создаётся
iso-close-message = Не закрывайте окно до завершения создания или отмены. Отмена произойдёт, когда текущую операцию можно будет безопасно остановить.
# On the ISO and USB pages while Fluxxwave updates Windows, or puts back Windows Update settings,
# from another page. Their controls are unavailable until it finishes.
iso-locked = Fluxxwave сейчас работает с Центром обновления Windows. Продолжить здесь можно будет после завершения.
prepare-title = Обновление Windows и приложений Store
prepare-description = Перед установкой Fluxxwave обновит Windows, Microsoft Store и ваши приложения Store. Открытые приложения Store, например Блокнот, Paint или Терминал Windows, могут закрыться во время обновления, поэтому сначала сохраните в них работу. Также может потребоваться перезагрузка ПК.
prepare-complete = Fluxxwave больше не нашёл обновлений Windows и приложений Store для установки.
prepare-reboot-title = Перезагрузите ПК, чтобы продолжить
prepare-reboot = ПК нужно перезагрузить, чтобы завершить установку обновлений. Fluxxwave сохранит уже выбранные настройки и снова откроется после входа в систему.
# $reasons: the pending-restart markers Windows set, from the prepare-reason-* names.
prepare-reboot-reasons = ПК нужно перезагрузить, чтобы завершить установку обновлений ({ $reasons }). Fluxxwave сохранит уже выбранные настройки и снова откроется после входа в систему.
# Under the restart message: the button restarts Windows without a countdown.
prepare-reboot-save-work = Сначала сохраните работу и закройте приложения. ПК перезагрузится сразу, как только вы нажмёте «Перезагрузить и продолжить».
# Shown instead of another restart when Windows asks for one again right after restarting.
prepare-restart-persists = ПК перезагрузился, но Windows по-прежнему сообщает, что требуется перезагрузка ({ $reasons }), поэтому повторная перезагрузка вряд ли поможет. Нажмите «Открыть Центр обновления Windows» и завершите всё, что там ожидает установки, затем нажмите «Повторить попытку». Если ничего не ожидает, нажмите «Отправить отчёт».
# Names of the markers Windows sets when it wants a restart. They complete
# "ПК нужно перезагрузить, чтобы завершить установку обновлений (…)"; keep them short and
# lower case where the language allows.
prepare-reason-servicing = обслуживание Windows
prepare-reason-windows-update = Центр обновления Windows
prepare-reason-file-renames = ожидающие замены файлы
prepare-reason-update-agent = служба Центра обновления Windows
prepare-reason-unknown = причина не указана
prepare-failed = Нажмите «Повторить попытку». Если ошибка повторится, завершите оставшиеся обновления в Центре обновления Windows или Microsoft Store либо нажмите «Отправить отчёт».
prepare-failed-title = Не удалось завершить некоторые обновления
# The update run ended without writing any result, for example after Fluxxwave was closed
# while it ran. "Повторить попытку" is common-try-again, the button beside it.
prepare-ended-unconfirmed = Обновление остановилось, не сообщив о результате, поэтому Fluxxwave не может подтвердить, что Windows и приложения Store обновлены. Нажмите «Повторить попытку», чтобы проверить обновления.
prepare-unconfirmed-title = Не удалось подтвердить результат обновления
prepare-affected-app = приложение, вызвавшее ошибку
prepare-app-in-use = Закройте { $app } и повторите попытку. Windows не может обновить приложение, пока оно открыто. Если не удаётся найти его окно, закройте приложение в Диспетчере задач. Если ошибка повторится, перезагрузите ПК и повторите попытку, прежде чем открывать { $app }.
prepare-install-busy = Обновлению мешает другая установка или необходимость перезагрузки. Дождитесь завершения других установок, перезагрузите ПК, если Windows попросит об этом, затем повторите попытку.
prepare-failed-component-store = Windows сообщает о повреждении хранилища компонентов, которое мешает установке обновлений, и Fluxxwave не удалось его исправить. Перезагрузите ПК, затем нажмите «Повторить попытку». Если обновления по-прежнему не устанавливаются, создайте резервную копию файлов и переустановите Windows с помощью ISO-образа с Fluxxwave.
prepare-failed-component-store-unrepairable = Windows сообщает о повреждении хранилища компонентов, которое не может исправить, поэтому не может устанавливать обновления. Создайте резервную копию файлов, затем переустановите Windows с помощью ISO-образа с Fluxxwave.
# Causes the update worker names. The worker's own English message is shown below as a detail.
prepare-failed-session-owner = Fluxxwave запущен от имени учётной записи, отличной от той, под которой выполнен вход в Windows. Войдите в Windows с учётной записью администратора, запустите в ней Fluxxwave и повторите попытку.
prepare-failed-store-missing = Microsoft Store не настроен для вашей учётной записи. Откройте Microsoft Store хотя бы раз или переустановите его, если он отсутствует, затем повторите попытку.
prepare-failed-store-battery = Microsoft Store приостановил обновления для экономии заряда батареи. Подключите ПК к электросети и повторите попытку.
prepare-failed-store-network = Microsoft Store приостановил обновления до появления нелимитного подключения. Подключитесь к нелимитной сети Wi-Fi или Ethernet и повторите попытку.
prepare-failed-store-timeout = Приложения Store ещё не обновились. Завершите оставшиеся загрузки в Microsoft Store и повторите попытку.
prepare-failed-store-passes = Microsoft Store продолжал предлагать новые обновления. Установите оставшиеся обновления в Microsoft Store и повторите попытку.
prepare-failed-manual-updates = Установку некоторых обновлений Windows нужно завершить в Центре обновления Windows. Откройте Центр обновления Windows, завершите установку и повторите попытку.
prepare-failed-windows-passes = Центр обновления Windows продолжал предлагать новые обновления. Установите оставшиеся обновления в Центре обновления Windows и повторите попытку.
prepare-failed-source-linked = Fluxxwave Manager находится в связанной папке. Закройте Fluxxwave, переместите Fluxxwave Manager в локальную папку на этом ПК, затем откройте его оттуда.
prepare-error-code = Код ошибки: { $code }
prepare-open-store = Открыть Microsoft Store
# "Найти и установить обновления" is prepare-start, its button in this state.
prepare-cancelled = Обновление остановлено. Некоторые обновления уже могли быть установлены. Прежде чем продолжить, нажмите «Найти и установить обновления», чтобы завершить обновление.
prepare-windows-search = Проверка обновлений Windows…
prepare-percent = { $percent }% этого этапа
prepare-count = Завершено обновлений: { $completed } из { $total }
prepare-bytes = Загружено { $downloaded } из примерно { $total } МБ
prepare-elapsed = Прошло: { $minutes } мин { $seconds } с
prepare-progress-waiting = Ожидание службы обновлений. Процент выполнения для этого этапа недоступен.
prepare-progress-unchanged = Ход выполнения не менялся { $minutes } мин. Крупные обновления могут занять время, поэтому не закрывайте Fluxxwave. Чтобы узнать подробности, нажмите «Открыть папку журналов».
prepare-report-delayed = Windows не сообщает о ходе выполнения уже { $seconds } с. Обновления могут ещё выполняться, поэтому не закрывайте Fluxxwave.
prepare-windows-download = Загрузка обновлений Windows…
prepare-windows-install = Установка обновлений Windows…
prepare-windows-repair = Сначала выполняется восстановление Windows: система сообщает о повреждении, которое может помешать установке обновлений. Это может занять полчаса или больше.
prepare-store-search = Проверка Microsoft Store…
prepare-store-install = Обновление Microsoft Store и приложений…
prepare-stop-description = Fluxxwave остановит обновление после завершения текущего этапа. До этого не закрывайте Fluxxwave.
prepare-stop = Остановить обновление
prepare-restart = Перезагрузить и продолжить
prepare-start = Найти и установить обновления
# Under the preparation button while it is unavailable. $check is the check-supported-build title.
prepare-blocked-source = Недоступно: эту установку нельзя продолжить. Подробнее — в сообщении вверху страницы.
prepare-needs-build-check = Станет доступно, когда будет пройдена проверка «{ $check }» в разделе «Проверки ПК».
# Under the preparation button, and under the Administrator check, while the installation files are still downloading or unpacking.
prepare-wait-for-package = Станет доступно, когда установочные файлы будут готовы.
iso-username = Имя локальной учётной записи
iso-account-description = Программа установки Windows создаст локальную учётную запись с этим именем, поэтому учётная запись Майкрософт не понадобится. При первом входе Windows предложит задать пароль.
iso-username-placeholder = Ваше имя
iso-account-empty = Чтобы продолжить, введите имя локальной учётной записи
iso-account-invalid = Используйте не более 20 символов, без пробела в начале и в конце и без этих символов: " / \ [ ] : ; | = , + * ? < > @
iso-account-trailing-dot = Имя не может заканчиваться точкой.
iso-account-reserved = Windows использует это имя для встроенной учётной записи. Выберите другое имя.
iso-privacy-defaults = Этот ISO-образ пропускает экраны лицензии, учётной записи Майкрософт и конфиденциальности в программе установки Windows, а также отключает необязательную отправку данных и персонализированные предложения.
prepare-drivers = Как устанавливать драйверы?
prepare-drivers-auto = Получать драйверы через Центр обновления Windows
prepare-drivers-auto-detail = Windows найдёт драйверы для вашего оборудования. Рекомендуется для большинства ПК.
prepare-drivers-manual = Устанавливать драйверы самостоятельно
prepare-drivers-manual-detail = Центр обновления Windows не будет устанавливать драйверы, поэтому их придётся скачивать с сайта производителя ПК или устройства. Уже установленные драйверы сохранятся.
prepare-drivers-description = Драйверы позволяют Windows работать с оборудованием, например с видеокартой, звуковой картой и адаптером Wi-Fi. Если изменить этот вариант после обновления, Fluxxwave нужно будет снова проверить обновления.
prepare-network-needed = Для обновлений нужно нелимитное подключение к интернету. Подключитесь к Wi-Fi или Ethernet, затем нажмите «Повторить попытку». Если сети Wi-Fi не отображаются, сначала установите сетевой драйвер.
# Connected, but Windows found no internet access (a captive portal, or DNS or firewall filtering).
prepare-network-limited = Windows сообщает, что у этой сети нет доступа к интернету. Выполните вход в сеть, если она этого требует, или проверьте маршрутизатор и фильтрацию на уровне DNS или брандмауэра, затем повторите попытку.
# "Лимитное подключение" is the switch's name in Windows network settings.
prepare-network-metered = Это подключение лимитное, или для него установлен лимит трафика. Подключитесь к нелимитной сети или отключите «Лимитное подключение» в параметрах сети, затем повторите попытку.
prepare-network-settings = Открыть параметры сети
iso-target-title = На каком ПК вы переустановите Windows?
iso-target-this = На этом ПК
# Under This PC (iso-target-this), before it's chosen.
iso-target-this-description = Fluxxwave может добавить в ISO драйверы Wi-Fi и Ethernet этого ПК, чтобы Windows могла подключиться к интернету сразу после переустановки.
iso-target-other = На другом ПК
iso-copy-network = Добавить сетевые драйверы этого ПК
iso-network-detail = Использует драйверы Wi-Fi и Ethernet этого ПК при установке Windows. После переустановки нужно будет снова подключиться к Wi-Fi.
iso-network-source = Источник сетевых драйверов
iso-network-installed = Использовать установленные драйверы
iso-network-updated = Сначала проверить Центр обновления Windows
iso-network-updated-detail = Загружает подходящие драйверы из Центра обновления Windows и сохраняет установленные как запасной вариант. Требуется нелимитное подключение.
iso-stage-network-drivers = Подготовка сетевых драйверов
iso-network-failed = Не удалось подготовить сетевые драйверы. Проверьте диагностику или вернитесь назад и измените вариант подготовки сетевых драйверов.
# Under iso-complete when Include this PC's network drivers was chosen but the adapters use
# drivers that come with Windows, so none were added.
iso-network-inbox = Сетевые адаптеры этого ПК используют драйверы, входящие в состав Windows, поэтому добавлять их в ISO не нужно.
iso-mode-desktop = Завершить настройку до открытия рабочего стола
iso-mode-desktop-description = Fluxxwave сохранит ваши настройки в ISO. После входа в систему Fluxxwave завершит обновления и установку до открытия рабочего стола Windows.
desktop-setup-description = Завершите настройку ПК. Настройки Fluxxwave сохранены; при необходимости можно вернуться в Windows.
desktop-setup-exit = Продолжить в Windows

# Windows installation USB (Beta)
usb-title = Создать установочную флешку
usb-existing = Создать флешку из готового ISO
usb-description = Запишите ISO-образ на USB-накопитель, чтобы переустановить с него Windows. Чтобы одновременно установить Fluxxwave, используйте ISO-образ, созданный в Fluxxwave.
# Button that opens the file picker for an ISO, and the Open button of that picker, on the USB
# and ISO pages.
usb-choose-iso = Выбрать ISO
usb-drive = USB-накопитель
# $min and $max are formatted numbers (text), in gigabytes and terabytes.
usb-empty = USB-накопители не найдены. Подключите USB-накопитель объёмом не менее { $min } ГБ, затем нажмите «Обновить». Накопители объёмом более { $max } ТБ, накопители только для чтения и диск, с которого запущена Windows, не отображаются.
usb-refresh = Обновить
# Shown when the drive list could not be read.
usb-scan-failed = Убедитесь, что накопитель подключён, затем нажмите «Обновить». Чтобы узнать подробности, нажмите «Открыть папку журналов».
usb-scan-failed-title = Не удалось получить список USB-накопителей
# Parts of a drive's detail line, joined by usb-detail-separator; empty parts are left out.
# $size is a formatted number of gigabytes (text); $volumes and $serial are text.
usb-drive-size = { $size } ГБ
usb-drive-serial = Серийный номер: { $serial }
usb-detail-separator = { " · " }
usb-review = Проверить выбор
usb-erase-title = Стереть этот USB-накопитель?
usb-erase-description = Всё содержимое накопителя { $drive } ({ $size } ГБ), включая все файлы и разделы, будет безвозвратно удалено. Сначала скопируйте всё, что нужно сохранить, на другой диск. Ваш ISO-образ сохранится.
usb-layout = Fluxxwave использует до 32 ГБ накопителя, а остальное место оставляет свободным. USB-накопитель работает на ПК, которые загружаются в режиме UEFI, необходимом для Windows 11.
usb-ack = Я понимаю, что всё содержимое этого USB-накопителя будет удалено
usb-write = Стереть и создать флешку
usb-stage-prepare = Подготовка установочных файлов…
usb-stage-format = Форматирование USB-накопителя…
usb-stage-copy = Копирование установочных файлов…
usb-stage-verify = Проверка USB-накопителя…
usb-working = Не закрывайте Fluxxwave и не отключайте USB-накопитель. Если отменить создание, незавершённый накопитель нельзя будет использовать для установки Windows.
# Titles of the error bar, the success bar and the close prompt while a USB is being written.
usb-failed-title = Не удалось завершить создание флешки
usb-complete-title = Флешка готова
usb-close-title = Создание флешки ещё продолжается
# After erasing may have begun.
usb-failed = Накопитель, возможно, уже стёрт, поэтому его пока нельзя использовать для установки Windows. Убедитесь, что он подключён, затем нажмите «Проверить выбор», чтобы повторить попытку. Если вы подключили его заново, сначала нажмите «Обновить» и снова выберите его.
# Before anything on the drive was changed: in general, then for the reasons the writer reports.
usb-failed-unchanged = USB-накопитель не был изменён. Нажмите «Открыть папку журналов», чтобы узнать причину ошибки, затем нажмите «Проверить выбор», чтобы повторить попытку.
usb-failed-iso = Этот ISO-образ нельзя использовать для создания установочной флешки. Выберите ISO-образ, созданный в Fluxxwave, или ISO-образ Windows 11 от Microsoft той версии, которую поддерживает Fluxxwave. USB-накопитель не был изменён.
usb-failed-location = ISO-образ или Fluxxwave Manager находится на этом USB-накопителе, в сетевом расположении или в связанной папке. Переместите его в локальную папку на этом ПК и повторите попытку. USB-накопитель не был изменён.
usb-failed-space = На диске Windows недостаточно свободного места для подготовки установочных файлов. Освободите место и повторите попытку. USB-накопитель не был изменён.
usb-failed-fit = Установочные файлы не помещаются на этот USB-накопитель. Используйте накопитель большего объёма и повторите попытку. USB-накопитель не был изменён.
usb-failed-drive-changed = USB-накопитель был извлечён, подключён заново или заменён после чтения списка. Нажмите «Обновить», снова выберите накопитель, затем нажмите «Проверить выбор». USB-накопитель не был изменён.
usb-cancelled = На накопителе могут остаться неполные установочные файлы. Создайте его заново перед установкой Windows.
usb-cancelled-title = Создание флешки отменено
usb-cancelled-unchanged = USB-накопитель не был изменён.
usb-complete = Fluxxwave проверил все файлы. Нажмите «Извлечь USB-накопитель», затем создайте резервную копию файлов на ПК, где нужно переустановить Windows. Подключите к нему накопитель и загрузите тот ПК с USB-накопителя через меню загрузки (обычно клавиша F12, F11 или Esc при запуске ПК).
usb-eject = Извлечь USB-накопитель
usb-ejected = Теперь USB-накопитель можно отключить. Создайте резервную копию файлов на ПК, где нужно переустановить Windows. Затем загрузите тот ПК с USB-накопителя через меню загрузки (обычно клавиша F12, F11 или Esc при запуске).
usb-eject-failed = Закройте файлы и окна, которые его используют, и повторите попытку.
usb-eject-failed-title = Не удалось извлечь USB-накопитель
ready-fresh-title = Fluxxwave предназначен для чистой установки Windows
ready-fresh-description = Если вы уже пользовались Windows на этом ПК, создайте резервную копию файлов и переустановите Windows, прежде чем продолжить. Сначала убедитесь, что проверка «Совместимость с Windows» в разделе «Проверки ПК» пройдена, чтобы переустановить поддерживаемую версию.
# Home, LTSC and Server are the editions the check refuses; the others are examples of
# editions it accepts. Keep edition names as Windows shows them.
detail-edition-unsupported = Редакции Windows 11 Home, LTSC и Server не поддерживаются. Используйте другую редакцию, например Pro, Education или Enterprise. Если Windows не удалось определить редакцию, устраните эту проблему перед продолжением.
install-source-title = Установка недоступна
install-source-unsupported = Fluxxwave { $source } нельзя обновить напрямую до { $target }. Чтобы использовать эту версию, создайте резервную копию файлов и переустановите Windows.
# Before a package is chosen, so the version on offer isn't known yet.
install-source-unsupported-any = Fluxxwave { $source } нельзя обновить напрямую. Чтобы использовать более новую версию, создайте резервную копию файлов и переустановите Windows.
# "Открыть файл пакета" is package-open-file. $folder is a folder path (text).
install-source-resume = Установка Fluxxwave { $target } не была завершена, и завершить её можно только с помощью пакета Fluxxwave { $target }. Нажмите «Открыть файл пакета» и выберите этот пакет Fluxxwave (.apbx). Если его скачал Fluxxwave, он находится в папке { $folder }.
# Tester build: only the bundled Fluxxwave package can be installed.
install-source-resume-bundled = Установка Fluxxwave { $target } не была завершена. Эта тестовая сборка может установить только встроенный пакет Fluxxwave, поэтому завершите установку с помощью пакета Fluxxwave { $target } в релизной сборке Fluxxwave Manager.
install-source-unknown = Fluxxwave не удалось определить, что уже установлено на этом ПК, поэтому пока он ничего не будет устанавливать. Нажмите «Отправить отчёт», чтобы команда Atlas могла помочь.
# $problem is one of the install-source-* messages; $error is a raw error message (text).
install-source-details = { $problem } Подробности: { $error }
iso-edition-selection = Включены только поддерживаемые редакции. При установке Windows выберите редакцию, для которой у вас есть лицензия Windows.
detail-windows-preview = Сборки Insider не поддерживаются. Используйте общедоступную версию Windows 11.
detail-windows-release-unknown = Fluxxwave не удалось подтвердить, что эта сборка Windows общедоступна. Подключитесь к интернету и повторите проверку.
# $build is this PC's Windows build and update number, such as 26300.9807 (text).
detail-windows-release-unlisted = Сборки { $build } нет в списке общедоступных выпусков Windows 11 от Microsoft, поэтому Fluxxwave пока нельзя на неё установить. Сборки Release Preview и другие предварительные сборки не поддерживаются. Нажмите «Проверить снова», когда Microsoft добавит эту сборку в список.
iso-release-unknown = Fluxxwave не удалось подтвердить, что этот ISO-образ — общедоступный выпуск Windows 11, поддерживаемый пакетом Fluxxwave. Подключитесь к интернету и снова нажмите «Проверить файлы». Если ошибка повторится, скачайте ISO-образ с сайта Microsoft заново.
iso-release-unlisted = Сборки Windows 11 из этого ISO-образа нет в списке общедоступных выпусков от Microsoft. Сборки Release Preview и другие предварительные сборки не поддерживаются. Скачайте ISO-образ с сайта Microsoft или снова нажмите «Проверить файлы», когда Microsoft добавит эту сборку в список.
prepare-previous-worker = Ранее запущенные обновления ещё выполняются. Fluxxwave дождётся их завершения, после чего можно будет снова проверить обновления.

ready-used-windows-title = Похоже, Windows на этом ПК уже использовалась
ready-used-windows-description = Windows на этом ПК установлена не менее недели назад или в ней уже есть несколько приложений. Установка Fluxxwave на такую систему не поддерживается и настоятельно не рекомендуется: имеющиеся приложения и параметры могут работать не так, как ожидается, а Fluxxwave удаляет OneDrive, поэтому файлы в нём перестанут синхронизироваться, а папки «Рабочий стол», «Документы» и «Изображения» могут выглядеть пустыми. Сначала создайте резервную копию файлов и переустановите Windows или продолжайте, только если принимаете этот риск.
ready-used-windows-dismiss = Всё равно продолжить

prepare-resumed = ПК перезагрузился, и Fluxxwave восстановил уже выбранные настройки. Нажмите «Продолжить обновления», чтобы завершить обновление перед установкой Fluxxwave.
prepare-continue = Продолжить обновления
prepare-saving-restart = Сохранение настроек и подготовка к повторному открытию Fluxxwave после перезагрузки Windows…
prepare-restart-save-failed = Не удалось сохранить настройки. Повторите попытку перед перезагрузкой.
prepare-restart-registration-failed = Настройки сохранены, но Fluxxwave не удалось настроить автоматическое открытие после перезагрузки. Повторите попытку или перезагрузите ПК самостоятельно и откройте Fluxxwave после входа в систему.
prepare-restart-source-linked = Настройки сохранены, но пока Fluxxwave Manager находится в связанной папке, Fluxxwave не может настроить автоматическое открытие после перезагрузки. Закройте Fluxxwave и переместите Fluxxwave Manager в локальную папку на этом ПК. Затем откройте его оттуда или перезагрузите ПК самостоятельно и откройте его оттуда после входа в систему.
prepare-restart-failed = Fluxxwave не удалось перезагрузить ПК. Повторите попытку или перезагрузите ПК через меню «Пуск». Настройки сохранены, и Fluxxwave снова откроется после входа в систему.
diagnostics-export = Экспорт диагностики
diagnostics-exporting = Сбор диагностики…
diagnostics-privacy = Конфиденциально отправьте отчёт команде Atlas или экспортируйте ZIP-архив с диагностикой, чтобы поделиться им, когда будете обращаться за помощью. Fluxxwave удаляет из него имя пользователя, имя ПК и адреса электронной почты.
# Title of the result bar after an export; its button is iso-open-folder.
diagnostics-saved = ZIP-архив с диагностикой создан
diagnostics-failed-title = Не удалось экспортировать диагностику
# $error is the raw error (text).
diagnostics-failed = Убедитесь, что на диске ПК есть свободное место, затем повторите попытку. Подробности: { $error }

## Tester builds (embedded-playbook feature)

# One line of chrome under the title bar on a release-candidate build.
rc-banner = Тестовая сборка Fluxxwave { $release }. Это приложение устанавливает только встроенный пакет Fluxxwave.
home-status-bundled = Тестовая сборка { $release }
package-bundled = Fluxxwave { $version }, встроенный в эту тестовую сборку, готов к установке.
rc-about-release = Тестовая сборка
rc-about-commit = Исходный коммит
rc-about-package = Встроенный пакет Fluxxwave (SHA-256)
iso-package-bundled = Пакет Fluxxwave, встроенный в эту тестовую сборку

check-user-account = Учётная запись
detail-user-account-ok = Контроль учётных записей включён, и ваша учётная запись готова к установке.
detail-user-account-not-ready = Включите контроль учётных записей (UAC), перезагрузите ПК и повторите попытку. Если вы используете встроенную учётную запись Администратор, войдите под другой учётной записью администратора.
detail-user-account-work-or-school = Fluxxwave нельзя установить под рабочей или учебной учётной записью (Microsoft Entra ID). Войдите под локальной учётной записью или учётной записью Майкрософт и повторите попытку.
detail-user-account-unknown = Fluxxwave не удалось проверить вашу учётную запись. Перезагрузите ПК, затем снова откройте Fluxxwave и повторите проверку. Если ошибка повторяется, нажмите «Отправить отчёт». Сообщение Windows: { $error }

footer-prepare-required = Чтобы продолжить, завершите обновление Windows и приложений Store
footer-prepare-stopping = Остановка обновления после текущего этапа…
resume-choices-title = Продолжение предыдущей установки
resume-choices-detail = Чтобы завершить ту установку, Fluxxwave восстановил настройки, выбранные в прошлый раз. Изменить их на шаге «Ваш выбор» можно будет только после её завершения.

## Voluntary reports
report-title = Отправить отчёт
report-received = Отчёт получен
report-reference = Сохраните этот номер, если будете обращаться к команде Atlas по поводу этого отчёта. Если вы оставили контактные данные, команда может ответить по ним, но ответ не гарантируется.
# Accessible name of the Copy button beside the report reference.
report-copy-reference = Копировать номер отчёта
report-another = Отправить ещё один отчёт
# Label of the choice between the two kinds of report.
report-kind = Что вы хотите отправить?
report-kind-issue = Сообщение о проблеме
report-kind-suggestion = Предложение
# $min and $max are numbers: the message lengths the report service accepts.
report-intro = Опишите, что произошло или что вы хотели бы изменить ({ $min }–{ $max } символов). Не указывайте в сообщении пароли.
report-message = Ваше сообщение
report-message-placeholder = Когда я…
report-contact = Контактные данные (необязательно)
report-contact-placeholder = Электронная почта или имя пользователя Discord
report-attach = Приложить диагностику
report-attach-description = Журналы и сведения о системе, которые помогают найти причину. Fluxxwave удаляет имя пользователя, имя ПК, адреса электронной почты и известные пароли или ключи. Сведения об ошибках, модели оборудования и названия приложений сохраняются. Перед отправкой ZIP-архив можно проверить.
report-prepare = Подготовить диагностику
report-review = Проверить ZIP
report-prepare-failed-title = Не удалось подготовить диагностику
# $error is a raw error message (text).
report-prepare-failed = Подготовьте диагностику снова или снимите флажок «Приложить диагностику», чтобы отправить отчёт без неё. Подробности: { $error }
report-privacy = Отчёт конфиденциально передаётся команде Atlas на reports.atlasos.net. Сообщение и контактные данные отправляются в том виде, в каком вы их ввели. Чтобы разобраться в проблеме, команда может использовать ИИ-сервисы сторонних компаний. Они получают ваше сообщение и диагностику, но не контактные данные. Отчёты удаляются через 90 дней, а в журналах безопасности сервера может сохраняться ваш IP-адрес.
report-website = Конфиденциальность и сайт отчётов
report-consent = Я даю согласие на отправку этого отчёта и приложенной диагностики команде Atlas
report-failed = Сообщение сохранено. Проверьте подключение к интернету, затем нажмите «Повторить попытку» или отправьте отчёт через сайт отчётов.
report-failed-busy = Служба отчётов занята. Сообщение сохранено. Повторите попытку позже.
report-failed-outdated = Эта версия Fluxxwave Manager больше не может отправлять отчёты. Сообщение сохранено: скопируйте его на сайт отчётов. Если вы прикладывали диагностику, нажмите «Проверить ZIP» и приложите ZIP-архив там же.
report-failed-diagnostics = Подготовленную диагностику не удаётся отправить. Сообщение сохранено. Подготовьте диагностику снова или снимите флажок «Приложить диагностику».
# Link under a report that wasn't sent.
report-failed-website = Открыть сайт отчётов
report-sending = Отправка…
report-send = Отправить отчёт

# $min and $max are numbers: the message lengths the report service accepts.
report-validation-message = Введите от { $min } до { $max } символов.

# $max is a number: the longest contact details the report service accepts.
report-validation-contact = Укажите контактные данные длиной до { $max } символов.

report-validation-consent = Подтвердите согласие на отправку этого отчёта.

report-failed-title = Отчёт не отправлен

## Windows version update
home-plan-intro = Это обновление состоит из двух частей. Ваши файлы и приложения сохранятся. Если обновление Windows отменит какие-либо изменения Fluxxwave, Fluxxwave вернёт их.
home-plan-windows-title = Windows 11, версия { $release }
home-plan-windows-detail = Fluxxwave установит её через Центр обновления Windows. Чтобы завершить установку, ПК перезагрузится.
home-plan-windows-optional = Рекомендуется. Fluxxwave установит её через Центр обновления Windows. Чтобы завершить установку, ПК перезагрузится.
home-plan-atlas-title = Fluxxwave { $version }
home-plan-atlas-detail = Fluxxwave обновит свои файлы и сохранит выбранные вами настройки. В конце ПК перезагрузится.
home-end-of-updates-title = Windows 11 версии { $current } перестанет получать обновления безопасности { $date }
home-end-of-updates-past-title = Windows 11 версии { $current } больше не получает обновления безопасности
home-end-of-updates-message = При обновлении до Fluxxwave { $version } этот ПК также перейдёт на Windows 11 версии { $release }, которая будет получать обновления безопасности до { $until }.
install-windows-edition = Fluxxwave { $version } поддерживает Windows 11 Pro, Enterprise и Education. На этом ПК установлена { $product }, поэтому установить на него Fluxxwave нельзя.
install-windows-edition-ending = Fluxxwave { $version } поддерживает Windows 11 Pro, Enterprise и Education. На этом ПК установлена { $product }, поэтому установить на него Fluxxwave нельзя. Windows 11 версии { $current } перестанет получать обновления безопасности { $date }. Центр обновления Windows может перевести этот ПК на более новую версию.
install-windows-no-path = Для Fluxxwave { $version } нужна Windows 11 версии { $releases }, а Центр обновления Windows не может перевести на неё этот ПК с установленной сейчас Windows. Чтобы использовать Fluxxwave { $version }, создайте резервную копию файлов и переустановите Windows с помощью ISO-образа с Fluxxwave.
home-update-access-title = Параметры Центра обновления Windows изменены для обновления Fluxxwave
home-update-access-not-offered = Fluxxwave включил Центр обновления Windows, чтобы перевести этот ПК на Windows 11 версии { $release }, но Центр обновления Windows её ещё не предложил. Нажмите «Проверить снова» или «Вернуть параметры».
home-update-access-before = Fluxxwave включил Центр обновления Windows, чтобы перевести этот ПК на Windows 11 версии { $release }, но ещё не завершил обновление. Продолжите обновление или нажмите «Вернуть параметры».
home-update-access-after = На этом ПК установлена Windows 11 версии { $release }. Завершите установку Fluxxwave или нажмите «Вернуть параметры».
home-update-access-plain = Fluxxwave включил Центр обновления Windows, чтобы установить обновления, но ещё не завершил их установку. Продолжите обновление или нажмите «Вернуть параметры».
home-update-access-unreadable = Fluxxwave не удаётся прочитать собственную запись об изменённых им параметрах Центра обновления Windows, поэтому он ничего не будет менять или возвращать. Нажмите «Отправить отчёт», чтобы команда Atlas могла помочь.
home-update-access-failed = Fluxxwave не удалось вернуть параметры. Повторите попытку или нажмите «Отправить отчёт». Подробности: { $error }
home-update-access-install-active = Сначала завершите установку Fluxxwave. На её последнем этапе Fluxxwave вернёт эти параметры.
home-continue-update = Продолжить обновление
home-put-back = Вернуть параметры
home-putting-back = Возврат параметров…
windows-card-title = Windows 11, версия { $release }
windows-card-required = Для Fluxxwave { $version } нужна более новая версия Windows. Обновляя Windows в разделе ниже, Fluxxwave также установит Windows 11 версии { $release } через Центр обновления Windows.
windows-card-question = Какую версию Windows использовать на этом ПК?
windows-choice-move = Обновить до Windows 11 версии { $release }
windows-choice-move-detail = Рекомендуется. Обновления безопасности до { $date }. Ещё одна перезагрузка.
windows-choice-keep = Оставить Windows 11 версии { $current }
windows-choice-keep-detail = ПК останется на этой версии. Центр обновления Windows не будет переводить его на более новую версию, поэтому для перехода позже понадобится ещё одно обновление в Fluxxwave Manager.
windows-card-facts = Что изменится
windows-fact-keep = Ваши файлы и приложения сохранятся. Если обновление отменит какие-либо изменения Fluxxwave, Fluxxwave вернёт их при установке.
windows-fact-restart = Чтобы завершить обновление, ПК перезагрузится ещё как минимум один раз.
transition-offer-expectation = Обычно Центр обновления Windows предлагает новую версию в течение нескольких минут, но ожидание может занять до 2 часов; Fluxxwave сам будет ждать и проверять.
windows-fact-stays = После этого Windows останется на версии { $release } и не будет сама переходить на более новую версию.
windows-fact-removed = В версии { $release } нет Windows PowerShell 2.0 и средства WMIC.
windows-card-undo = Чтобы позже отменить обновление, удалите его в журнале обновлений: «Параметры» > «Центр обновления Windows» > «Журнал обновлений». Если при обновлении Windows переустановилась, вместо этого в течение 10 дней нажмите «Назад» в разделе «Параметры» > «Система» > «Восстановление». Fluxxwave { $version } не поддерживает версию { $current }, поэтому не отменяйте обновление после установки Fluxxwave { $version }.
windows-card-undo-optional = Чтобы позже отменить обновление, удалите его в журнале обновлений: «Параметры» > «Центр обновления Windows» > «Журнал обновлений». Если при обновлении Windows переустановилась, вместо этого в течение 10 дней нажмите «Назад» в разделе «Параметры» > «Система» > «Восстановление».
windows-terms = Я принимаю условия лицензии на программное обеспечение Microsoft для Windows 11 версии { $release }
windows-terms-link = Прочитать условия лицензии
windows-card-locked = Чтобы оставить версию { $current }, нажмите «Отмена», затем «Остановить обновление».
prepare-description-transition = Перед установкой Fluxxwave установит ожидающие обновления Windows, затем Windows 11 версии { $release }, а затем обновит Microsoft Store и ваши приложения Store. Открытые приложения Store могут закрыться во время обновления, поэтому сначала сохраните в них работу. ПК перезагрузится как минимум один раз.
prepare-start-transition = Обновить Windows до версии { $release }
prepare-needs-terms = Станет доступно, когда вы примете условия лицензии в разделе «Windows 11, версия { $release }».
ready-banner-not-offered-message = Что можно сделать сейчас, описано в разделе «Обновление Windows и приложений Store».
ready-banner-transition-failed-message = Что делать дальше, описано в разделе «Обновление Windows и приложений Store».
ready-banner-terms-title = Примите условия лицензии, чтобы продолжить
ready-banner-terms-message = Они находятся ниже на этой странице, в разделе «Windows 11, версия { $release }». Затем нажмите «Обновить Windows до версии { $release }».
access-notice-title = Fluxxwave временно включит Центр обновления Windows
access-off = Центр обновления Windows на этом ПК отключён. Fluxxwave снова включит его на время обновления Windows.
access-paused = Обновления Windows на этом ПК приостановлены. Fluxxwave возобновит их на время обновления Windows.
access-delayed = Ежемесячные обновления на этом ПК отложены. Fluxxwave отменит отсрочку на время обновления Windows.
access-back-chosen = После установки Fluxxwave { $version } эти параметры вернутся в состояние, которое вы выбрали.
access-back = После установки Fluxxwave { $version } эти параметры вернутся в прежнее состояние.
access-back-stop = Если вы остановите обновление раньше, Fluxxwave вернёт их.
prepare-reboot-transition = Windows 11 версии { $release } установлена. Чтобы завершить её установку, нажмите «Перезагрузить и продолжить». Fluxxwave снова откроется после входа в систему.
prepare-reboot-commit = Чтобы завершить установку версии { $release }, Windows нужна ещё одна перезагрузка. Fluxxwave снова откроется после входа в систему.
prepare-restart-commit-failed = Windows не удалось подготовить версию { $release } к завершению установки при перезагрузке, поэтому ПК не перезагрузился. Чтобы повторить попытку, нажмите «Перезагрузить и продолжить».
prepare-reason-feature-update = новая версия Windows
prepare-reason-feature-commit = завершение установки новой версии Windows
prepare-resumed-transition = ПК перезагрузился. Нажмите «Продолжить обновления», чтобы Fluxxwave проверил, что установка Windows 11 версии { $release } завершена, и установил оставшиеся обновления.
prepare-waiting-offer = Ожидание, пока Центр обновления Windows предложит Windows 11 версии { $release }. Обычно это занимает несколько минут, но может занять до 2 часов. Можно продолжать пользоваться ПК, но не закрывайте Fluxxwave.
prepare-resumed-before-move = ПК перезагрузился, чтобы завершить установку обновлений. Нажмите «Продолжить обновления», чтобы Fluxxwave установил оставшиеся обновления, а затем Windows 11 версии { $release }.
prepare-not-offered-title = Ожидание, пока Центр обновления Windows предложит Windows 11 версии { $release }
prepare-transition-failed-title = Windows не удалось перейти на версию { $release }
prepare-failed-feature-not-offered = Центр обновления Windows может предложить Windows 11 версии { $release } не сразу. На ПК по-прежнему установлена версия { $current }.
prepare-offer-rechecking = Fluxxwave повторяет проверку каждые 10 минут и сам продолжит обновление, как только Центр обновления Windows предложит новую версию. Можно также нажать «Проверить снова».
prepare-offer-waited =
    { $minutes ->
        [one] Fluxxwave ждёт уже { $minutes } минуту.
        [few] Fluxxwave ждёт уже { $minutes } минуты.
        [many] Fluxxwave ждёт уже { $minutes } минут.
       *[other] Fluxxwave ждёт уже { $minutes } минуты.
    }
prepare-offer-next-check =
    { $minutes ->
        [one] Следующая проверка через { $minutes } минуту.
        [few] Следующая проверка через { $minutes } минуты.
        [many] Следующая проверка через { $minutes } минут.
       *[other] Следующая проверка через { $minutes } минуты.
    }
prepare-offer-checking-now = Идёт проверка.
prepare-offer-check-again = Чтобы проверить сейчас, нажмите «Проверить снова».
prepare-offer-wait-ended-title = Центр обновления Windows пока не предложил Windows 11 версии { $release }
prepare-offer-wait-ended = Центр обновления Windows не предложил Windows 11 версии { $release } в течение 2 часов, поэтому Fluxxwave прекратил ожидание и вернул параметры Центра обновления Windows. Нажмите «Проверить снова» позже. Если вы не можете ждать, создайте резервную копию файлов и переустановите Windows с помощью ISO-образа с Fluxxwave.
prepare-offer-wait-put-back-failed = Центр обновления Windows не предложил Windows 11 версии { $release } в течение 2 часов, и Fluxxwave не удалось вернуть параметры Центра обновления Windows. Чтобы повторить попытку, нажмите «Вернуть параметры». Подробности: { $error }
prepare-failed-feature-hardware = Этот ПК не соответствует требованиям Windows 11 к оборудованию ({ $missing }), поэтому Центр обновления Windows не переведёт его на версию { $release }. На ПК по-прежнему установлена версия { $current }. Чтобы использовать Fluxxwave { $version }, создайте резервную копию файлов и переустановите Windows с помощью ISO-образа с Fluxxwave.
hardware-tpm = TPM 2.0
hardware-uefi = встроенное ПО UEFI
prepare-failed-feature-hidden = Windows 11 версии { $release } скрыта в Центре обновления Windows на этом ПК. Снова сделайте её видимой с помощью средства, которым вы её скрыли, затем нажмите «Повторить попытку».
prepare-failed-feature-disk-space = Для этого обновления Windows нужно не менее { $needed } ГБ свободного места на диске { $drive }, а сейчас свободно { $free } ГБ. Fluxxwave ничего не изменил. Освободите место, затем нажмите «Повторить попытку».
prepare-failed-feature-servicing = Windows сообщает о повреждении хранилища компонентов, которое не может исправить, поэтому Fluxxwave ничего не изменил. Восстановите Windows, затем нажмите «Повторить попытку».
prepare-failed-feature-managed = Этот ПК получает обновления с сервера обновлений организации, поэтому Fluxxwave не может перевести его на версию { $release }. Fluxxwave ничего не изменил.
prepare-failed-feature-policy = Что-то на этом ПК снова и снова отменяет изменения, которые Fluxxwave вносит в { $setting }, поэтому Fluxxwave не может обновить Windows. Если этим ПК управляет организация, обратитесь к её администратору. Когда вы остановите обновление, Fluxxwave вернёт всё, что изменил.
prepare-failed-feature-blocked = Параметр, который Fluxxwave не изменял, не даёт Центру обновления Windows работать: { $setting }. Измените его так, чтобы Центр обновления Windows мог работать, затем нажмите «Повторить попытку».
prepare-failed-feature-rolled-back = Windows не удалось завершить установку версии { $release } во время перезагрузки, и система вернулась к версии { $current }. Ваши файлы и приложения не затронуты. Нажмите «Повторить попытку» или «Отправить отчёт».
prepare-failed-feature-components-lost = После обновления Windows часть изменений Fluxxwave пропала, но признаков переустановки Windows нет, поэтому Fluxxwave не может определить, что произошло. Fluxxwave { $version } не установлен. Нажмите «Отправить отчёт», чтобы команда Atlas могла помочь.
prepare-failed-feature-build = Версия Windows на этом ПК изменилась, пока Fluxxwave её обновлял. Нажмите «Вернуть параметры», затем начните заново с главной страницы.
prepare-failed-feature-journal = Fluxxwave не удаётся прочитать собственную запись об изменённых им параметрах Центра обновления Windows, поэтому он ничего не будет менять или возвращать. Нажмите «Отправить отчёт», чтобы команда Atlas могла помочь.
prepare-failed-feature-pin = У политики Центра обновления Windows на этом ПК ({ $setting }) задано значение, которое Fluxxwave не может сохранить, поэтому Fluxxwave ничего не изменил. Нажмите «Отправить отчёт», чтобы команда Atlas могла помочь.
prepare-failed-feature-terms = Примите условия лицензии для Windows 11 версии { $release }, затем нажмите «Повторить попытку».
prepare-failed-feature-failed = Windows не удалось установить версию { $release }. На ПК по-прежнему установлена версия { $current }. Нажмите «Повторить попытку». Если ошибка повторится, нажмите «Отправить отчёт».
prepare-check-again = Проверить снова
prepare-keep-version = Оставить версию { $current }
stop-update-title = Остановить обновление до Fluxxwave { $version }?
stop-update-title-windows = Остановить обновление Windows?
stop-update-before = Fluxxwave вернёт изменённые им параметры Центра обновления Windows. Уже установленные обновления Windows останутся, а на ПК сохранится Windows 11 версии { $current }.
stop-update-after = На ПК останется Windows 11 версии { $release }. Fluxxwave вернёт изменённые им параметры Центра обновления Windows.
stop-update-access = Fluxxwave вернёт изменённые им параметры Центра обновления Windows. Уже установленные обновления Windows останутся.
stop-update-keep = Не останавливать
# Dialog shown when the window is closed while Windows Update is turned on for an update; its
# buttons are window-close-keep and window-close-put-back.
window-close-update-access-title = Закрыть Fluxxwave?
window-close-update-access-message = Перед закрытием Fluxxwave вернёт изменённые им параметры Центра обновления Windows. Начать обновление снова можно с главной страницы.
window-close-put-back = Вернуть и закрыть
window-close-put-back-failed-title = Закрыть, не вернув параметры?
window-close-put-back-failed-message = Если закрыть Fluxxwave сейчас, параметры Центра обновления Windows останутся в том виде, в каком их изменил Fluxxwave. Когда вы снова откроете Fluxxwave, на главной странице будет предложено их вернуть.
installed-update-off-again = Центр обновления Windows снова отключён, как вы выбрали. Пока он отключён, ПК не получает обновления безопасности.
installed-update-paused-again = Обновления Windows снова приостановлены, как вы выбрали. Пока они приостановлены, ПК не получает обновления безопасности.
detail-build-transition = На этом ПК установлена Windows 11 версии { $current }, которую эта версия Fluxxwave не поддерживает. Fluxxwave переведёт Windows на версию { $release }, когда будет обновлять Windows в разделе ниже.
report-transition-intro = Обновление Windows для Fluxxwave не завершено. Подробности для команды Atlas:
mode-rebase = Переустановка после обновления Windows
history-mode-rebase = переустановка после обновления Windows
ready-rebase-title = Windows переустановилась во время обновления
ready-rebase-message = Windows 11 версии { $release } заменила прежнюю Windows на этом ПК, поэтому часть изменений Fluxxwave пропала. Fluxxwave { $version } вернёт их с настройками, выбранными вами для Fluxxwave { $previous }.
update-path-update-title = Как вы хотите обновиться до Fluxxwave { $version }?
update-path-reinstall-title = Как вы хотите переустановить Fluxxwave { $version }?
update-path-keep = Оставить мои настройки
update-path-keep-detail = Fluxxwave оставит все настройки такими, какие они сейчас на этом ПК, и ничего в них не изменит. Это более быстрый способ.
update-path-choose = Выбрать заново
update-path-choose-detail = Заново выберите все настройки: изначально они соответствуют текущему состоянию этого ПК. Fluxxwave применит каждую из них так же, как при новой установке. Ваши приложения, файлы, меню «Пуск», панель задач и тема останутся без изменений, как и параметры, которые вы изменили в папке Fluxxwave и которых эти настройки не касаются.
update-path-now-title = Ваши текущие настройки на этом ПК
update-path-unknown = Fluxxwave не может определить это по ПК, поэтому спросит вас
update-path-differs = Запись Fluxxwave о вашей последней установке не совпадает с состоянием этого ПК для следующих настроек: { $choices }. В списке показано текущее состояние ПК.
keep-choices-title = Настройки остаются прежними
keep-choices-partial = Fluxxwave оставит то, что сейчас на этом ПК. Следующие настройки Fluxxwave не может определить по ПК, поэтому выберите их сами: { $missing }
choose-again-title = Повторный выбор настроек
choose-again-detail = Каждая настройка изначально соответствует текущему состоянию этого ПК. Fluxxwave применит ваш выбор во время установки.
option-now = Сейчас на этом ПК
change-defender-enable = Fluxxwave вернёт Microsoft Defender. После перезагрузки включите его защиту в приложении «Безопасность Windows».
change-mitigations-default = Fluxxwave снова включит защиту процессора со стандартными параметрами Windows. Изменение вступит в силу после перезагрузки.
change-mitigations-all-on = Сейчас включены все средства защиты процессора. Если оставить защиту, все они останутся включёнными.
change-auto-updates-default = Fluxxwave снова позволит Windows устанавливать обновления автоматически.
change-hibernation-on = Fluxxwave снова включит гибернацию.
change-power-saving-on = Fluxxwave снова включит энергосбережение и вернёт прежнюю схему электропитания, а если её нет — схему «Сбалансированная».
change-core-isolation-on = Fluxxwave снова включит безопасность на основе виртуализации (VBS), если ею не управляет политика на этом ПК. Изменение вступит в силу после перезагрузки.
change-remove-snipping-tool = Удаляет приложение «Ножницы» для всех пользователей этого ПК. Fluxxwave не сможет вернуть его позже, но его можно снова установить из Microsoft Store.
fixed-uninstall-edge = Microsoft Edge уже удалён, и обновление Fluxxwave не может его вернуть. Чтобы установить его снова, запустите «Install or Remove Edge» в папке Fluxxwave.
fixed-installed = Приложение { $app } установлено. Fluxxwave не удаляет приложения; чтобы удалить его, откройте «Параметры» > «Приложения» > «Установленные приложения».
browser-also = Браузер { $installed } останется установленным, и Fluxxwave также установит { $browser }.
summary-update-path = Способ обновления
step-heading-update-path-a11y = { $heading }. { $question }
security-banner-removed-title = Fluxxwave удалил Microsoft Defender с этого ПК
security-banner-restore-title = Fluxxwave вернёт Microsoft Defender при этой установке
security-banner-restore-message = Defender ещё не запущен, поэтому на этом шаге ничего отключать не нужно. После перезагрузки включите его защиту в приложении «Безопасность Windows». Нажмите «Далее».
security-banner-missing-title = Microsoft Defender отсутствует
security-banner-missing-message = Fluxxwave не удалял его, поэтому не может его вернуть. Можно продолжить, но ПК останется без антивируса, пока вы не установите другой антивирус или не восстановите Windows.
installed-defender-not-restored-title = Microsoft Defender всё ещё удалён
installed-defender-not-restored-message = Вы решили оставить Microsoft Defender, но предыдущее обновление Fluxxwave не вернуло его, поэтому на ПК нет антивируса. Чтобы вернуть его, обновите или переустановите Fluxxwave и выберите вариант «Выбрать заново». Или в папке Fluxxwave на рабочем столе откройте «7. Security» > «Defender», запустите «Toggle Defender», выберите «Enable Windows Defender» и перезагрузите ПК.
choices-not-applied-title = Некоторые настройки не применились
choices-not-applied-message = Для следующих настроек Fluxxwave записал текущее состояние этого ПК: { $choices }. Причина указана в журнале установки.
rebase-choices-title = Ваши настройки из Fluxxwave { $previous }
rebase-choices-detail = Fluxxwave использует настройки, выбранные вами для Fluxxwave { $previous }, поэтому здесь ничего выбирать не нужно. Чтобы потом изменить их, нажмите «Переустановить Fluxxwave», затем выберите вариант «Выбрать заново».
rebase-choices-partial = Fluxxwave использует настройки, выбранные вами для Fluxxwave { $previous }. Некоторые из них найти не удалось, поэтому проверьте их: { $missing }
restart-other-title = На этом ПК выполнен вход другим пользователем
restart-others-title = На этом ПК выполнен вход другими пользователями
restart-others-message = Перезагрузка закроет их приложения, и они потеряют несохранённую работу. Выполнен вход: { $names }.
restart-others-keep = Не перезагружать
restart-others-restart = Всё равно перезагрузить
prepare-store-self-update = Сначала обновляется Microsoft Store: на этом ПК установлена устаревшая версия.
prepare-store-repair = Исправление Microsoft Store. Это может занять несколько минут.
prepare-store-updated = Версия Microsoft Store была устаревшей, поэтому Fluxxwave обновил его перед вашими приложениями.
prepare-store-bootstrapped = Microsoft Store не удалось обновиться самостоятельно, поэтому Fluxxwave установил последние версии «Установщика приложений» и Microsoft Store напрямую от Microsoft.
prepare-store-repaired = Microsoft Store не работал, поэтому Fluxxwave исправил его.
prepare-store-skipped-removed = Microsoft Store на этом ПК отключён, поэтому Fluxxwave пропустил обновление приложений Store.
prepare-failed-store-repair-failed = Microsoft Store не может устанавливать и обновлять приложения на этом ПК, и Fluxxwave не удалось его исправить. Fluxxwave нужен работающий Store, потому что установка Fluxxwave при неисправном Store может оставить Store и его приложения неработоспособными. Чтобы повторить попытку, нажмите «Исправить Microsoft Store». Если он по-прежнему не работает, создайте резервную копию файлов и переустановите Windows с помощью ISO-образа с Fluxxwave или нажмите «Отправить отчёт».
prepare-repair-store = Исправить Microsoft Store

screen-keyboard-title = Языки клавиатуры
screen-keyboard-question = Вы используете несколько языков клавиатуры?
playbook-option-keyboard-shortcuts = Да, переключаю сочетаниями клавиш
playbook-option-keyboard-selector = Да, выбираю язык на панели задач
playbook-option-keyboard-single = Нет, использую одну раскладку
consequence-keyboard-shortcuts = Alt+Shift переключает язык, Ctrl+Shift — раскладку.
consequence-keyboard-selector = Отключить Alt+Shift и Ctrl+Shift, чтобы избежать случайных переключений в играх.
playbook-page-keyboard-shortcuts-description = Выберите способ переключения языка клавиатуры.
consequence-keyboard-single = { consequence-keyboard-selector }
