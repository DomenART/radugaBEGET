{extends 'file:templates/base.tpl'}
{block 'content'}
<main class="timetable innerpage">
    <div class="background-title" uk-scrollspy="cls: uk-animation-slide-right; offset-top: -200">
        наша жизнь
    </div>
    <div class="container">
        <h1 class="pagetitle pagetitle_timetable">расписание</h1>
    </div>
    <div class="timetable__wrapper">
        <div class="timetable__control">
            <ul class="timetable__time-bar tab-bar" uk-switcher="connect: .timetable__table-list">
                <li class="tab-bar__item tab-bar__item_disabled">
                    <span>Новая Усмань</span>
                </li>
                <li class="tab-bar__item tab-bar__item_active">
                    <span>Отрадное</span>
                </li>
            </ul>
            <div class="timetable__grade" hidden>
                <div class="timetable__grade-item">
                    <b>I год</b>
                    обучения
                </div>
                <div class="timetable__grade-item">
                    <b>II год</b>
                    обучения
                </div>
                <div class="timetable__grade-item">
                    <b>III год</b>
                    обучения
                </div>
                <div class="timetable__grade-item">
                    <b>4 год</b>
                    обучения
                </div>
                <div class="timetable__grade-item">
                    <b>Средняя группа</b>
                </div>
                <div class="timetable__grade-item">
                    <b>Старшая группа</b>
                </div>
            </div>
            <div class="timetable__directions timetable__grade-item" hidden>
                по направлениям
            </div>
        </div>
        <div class="timetable__table-box">
            <ul class="uk-switcher timetable__table-list">
                <li>
                    {var $hours = ['11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', '18:00', '19:00', '20:00', '21:00']}
                    <div class="uk-overflow-auto">
                        <div class="schedule js-schedule">
                            <div class="schedule__spacer"></div>
                            <div class="schedule__days">
                                <div>Понедельник</div>
                                <div>Вторник</div>
                                <div>Среда</div>
                                <div>Четверг</div>
                                <div>Пятница</div>
                                <div>Суббота</div>
                            </div>
                            <div class="schedule__hours">
                                {foreach $hours as $hour}
                                    <div>{$hour}</div>
                                {/foreach}
                            </div>
                            <div class="schedule__grid">
                                {for $counter=1 to=count($hours)*6}
                                    <div class="schedule__cell"></div>
                                {/for}
                                {foreach $_modx->resource.timetable | fromJSON as $row}
                                <div class="schedule-lesson js-schedule-lesson" style="background-color: {$row['color']}" 
                                data-day="{$row['day']}"
                                data-from="{$row['time_start']}"
                                data-to="{$row['time_end']}">
                                    <div class="schedule-lesson__time">{$row['time_start']}-{$row['time_end']}</div>
                                    <div class="schedule-lesson__title">{$row['title']}</div>
                                    <div class="schedule-lesson__place">{$row['place']}</div>
                                </div>
                                {/foreach}
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    {var $hours = ['11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', '18:00', '19:00', '20:00', '21:00']}
                    <div class="uk-overflow-auto">
                        <div class="schedule js-schedule">
                            <div class="schedule__spacer"></div>
                            <div class="schedule__days">
                                <div>Понедельник</div>
                                <div>Вторник</div>
                                <div>Среда</div>
                                <div>Четверг</div>
                                <div>Пятница</div>
                                <div>Суббота</div>
                            </div>
                            <div class="schedule__hours">
                                {foreach $hours as $hour}
                                    <div>{$hour}</div>
                                {/foreach}
                            </div>
                            <div class="schedule__grid">
                                {for $counter=1 to=count($hours)*6}
                                    <div class="schedule__cell"></div>
                                {/for}
                                {foreach $_modx->resource.timetable | fromJSON as $row}
                                <div class="schedule-lesson js-schedule-lesson" style="background-color: {$row['color']}" 
                                data-day="{$row['day']}"
                                data-from="{$row['time_start']}"
                                data-to="{$row['time_end']}">
                                    <div class="schedule-lesson__time">{$row['time_start']}-{$row['time_end']}</div>
                                    <div class="schedule-lesson__title">{$row['title']}</div>
                                    <div class="schedule-lesson__place">{$row['place']}</div>
                                </div>
                                {/foreach}
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</main>
{include 'file:chunks/partials/aside.tpl'}
{/block}