<footer class="footer">
	<div class="container">
		<a class="footer__logo" href="{$_modx->config.site_url}">
			<img class="footer__logotype" src="/public/image/logo.svg" alt="{$_modx->config.site_name}">
		</a>
		<div class="footer__container">
			<div class="footer__item">
				{if 1 | resource : 'phone'}
					<a class="footer__phone" href="tel:{1 | resource : 'phone' | ereplace : '/[^\d]/' : ''}">{1 | resource : 'phone'}</a>
				{/if}
				{if 1 | resource : 'email'}
					<a class="footer__email" href="email:{1 | resource : 'email'}">{1 | resource : 'email'}</a>
				{/if}
				{if 1 | resource : 'address'}
					<div class="footer__address">{1 | resource : 'address'}</div>
				{/if}
				{if 1 | resource : 'ip' || 1 | resource : 'inn'}
					<div class="footer__info">
						{if 1 | resource : 'ip'}
							<p>ИП {1 | resource : 'ip'}</p>
						{/if}
						{if 1 | resource : 'inn'}
							<p>ИНН: {1 | resource : 'inn'}</p>
						{/if}
					</div>
				{/if}
			</div>
			<div class="footer__item">
				{'pdoMenu' | snippet : [
					'parents' => 0,
					'resources' => '-1',
					'outerClass' => 'footer__menu',
					'rowClass' => 'footer__li',
					'tpl' => '@FILE chunks/base/li.tpl'
				]}
			</div>
			<div class="footer__item">
				<div class="button footer__sub">Подписаться на рассылку</div>
				{var $media = json_decode(1 | resource : 'media', true)}
				{if $media | count}
					<div class="footer__media">
						{foreach $media as $social}
							<a class="footer__social" href="{$social.url}">
								<img class="footer__icon" src="{$social.icon}" alt="icon">
							</a>
						{/foreach}
					</div>
				{/if}
				<div class="footer__about">мы в социальных сетях</div>
			</div>
		</div>
	</div>
</footer>