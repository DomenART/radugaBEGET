<div class="register about__register">
    <form method="post" class="register__form">
        <div class="register__heading">
            <div class="register__title">
                Записаться на урок
            </div>
            <div class="register__tip">
                Поля, отмеченные *, обязательны для заполнения
            </div>
        </div>
        <div class="register__inputs">
            <input type="text" class="input input_register" name="name" placeholder="Имя:">
            <input type="tel" class="input input_register" name="tel" pattern="^[0-9]+$" minlength="8" placeholder="Телефон*:" required>
            <button type="submit" class="btn-more btn-more_right submit btn-more_register">
                <span>
                    Записаться
                    <svg class="btn-more__tail btn-more__tail_right" width="10" height="8" fill="#ffffff">
                        <use xlink:href="{$.assets_url}web/img/sprite.svg#two-dot-hor"/>
                    </svg>
                    <svg class="btn-more__arrow btn-more__arrow_right" width="20" height="20">
                        <use xlink:href="{$.assets_url}web/img/sprite.svg#arrow-right"/>
                    </svg>
                </span>
            </button>
        </div>
        <div class="register__agreement">
            <input type="checkbox" class="check check_register" name="agreement" id="agreement" hidden required checked>
            <label for="agreement" class="check-lovely"></label>
            <label for="agreement" class="register__agreement-text">
                Прочитал(-а) <a href="#">пользовательское соглашение </a>
                и соглашаюсь на <a href="#">обработку своих персональных данных</a>
            </label>
        </div>
        <input type="hidden" name="nomail">
    </form>
    </div>