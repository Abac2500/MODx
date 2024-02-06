<!DOCTYPE html>
<html lang="ru">
	{include 'file:chunks/base/head.tpl'}
	<body>
		<div id="wrapper" class="wrapper">
			{include 'file:chunks/base/header.tpl'}
			{block 'content'}{/block}
			{include 'file:chunks/base/footer.tpl'}
		</div>
		<script type="module" src="/public/build/app.js"></script>
		<!--
		<script type="module" src="http://hh.local:5000/@vite/client"></script>
		<script type="module" src="http://hh.local:5000/app.js"></script>
		-->
	</body>
</html>