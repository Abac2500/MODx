{extends 'file:templates/default.tpl'}
{block 'content'}
	{if $_modx->resource.introtext || $_modx->resource.content}
		<section class="section main main_background">
			<div class="container">
				<div class="main__container">
					{if $_modx->resource.introtext}
						<h1 class="main__title">{$_modx->resource.introtext}</h1>
					{/if}
					{if $_modx->resource.content}
						<div class="main__text">{$_modx->resource.content}</div>
					{/if}
				</div>
			</div>
			{var $media = json_decode(1 | resource : 'media', true)}
			{if $media | count}
				<div class="main__media">
					{foreach $media as $social}
						<a class="main__social" href="{$social.url}">
							<img class="main__icon" src="{$social.icon}" alt="icon">
						</a>
					{/foreach}
				</div>
			{/if}
		</section>
	{/if}
	<section class="section plus">
		<div class="plus__container">
			<div class="plus__item" style="background-image: url('{$_modx->resource.image_plus_1}');"></div>
			<div class="plus__item plus__item_green" style="background-image: url('{$_modx->resource.image_plus_2}');">
				{if $_modx->resource.title_plus_2}
					<div class="plus__title">{$_modx->resource.title_plus_2}</div>
				{/if}
				{if $_modx->resource.text_plus_2}
					<div class="plus__text">{$_modx->resource.text_plus_2}</div>
				{/if}
				{var $plus = json_decode($_modx->resource.plus, true)}
				{if $plus | count}
					<div class="plus__ul">
						{foreach $plus as $li}
							<div class="plus__li">
								<img class="plus__icon" src="{$li.icon}" alt="icon">
								<div class="plus__info">
									<div class="plus__count">{$li.count}</div>
									{if $li.desc}
										<div class="plus__desc">{$li.desc}</div>
									{/if}
								</div>
							</div>
						{/foreach}
					</div>
				{/if}
			</div>
			<div class="plus__item" style="background-image: url('{$_modx->resource.image_plus_3}');"></div>
			<div class="plus__item plus__item_beige" style="background-image: url('{$_modx->resource.image_plus_4}');">
				{if $_modx->resource.text_plus_4}
					<div class="plus__text">{$_modx->resource.text_plus_4}</div>
				{/if}
			</div>
		</div>
	</section>
	<section class="section form" id="form">
		<div class="container">
			<div class="form__container">
				<div class="form__text">
					<p>Оставьте свои контакты и персональный менеджер свяженся с Вами</p>
				</div>
				<form class="form__form" method="POST" action="{$_modx->resource.id | url}#form">
					<label class="form__item">
						<input class="form__input" type="text" name="name" placeholder="Ваше имя">
					</label>
					<label class="form__item">
						<input class="form__input" type="tel" name="phone" placeholder="Телефон" required>
					</label>
					<label class="form__item">
						<input class="form__input" type="email" name="email" placeholder="E-mail">
					</label>
					<label class="form__item form__item_row">
						<textarea class="form__textarea" name="comment" placeholder="Комментарий"></textarea>
					</label>
					<label class="form__item form__item_accept">
						<input class="form__checkbox" type="checkbox" name="accept" value="1" checked required>
						<div class="form__flex">
							<div class="form__span"></div>
							<div class="form__label">Я согласен с условиями обработки персональных данных</div>
						</div>
					</label>
					<label class="form__item form__item_button">
						<input class="button form__button" type="submit" name="form" value="Отправить">
					</label>
				</form>
				{'!Formit' | snippet : [
					'submitVar' => 'form',
					'hooks' => 'email',
					'emailTpl' => 'form.email.tpl',
					'emailSubject' => 'Заявка с контактами',
					'emailFrom' => $_modx->config.emailsender,
					'emailFromName' => $_modx->config.site_name,
					'emailTo' => 1 | resource : 'emailsender',
					'validate' => 'phone:required,accept:required',
					'validationErrorMessage' => 'В форме содержатся ошибки',
					'successMessage' => 'Заявка успешно отправлена'
				]}
			</div>
		</div>
	</section>
{/block}