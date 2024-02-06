<header class="header">
	<div class="header__flex">
		<div class="header__logo">
			<a class="header_link" href="{$_modx->config.site_url}">
				<img class="header_logotype" src="/public/image/logo.svg" alt="{$_modx->config.site_name}">
			</a>
			{if 1 | resource : 'tag'}
				<div class="header__tag">{1 | resource : 'tag'}</div>
			{/if}
		</div>
		<div class="header__contact">
			<div class="button header__button">Оставить заявку</div>
			{if 1 | resource : 'phone'}
				<a class="header__phone" href="tel:{1 | resource : 'phone' | ereplace : '/[^\d]/' : ''}">{1 | resource : 'phone'}</a>
			{/if}
		</div>
	</div>
	<div class="header__menu">
		<div class="header__burger"></div>
	</div>
</header>