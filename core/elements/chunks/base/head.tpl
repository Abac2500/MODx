<head>
	<base href="{$_modx->config.site_url}">
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}</title>
	
	<meta property="og:title" content="{$_modx->resource.longtitle ?: $_modx->resource.pagetitle}">
	<meta property="og:description" content="{$_modx->resource.description}">
	<meta name="description" content="{$_modx->resource.description}">
	<meta property="og:url" content="{$_modx->config.site_url | trim : '/'}{$_modx->resource.id | url}">
	<meta property="og:site_name" content="{$_modx->config.site_name}">
	<meta name="author" content="Abac250">
	<meta name="robots" content="noindex,nofollow">
	
	<link rel="shortcut icon" type="image/x-icon" href="/public/favicon.ico">
	<link rel="stylesheet" href="/public/build/app.css">
	<!--
	-->
</head>