<h4 id="comment-new-link">
	<a href="#" class="btn btn-default">[[%ticket_comment_create]]</a>
</h4>

<div class="comment-form" id="comment-form-placeholder">
	<form id="comment-form" action="" method="post" class="well">
		<div class="comment-form__heading">Добавить комментарий</div>
		<div id="comment-preview-placeholder"></div>
		<input type="hidden" name="thread" value="[[+thread]]" />
		<input type="hidden" name="parent" value="0" />
		<input type="hidden" name="id" value="0" />

		<div class="form-group">
			<label for="comment-name">[[%ticket_comment_name]]</label><br>
			<input type="text" name="name" value="[[+name]]" id="comment-name" class="form-control"/>
			<span class="error"></span>
		</div>

		<div class="form-group">
			<label for="comment-email">[[%ticket_comment_email]]</label><br>
			<input type="text" name="email" value="[[+email]]" id="comment-email" class="form-control"/>
			<span class="error"></span>
		</div>

		<div class="form-group">
			<label for="comment-editor"></label><br>
			<textarea name="text" id="comment-editor" cols="30" rows="10" class="form-control"></textarea>
		</div>

		[[+captcha]]

		<div class="form-actions">
			<input type="button" class="btn btn-default preview" value="[[%ticket_comment_preview]]" title="Ctrl + Enter" />
			<button type="submit" class="btn btn-primary submit btn-more btn-more_right" title="Ctrl + Shift + Enter" />
				<span>
					Отправить
					<svg class="btn-more__tail btn-more__tail_right" width="10" height="8" fill="#ffffff">
	                    <use xlink:href="{$.assets_url}web/img/sprite.svg#two-dot-hor"/>
	                </svg>
	                <svg class="btn-more__arrow btn-more__arrow_right" width="20" height="20">
	                    <use xlink:href="{$.assets_url}web/img/sprite.svg#arrow-right"/>
	                </svg>
                </span>
			</button>
			<span class="time"></span>
		</div>
	</form>
</div>


<!--tickets_captcha
<div class="form-group">
	<label for="comment-captcha" id="comment-captcha">[[+captcha]]</label>
	<input type="text" name="captcha" value="" id="comment-captcha" class="form-control" />
	<span class="error"></span>
</div>
-->