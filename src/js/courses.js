
let courses = document.querySelectorAll('.course-item')

if (courses) {
    let tag = document.createElement('script')
    tag.src = "https://www.youtube.com/iframe_api"
    let firstScriptTag = document.getElementsByTagName('script')[0]
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag)

    window.onYouTubeIframeAPIReady = () => {
        document.querySelectorAll('.course-item').forEach(element => {
            let video = element.querySelector('.course-video')
            let play = element.querySelector('.play-btn')
            element.player = new YT.Player(video, {
              height: element.offsetHeight,
              playerVars: {
                controls: 0,
                showinfo: 0,
                disablekb: 1,
                loop: 1,
                modestbranding: 1,
                rel: 0,
                mute: 1
              },
              videoId: element.dataset.video
            })
            element.addEventListener('mouseenter', () => {
                element.classList.add('course-item_hover')
                element.player.playVideo()
            })
            element.addEventListener('mouseleave', () => {
                if (!element.active) {
                    element.classList.remove('course-item_hover')
                    element.player.stopVideo()
                }
            })
            play.addEventListener('mouseenter', () => {
                element.classList.add('course-item_full')
            })
            play.addEventListener('mouseleave', () => {
                element.classList.remove('course-item_full')
            })
            play.addEventListener('click', () => {
               element.classList.add('course-item_active')
               element.active = true
            })
        })
    }
}

// if (courses) {
    // let courseBgLarge= document.querySelector('.course-item__large-bg');


  //   courses.forEach(element => {
  //       element.querySelector('.play-btn').addEventListener('mouseover', function() {
  //           element.querySelector('.course-item__large-bg').classList.remove('hidden');
  //       });
  //   });
  //
  //
  // let tag = document.createElement('script')
  // tag.src = "https://www.youtube.com/iframe_api"
  // let firstScriptTag = document.getElementsByTagName('script')[0]
  // firstScriptTag.parentNode.insertBefore(tag, firstScriptTag)
  //
  // window.onYouTubeIframeAPIReady = function() {
  //
  //   document.querySelectorAll('.course-item').forEach(el => {
  //     let video = el.querySelector('.course-item__small-bg')
  //     let button = el.querySelector('.play-btn_courses')
  //     el.player = new YT.Player(video, {
  //       height: '200',
  //       playerVars: {
  //         controls: 0,
  //         showinfo: 0,
  //         disablekb: 1,
  //         loop: 1,
  //         modestbranding: 1,
  //         rel: 0,
  //         mute: 1
  //       },
  //       videoId: video.dataset.video
  //     })
  //
  //     button.addEventListener('mouseover', () => {
  //       el.player.playVideo()
  //     })
  //     button.addEventListener('mouseout', () => {
  //       el.player.stopVideo()
  //     })
  //   })
  //
  //   document.querySelectorAll('.course-bg').forEach(el => {
  //
  //   })
  // }
// }
