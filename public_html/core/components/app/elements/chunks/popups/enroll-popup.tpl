<div class="popup hidden"> 
    <div class="enroll popup-content">
        <button type="button" class="close-btn"></button>
        {'!AjaxForm@Form' | snippet : [
            'emailSubject'  => 'Запись на урок',
            'validate'      => 'nomail:blank,tel,message,agreement:required',
            'form'          => '@FILE chunks/forms/enroll.tpl'
        ]}
       
    </div>
</div>