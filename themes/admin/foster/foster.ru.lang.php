<?php
/**
 * Foster Russian language
 *
 * @package Cotonti
 * @version 0.9.x
 * @author Twiebie
 * @copyright Copyright (c) 2013 Cotonti Team, Twiebie
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

$L['RequireConfigSiblings'] = 'Для этой панели администратора требуется установить плагин Config Siblings.';
$L['DebugActive']           = 'Режим отладки включен';
$L['DebugActiveTip']        = 'Рекомендуется отключить режим отладки на production-сайтах.';

$L['ViewWebsite'] = 'Просмотр сайта';
$L['Menu']        = 'Меню';

$L['pagenav_first'] = 'Первая';
$L['pagenav_prev']  = '&larr;';
$L['pagenav_next']  = '&rarr;';
$L['pagenav_last']  = 'Последняя';

/* Extensions */
$L['ShowAlphabetical'] = 'Список по алфавиту';
$L['ShowCategories']   = 'По категориям';
$L['ShowParts']        = 'Хуки';
$L['ShowAll']          = 'Показать все';
$L['ShowInstalled']    = 'Показать установленные';

$L['Extensions']       = 'Расширения';
$L['ExtensionDetails'] = 'Подробности';
$L['ExtensionTags']    = 'Теги шаблонов';
$L['ExtensionParts']   = 'Хуки';

$L['AddEntry']      = 'Добавить запись';
$L['UpdateEntries'] = 'Обновить записи';

/* Rights */
$L['RightsFor']           = 'Права на';
$L['CopyRightsFromGroup'] = 'Копировать права другой группы';
$L['CopyRightsInfo']      = 'Предупреждение: это действие удалит все текущие права группы и заменит их правами выбранной группы.';
$L['Copy']                = 'Копировать';
$L['CustomRight']         = 'Расширенные права';
$L['HideCustomRights']    = 'Скрыть расширенные права';
$L['ShowCustomRights']    = 'Показать расширенные права';

/* Usergroups / Users */
$L['Usergroups']            = 'Группы пользователей';
$L['GroupName']             = 'Имя группы';
$L['CreateNewUser']         = 'Создать пользователя';
$L['CreateNewUserAccount']  = 'Создать учетную запись пользователя';
$L['PasswordTwice']         = 'Пароль (дважды)';
$L['ListAllUsers']          = 'Показать всех пользователей';
$L['ListMaingroup']         = 'Показать пользователей в основной группе';
$L['ListGroup']             = 'Показать пользователей в группе';
$L['InThisGroup']           = 'в этой группе';
$L['AddGroup']              = 'Добавить группу';
$L['RemoveGroup']           = 'Удалить группу';
$L['DisableGroup']          = 'Отключить группу';
$L['DisableGroupInfo']      = 'Временно отключает группу. Права не будут применяться. Группа не будет отображаться в списке пользователей или профилях участников.';
$L['MaintenanceAccess']     = 'Доступ для обслуживания';
$L['MaintenanceAccessInfo'] = 'Разрешить доступ к сайту при включенном режиме обслуживания.';
$L['HideGroup']             = 'Скрыть группу';
$L['HideGroupInfo']         = 'Скрытая группа не будет отображаться в профиле пользователя или списке пользователей. Можно <a href="'.cot_url('admin', 'm=config&n=edit&o=plug&p=hiddengroups').'">сконфигурировать</a>, скрывать ли  пользователей из скрытой группы списке пользователей';
$L['DisableRights']         = 'Отключить права';
$L['DisableRightsInfo']     = "Группы без прав требуются, если группа не привязана к системной роли. Например, это используется при создании имеющих названия команд на спортивных или игровых сайтах, где все участники наделены одинаковыми правами вне зависимости от команды, к которой они принадлежат. Группа без прав не может использоваться в качестве основной группы.";
$L['MaxFileSize']           = 'Макс. размер файла';
$L['FileSpace']             = 'Общее допустимое файловое пространство';
$L['FileSpaceInfo']         = "Общее допустимое файловое пространство суммируется, если пользователь принадлежит к нескольким группам. Максимальный размер файла не суммируется: он является наивысшим в группе пользователей и не может превышать значения upload_max_filesize, post_max_size и memory_limit, заданные в php.ini.";

/* Extra Fields */
$L['ExtraFields']          = 'Экстраполя';
$L['ShowAllTables']        = 'Показать все таблицы базы данных';
$L['ShowRelatedTables']    = 'Показать только сконфигурированные для экстраполей таблицы';
$L['TableName']            = 'Имя таблицы';
$L['BelongsTo']            = 'Принадлежит';
$L['ExtfTitle']            = 'Заголовок';
$L['ExtfTitleInfo']        = 'Описание ярлыка поля, может использоваться с тегом _TITLE.';
$L['ExtfCode']             = 'Код';
$L['ExtfCodeInfo']         = 'Имя столбца базы данных, должно содержать только строчные буквенно-цифровые символы.';
$L['ExtfDefault']          = 'Значение по умолчанию';
$L['ExtfType']             = 'Тип';
$L['ExtfTypeText']         = 'Текст';
$L['ExtfTypeString']       = 'Строка (макс. 255 симв.)';
$L['ExtfTypeTextarea']     = 'Текстовое поле';
$L['ExtfTypeNumber']       = 'Число';
$L['ExtfTypeInteger']      = 'Целое число (без десятичных знаков)';
$L['ExtfTypeDouble']       = 'Число (с десятичными знаками)';
$L['ExtfTypeCurrency']     = 'Валюта (2 десятичных знака)';
$L['ExtfTypeRange']        = 'Диапазон';
$L['ExtfTypeSelection']    = 'Выбор';
$L['ExtfTypeSelect']       = 'Раскрывающийся список';
$L['ExtfTypeCheckbox']     = 'Чекбокс (да/нет)';
$L['ExtfTypeChecklistbox'] = 'Несколько чекбоксов';
$L['ExtfTypeRadio']        = 'Радиокнопки';
$L['ExtfTypeCountry']      = 'Раскрывающися список стран';
$L['ExtfTypeOther']        = 'Другое';
$L['ExtfTypeDatetime']     = 'Ввод даты/времени';
$L['ExtfTypeFile']         = 'Загрузка файла';
$L['ExtfCustomization']    = 'Кастомизация';
$L['ExtfParser']           = 'Парсер';
$L['ExtfOptions']          = 'Опции';
$L['ExtfParameters']       = 'Параметры';
$L['ExtfHTMLHelp']         = 'Доступные параметры';
$L['ExtfHTML']             = 'Шаблон HTML для поля формы';
$L['ExtfHTMLInfo'] = array(
        'ввод'        => '{$name} {$value} {$attrs} {$error}',
        'текстовое поле'     => '{$name} {$value} {$rows} {$cols} {$attrs} {$error}',
        'inputint'     => '{$name} {$value} {$attrs} {$error}',
        'double'       => '{$name} {$value} {$attrs} {$error}',
        'валюта'     => '{$name} {$value} {$attrs} {$error}',
        'диапазон'        => '{$name} {$options} {$attrs} {$error}',
        'выбор'       => '{$name} {$options} {$attrs} {$error}',
        'чекбокс'     => '{$name} {$value} {$checked} {$title} {$attrs}',
        'список с чекбоксами' => '{$name} {$value} {$checked} {$title} {$attrs}',
        'радиокнопка'        => '{$name} {$value} {$checked} {$title} {$attrs}',
        'страна'      => '{$name} {$options} {$attrs} {$error}',
        'дата/время'     => '{$day} {$month} {$year} {$hour} {$minute}',
        'файл'         => '{$name} {$value} {$filepath} {$attrs} {$error} {$delname}',
);
$L['ExtfRegexMatch']     = 'Проверка регулярного выражения';
$L['ExtfRegexMatchInfo'] = 'Шаблон регулярного выражения <a href="http://php.net/manual/en/function.preg-match.php">preg_match</a>.';
$L['ExtfNewOption']      = 'Новая опция';
$L['ExtfRange']          = 'Диапазон';
$L['ExtfMin']            = 'Мин. значение';
$L['ExtfMax']            = 'Макс. значение';
$L['ExtfMinYear']        = 'От (год)';
$L['ExtfMaxYear']        = 'До (год)';
$L['ExtfFormat']         = 'Формат для <a href="http://php.net/manual/en/function.date.php">date</a>';
$L['ExtfRangeIntInfo']   = 'Введите два целых числа.';
$L['ExtfRangeFloatInfo'] = 'Введите два целых с плавающей точкой.';
$L['ExtfSeparator']      = 'Разделитель';

/* Infos */
$L['SystemInfo']        = 'Информация о системе';
$L['Webserver']         = 'Веб-сервер';
$L['ClockConfig']       = 'Настройка часов';
$L['RawTime']           = 'Нескоректированное время UTC/GMT';
$L['GMTTime']           = "Время GMT (внутреннее время Cotonti)";
$L['LocalTime']         = "Местное время на основе указанного в профиле часового пояса.";
$L['TimeHelp']          = "При необходимости задайте часовой пояс сервера для корректировки настроек часов. Cotonti не учитывает переход на летнее время.";
$L['adm_help_versions'] = '';
$L['ServerVars']        = 'Переменные сервера';
$L['GraphicsLibrary']   = 'Библиотека GD';

/* Polls */
$L['PollQuestion'] = 'Вопросы голосований';

/* Pages */
$L['Draft']     = 'Черновик';
$L['Pending']   = 'Ожидает утверждения';
$L['Approved']  = 'Утверждена';
$L['Published'] = 'Опубликована';
$L['Expired']   = 'Истек срок ожидания';

$L['AllPages']       = 'Все страницы';
$L['PendingPages']   = 'Ожидающие утверждения страницы';
$L['ValidatedPages'] = 'Утвержденные страницы';
$L['Unvalidate']     = 'Аннулированные';

$L['NewPage']      = 'Новая страница';
$L['FileDownload'] = 'Загрузка файла';
$L['FileURL']      = 'URL-адрес файла';

/* PFS */
$L['PFSList'] = 'Список личных файловых пространств';
$L['GDInfo']  = 'Информация о библиотеке GD';

/* Misc */
$L['Enable']           = 'Включить';
$L['Disable']          = 'Отключить';
$L['SortBy']           = 'Сортировать по';
$L['Go']               = 'Перейти';
$L['WithSelected']     = 'С выбранными';
$L['Ratio']            = 'Коэффициент';
$L['IPSearch_Search']  = 'Поиск IP в базе данных пользователей:';
$L['IPSearch_Results'] = 'Результаты поиска';
$L['PurgeAll']         = 'Очистить все';
$L['PruneLowHits']     = 'Убрать элементы с 5 совпадениями или меньше';

$L['ShowMore'] = 'Показать больше';
$L['ShowLess'] = 'Показать меньше';

$L['ViewAll'] = 'Просмотреть все';
$L['Posts']   = 'Публикации';
$L['AllPFS']  = 'Все PFS';

$Ls['Users'] = array('пользователи','пользователь');
$Ls['Files'] = array('файлы','файл');
$Ls['Hits']  = array('совпадения','совпадение');

$L['adm_ref_prunelow'] = 'Очистить рефералов с менее чем 5 посещениями';
