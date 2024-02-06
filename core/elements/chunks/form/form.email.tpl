<h3>Заявка с сайта {$_modx->config.site_name}</h3>
{if $name}
	<p><strong>От кого:</strong> {$name}</p>
{/if}
{if $phone}
	<p><strong>Телефон:</strong> {$phone}</p>
{/if}
{if $email}
	<p><strong>Электронная почта:</strong> {$email}</p>
{/if}
{if $comment}
	<p><strong>Комментарий:</strong> {$comment}</p>
{/if}