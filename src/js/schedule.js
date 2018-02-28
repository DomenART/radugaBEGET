document.querySelectorAll('.js-schedule').forEach(wrap => {
    let $lessons = wrap.querySelectorAll('.js-schedule-lesson')
    let cellCount = 6
    let cellWidth = 100 / cellCount
    let dayFrom = 60 * 11
    let dayTo = 60 * (21 + 1)
    let totalMinutes = dayTo - dayFrom
    let lessonsByDay = []

    // prepare
    $lessons.forEach(el => {
        let day = el.dataset.day
        let from = el.dataset.from.split(':')
        let fromMinutes = from[0] * 60 + Number(from[1])
        let to = el.dataset.to.split(':')
        let toMinutes = to[0] * 60 + Number(to[1])
        
        lessonsByDay[day] = lessonsByDay[day] || []
        lessonsByDay[day].push({
            el: el,
            left: day * cellWidth - cellWidth,
            top: (fromMinutes - dayFrom) / totalMinutes * 100,
            height: (toMinutes - fromMinutes) / totalMinutes * 100
        })
    })

    lessonsByDay.map((lessons, day) => {
        lessons.map((lesson, index) => {
            let cells = 0
            lessonsByDay[day].map(row => {
                if (
                    lesson.top + lesson.height >= row.top &&
                    lesson.top <= row.top + row.height
                ) {
                    cells++
                }
            })
            lesson.el.style.width = (cellWidth / cells) + '%'
            lesson.el.style.opacity = 1
            lesson.el.style.left = (lesson.left + (cellWidth / cells * index)) + '%'
            lesson.el.style.top = lesson.top + '%'
            lesson.el.style.height = lesson.height + '%'
        })
    })
})