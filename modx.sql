-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 06 2024 г., 02:54
-- Версия сервера: 8.0.30
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `modx`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'MODX\\Revolution\\modUserGroup', 0, 9999, 3),
(2, 'mgr', 'MODX\\Revolution\\modUserGroup', 1, 0, 2),
(3, 'web', 'MODX\\Revolution\\modUserGroup', 1, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int UNSIGNED NOT NULL,
  `template` int UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `value` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_weblink', 'perm.delete_weblink_desc', 1),
(22, 1, 'delete_symlink', 'perm.delete_symlink_desc', 1),
(23, 1, 'delete_static_resource', 'perm.delete_static_resource_desc', 1),
(24, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(25, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(26, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(27, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(28, 1, 'delete_template', 'perm.delete_template_desc', 1),
(29, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(30, 1, 'delete_role', 'perm.delete_role_desc', 1),
(31, 1, 'delete_user', 'perm.delete_user_desc', 1),
(32, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(33, 1, 'directory_create', 'perm.directory_create_desc', 1),
(34, 1, 'directory_list', 'perm.directory_list_desc', 1),
(35, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(36, 1, 'directory_update', 'perm.directory_update_desc', 1),
(37, 1, 'edit_category', 'perm.edit_category_desc', 1),
(38, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(39, 1, 'edit_context', 'perm.edit_context_desc', 1),
(40, 1, 'edit_document', 'perm.edit_document_desc', 1),
(41, 1, 'edit_weblink', 'perm.edit_weblink_desc', 1),
(42, 1, 'edit_symlink', 'perm.edit_symlink_desc', 1),
(43, 1, 'edit_static_resource', 'perm.edit_static_resource_desc', 1),
(44, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(45, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(46, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(47, 1, 'edit_role', 'perm.edit_role_desc', 1),
(48, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(49, 1, 'edit_template', 'perm.edit_template_desc', 1),
(50, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(51, 1, 'edit_user', 'perm.edit_user_desc', 1),
(52, 1, 'element_tree', 'perm.element_tree_desc', 1),
(53, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(54, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(55, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(56, 1, 'export_static', 'perm.export_static_desc', 1),
(57, 1, 'file_create', 'perm.file_create_desc', 1),
(58, 1, 'file_list', 'perm.file_list_desc', 1),
(59, 1, 'file_manager', 'perm.file_manager_desc', 1),
(60, 1, 'file_remove', 'perm.file_remove_desc', 1),
(61, 1, 'file_tree', 'perm.file_tree_desc', 1),
(62, 1, 'file_update', 'perm.file_update_desc', 1),
(63, 1, 'file_upload', 'perm.file_upload_desc', 1),
(64, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(65, 1, 'file_view', 'perm.file_view_desc', 1),
(66, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(67, 1, 'frames', 'perm.frames_desc', 1),
(68, 1, 'help', 'perm.help_desc', 1),
(69, 1, 'home', 'perm.home_desc', 1),
(70, 1, 'language', 'perm.language_desc', 1),
(71, 1, 'languages', 'perm.languages_desc', 1),
(72, 1, 'lexicons', 'perm.lexicons_desc', 1),
(73, 1, 'list', 'perm.list_desc', 1),
(74, 1, 'load', 'perm.load_desc', 1),
(75, 1, 'logout', 'perm.logout_desc', 1),
(76, 1, 'mgr_log_view', 'perm.mgr_log_view_desc', 1),
(77, 1, 'mgr_log_erase', 'perm.mgr_log_erase_desc', 1),
(78, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(79, 1, 'menu_security', 'perm.menu_security_desc', 1),
(80, 1, 'menu_site', 'perm.menu_site_desc', 1),
(81, 1, 'menu_support', 'perm.menu_support_desc', 1),
(82, 1, 'menu_system', 'perm.menu_system_desc', 1),
(83, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(84, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(85, 1, 'menu_user', 'perm.menu_user_desc', 1),
(86, 1, 'menus', 'perm.menus_desc', 1),
(87, 1, 'messages', 'perm.messages_desc', 1),
(88, 1, 'namespaces', 'perm.namespaces_desc', 1),
(89, 1, 'new_category', 'perm.new_category_desc', 1),
(90, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(91, 1, 'new_context', 'perm.new_context_desc', 1),
(92, 1, 'new_document', 'perm.new_document_desc', 1),
(93, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(94, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(95, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(96, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(97, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(98, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(99, 1, 'new_role', 'perm.new_role_desc', 1),
(100, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(101, 1, 'new_template', 'perm.new_template_desc', 1),
(102, 1, 'new_tv', 'perm.new_tv_desc', 1),
(103, 1, 'new_user', 'perm.new_user_desc', 1),
(104, 1, 'packages', 'perm.packages_desc', 1),
(105, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(106, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(107, 1, 'policy_new', 'perm.policy_new_desc', 1),
(108, 1, 'policy_save', 'perm.policy_save_desc', 1),
(109, 1, 'policy_view', 'perm.policy_view_desc', 1),
(110, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(111, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(112, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(113, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(114, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(115, 1, 'property_sets', 'perm.property_sets_desc', 1),
(116, 1, 'providers', 'perm.providers_desc', 1),
(117, 1, 'publish_document', 'perm.publish_document_desc', 1),
(118, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(119, 1, 'remove', 'perm.remove_desc', 1),
(120, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(121, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(122, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(123, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(124, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(125, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(126, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(127, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(128, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(129, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(130, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(131, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(132, 1, 'save', 'perm.save_desc', 1),
(133, 1, 'save_category', 'perm.save_category_desc', 1),
(134, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(135, 1, 'save_context', 'perm.save_context_desc', 1),
(136, 1, 'save_document', 'perm.save_document_desc', 1),
(137, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(138, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(139, 1, 'save_role', 'perm.save_role_desc', 1),
(140, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(141, 1, 'save_template', 'perm.save_template_desc', 1),
(142, 1, 'save_tv', 'perm.save_tv_desc', 1),
(143, 1, 'save_user', 'perm.save_user_desc', 1),
(144, 1, 'search', 'perm.search_desc', 1),
(145, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(146, 1, 'settings', 'perm.settings_desc', 1),
(147, 1, 'events', 'perm.events_desc', 1),
(148, 1, 'source_save', 'perm.source_save_desc', 1),
(149, 1, 'source_delete', 'perm.source_delete_desc', 1),
(150, 1, 'source_edit', 'perm.source_edit_desc', 1),
(151, 1, 'source_view', 'perm.source_view_desc', 1),
(152, 1, 'sources', 'perm.sources_desc', 1),
(153, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(154, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(155, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(156, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(157, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(158, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(159, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(160, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(161, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(162, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(163, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(164, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(165, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(166, 1, 'view', 'perm.view_desc', 1),
(167, 1, 'view_category', 'perm.view_category_desc', 1),
(168, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(169, 1, 'view_context', 'perm.view_context_desc', 1),
(170, 1, 'view_document', 'perm.view_document_desc', 1),
(171, 1, 'view_element', 'perm.view_element_desc', 1),
(172, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(173, 1, 'view_offline', 'perm.view_offline_desc', 1),
(174, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(175, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(176, 1, 'view_role', 'perm.view_role_desc', 1),
(177, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(178, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(179, 1, 'view_template', 'perm.view_template_desc', 1),
(180, 1, 'view_tv', 'perm.view_tv_desc', 1),
(181, 1, 'view_user', 'perm.view_user_desc', 1),
(182, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(183, 1, 'workspaces', 'perm.workspaces_desc', 1),
(184, 2, 'add_children', 'perm.add_children_desc', 1),
(185, 2, 'copy', 'perm.copy_desc', 1),
(186, 2, 'create', 'perm.create_desc', 1),
(187, 2, 'delete', 'perm.delete_desc', 1),
(188, 2, 'list', 'perm.list_desc', 1),
(189, 2, 'load', 'perm.load_desc', 1),
(190, 2, 'move', 'perm.move_desc', 1),
(191, 2, 'publish', 'perm.publish_desc', 1),
(192, 2, 'remove', 'perm.remove_desc', 1),
(193, 2, 'save', 'perm.save_desc', 1),
(194, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(195, 2, 'undelete', 'perm.undelete_desc', 1),
(196, 2, 'unpublish', 'perm.unpublish_desc', 1),
(197, 2, 'view', 'perm.view_desc', 1),
(198, 3, 'load', 'perm.load_desc', 1),
(199, 3, 'list', 'perm.list_desc', 1),
(200, 3, 'view', 'perm.view_desc', 1),
(201, 3, 'save', 'perm.save_desc', 1),
(202, 3, 'remove', 'perm.remove_desc', 1),
(203, 4, 'add_children', 'perm.add_children_desc', 1),
(204, 4, 'create', 'perm.create_desc', 1),
(205, 4, 'copy', 'perm.copy_desc', 1),
(206, 4, 'delete', 'perm.delete_desc', 1),
(207, 4, 'list', 'perm.list_desc', 1),
(208, 4, 'load', 'perm.load_desc', 1),
(209, 4, 'remove', 'perm.remove_desc', 1),
(210, 4, 'save', 'perm.save_desc', 1),
(211, 4, 'view', 'perm.view_desc', 1),
(212, 5, 'create', 'perm.create_desc', 1),
(213, 5, 'copy', 'perm.copy_desc', 1),
(214, 5, 'list', 'perm.list_desc', 1),
(215, 5, 'load', 'perm.load_desc', 1),
(216, 5, 'remove', 'perm.remove_desc', 1),
(217, 5, 'save', 'perm.save_desc', 1),
(218, 5, 'view', 'perm.view_desc', 1),
(219, 6, 'load', 'perm.load_desc', 1),
(220, 6, 'list', 'perm.list_desc', 1),
(221, 6, 'view', 'perm.view_desc', 1),
(222, 6, 'save', 'perm.save_desc', 1),
(223, 6, 'remove', 'perm.remove_desc', 1),
(224, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(225, 6, 'copy', 'perm.copy_desc', 1),
(226, 7, 'list', 'perm.list_desc', 1),
(227, 7, 'load', 'perm.load_desc', 1),
(228, 7, 'view', 'perm.view_desc', 1),
(229, 1, 'formit', 'To view the formit package.', 1),
(230, 1, 'formit_encryptions', 'To view the formit package, encriptions part.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci,
  `parent` int UNSIGNED NOT NULL DEFAULT '0',
  `template` int UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_general_ci,
  `lexicon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'policy_resource_desc', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(2, 'Administrator', 'policy_administrator_desc', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"delete_weblink\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_trash\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true,\"formit\":true,\"formit_encryptions\":true}', 'permissions'),
(3, 'Load Only', 'policy_load_only_desc', 0, 3, '', '{\"load\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(4, 'Load, List and View', 'policy_load_list_and_view_desc', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(5, 'Object', 'policy_object_desc', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(6, 'Element', 'policy_element_desc', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(7, 'Content Editor', 'policy_content_editor_desc', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"delete_document\":true,\"delete_static_resource\":true,\"delete_symlink\":true,\"delete_weblink\":true,\"edit_document\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_weblink\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"list\":true,\"load\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(8, 'Media Source Admin', 'policy_media_source_admin_desc', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(9, 'Media Source User', 'policy_media_source_user_desc', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(10, 'Developer', 'policy_developer_desc', 0, 1, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_static_resource\":true,\"edit_symlink\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"edit_weblink\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_unpack\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"language\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"mgr_log_view\":true,\"mgr_log_erase\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(11, 'Context', 'policy_context_desc', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions'),
(12, 'Hidden Namespace', 'policy_hidden_namespace_desc', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true,\"formit\":true,\"formit_encryptions\":false}', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int UNSIGNED NOT NULL,
  `template_group` int UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_general_ci,
  `lexicon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'policy_template_administrator_desc', 'permissions'),
(2, 3, 'ResourceTemplate', 'policy_template_resource_desc', 'permissions'),
(3, 2, 'ObjectTemplate', 'policy_template_object_desc', 'permissions'),
(4, 4, 'ElementTemplate', 'policy_template_element_desc', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'policy_template_mediasource_desc', 'permissions'),
(6, 7, 'ContextTemplate', 'policy_template_context_desc', 'permissions'),
(7, 6, 'NamespaceTemplate', 'policy_template_namespace_desc', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'policy_template_group_administrator_desc'),
(2, 'Object', 'policy_template_group_object_desc'),
(3, 'Resource', 'policy_template_group_resource_desc'),
(4, 'Element', 'policy_template_group_element_desc'),
(5, 'MediaSource', 'policy_template_group_mediasource_desc'),
(6, 'Namespace', 'policy_template_group_namespace_desc'),
(7, 'Context', 'policy_template_group_context_desc');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `principal_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int UNSIGNED NOT NULL,
  `set` int NOT NULL DEFAULT '0',
  `action` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_general_ci,
  `xtype` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `container` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `rule` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_general_ci NOT NULL,
  `constraint` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `constraint_field` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `constraint_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'field',
  `tab` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `form` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `other` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'alias', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 5),
(9, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 3),
(11, 'resource/update', 'modx-resource-main-right-top', 'tab', '', 'modx-panel-resource', '', 4),
(12, 'resource/update', 'published', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 0),
(13, 'resource/update', 'deleted', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 1),
(14, 'resource/update', 'publishedon', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 2),
(15, 'resource/update', 'pub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'unpub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'modx-resource-main-right-middle', 'tab', '', 'modx-panel-resource', '', 5),
(18, 'resource/update', 'template', 'field', 'modx-resource-main-right-middle', 'modx-panel-resource', '', 0),
(19, 'resource/update', 'modx-resource-main-right-bottom', 'tab', '', 'modx-panel-resource', '', 6),
(20, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 0),
(21, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 1),
(22, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 2),
(23, 'resource/update', 'menuindex', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 3),
(24, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 7),
(25, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 8),
(26, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(27, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(28, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 9),
(29, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(30, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(31, 'resource/update', 'modx-page-settings-box-left', 'tab', '', 'modx-panel-resource', '', 10),
(32, 'resource/update', 'isfolder', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 0),
(33, 'resource/update', 'show_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 1),
(34, 'resource/update', 'hide_children_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 2),
(35, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 3),
(36, 'resource/update', 'uri_override', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 4),
(37, 'resource/update', 'uri', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 5),
(38, 'resource/update', 'modx-page-settings-box-right', 'tab', '', 'modx-panel-resource', '', 11),
(39, 'resource/update', 'richtext', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 0),
(40, 'resource/update', 'cacheable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 1),
(41, 'resource/update', 'searchable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 2),
(42, 'resource/update', 'syncsite', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 3),
(43, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 12),
(44, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 13),
(45, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(46, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(47, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'alias', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(54, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 3),
(55, 'resource/create', 'modx-resource-main-right-top', 'tab', '', 'modx-panel-resource', '', 4),
(56, 'resource/create', 'published', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 0),
(57, 'resource/create', 'deleted', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 1),
(58, 'resource/create', 'publishedon', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 2),
(59, 'resource/create', 'pub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 3),
(60, 'resource/create', 'unpub_date', 'field', 'modx-resource-main-right-top', 'modx-panel-resource', '', 4),
(61, 'resource/create', 'modx-resource-main-right-middle', 'tab', '', 'modx-panel-resource', '', 5),
(62, 'resource/create', 'template', 'field', 'modx-resource-main-right-middle', 'modx-panel-resource', '', 0),
(63, 'resource/create', 'modx-resource-main-right-bottom', 'tab', '', 'modx-panel-resource', '', 6),
(64, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 0),
(65, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 1),
(66, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 2),
(67, 'resource/create', 'menuindex', 'field', 'modx-resource-main-right-bottom', 'modx-panel-resource', '', 3),
(68, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 7),
(69, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 8),
(70, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(71, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(72, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 9),
(73, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(74, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(75, 'resource/create', 'modx-page-settings-box-left', 'tab', '', 'modx-panel-resource', '', 10),
(76, 'resource/create', 'isfolder', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 0),
(77, 'resource/create', 'show_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 1),
(78, 'resource/create', 'hide_children_in_tree', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 2),
(79, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 3),
(80, 'resource/create', 'uri_override', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 4),
(81, 'resource/create', 'uri', 'field', 'modx-page-settings-box-left', 'modx-panel-resource', '', 5),
(82, 'resource/create', 'modx-page-settings-box-right', 'tab', '', 'modx-panel-resource', '', 11),
(83, 'resource/create', 'richtext', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 0),
(84, 'resource/create', 'cacheable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 1),
(85, 'resource/create', 'searchable', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 2),
(86, 'resource/create', 'syncsite', 'field', 'modx-page-settings-box-right', 'modx-panel-resource', '', 3),
(87, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 12),
(88, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `lasthit` int NOT NULL DEFAULT '0',
  `id` int DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `ip` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int UNSIGNED NOT NULL,
  `parent` int UNSIGNED DEFAULT '0',
  `category` varchar(45) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'pdoTools', 0),
(2, 0, 'TinyMCE Rich Text Editor', 0),
(3, 0, 'Основное', 0),
(4, 0, 'MIGX', 0),
(5, 0, 'О нас', 0),
(6, 0, 'FormIt', 0),
(8, 0, 'Формы', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int UNSIGNED NOT NULL DEFAULT '0',
  `depth` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_categories_closure`
--

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 1, 0),
(0, 2, 0),
(0, 3, 0),
(0, 4, 0),
(0, 5, 0),
(0, 6, 0),
(0, 8, 0),
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(8, 8, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `description` tinytext COLLATE utf8mb4_general_ci,
  `mime_type` tinytext COLLATE utf8mb4_general_ci,
  `file_extensions` tinytext COLLATE utf8mb4_general_ci,
  `icon` tinytext COLLATE utf8mb4_general_ci,
  `headers` mediumtext COLLATE utf8mb4_general_ci,
  `binary` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `icon`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '', '', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', 'icon-xml', NULL, 0),
(3, 'Text', 'Plain text content', 'text/plain', '.txt', 'icon-txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', 'icon-css', NULL, 0),
(5, 'JavaScript', 'JavaScript content', 'text/javascript', '.js', 'icon-js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', 'icon-rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', 'icon-json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', 'icon-pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8mb4_general_ci,
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `resource` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `key` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_general_ci,
  `xtype` varchar(75) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'core',
  `area` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'MODX\\Revolution\\modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_general_ci,
  `hide_trees` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `customizable` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`, `customizable`) VALUES
(1, 'Default', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_general_ci,
  `type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_general_ci,
  `properties` text COLLATE utf8mb4_general_ci,
  `namespace` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `lexicon` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'half',
  `permission` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `properties`, `namespace`, `lexicon`, `size`, `permission`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', NULL, 'core', 'core:dashboards', 'one-third', ''),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', NULL, 'core', 'core:dashboards', 'two-thirds', 'view_document'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', NULL, 'core', 'core:dashboards', 'full', ''),
(6, 'w_buttons', 'w_buttons_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.buttons.php', '{\"create-resource\":{\"link\":\"[[++manager_url]]?a=resource\\/create\",\"icon\":\"file-o\",\"title\":\"[[%action_new_resource]]\",\"description\":\"[[%action_new_resource_desc]]\"},\"view-site\":{\"link\":\"[[++site_url]]\",\"icon\":\"eye\",\"title\":\"[[%action_view_website]]\",\"description\":\"[[%action_view_website_desc]]\",\"target\":\"_blank\"},\"advanced-search\":{\"link\":\"[[++manager_url]]?a=search\",\"icon\":\"search\",\"title\":\"[[%action_advanced_search]]\",\"description\":\"[[%action_advanced_search_desc]]\"},\"manage-users\":{\"link\":\"[[++manager_url]]?a=security\\/user\",\"icon\":\"user\",\"title\":\"[[%action_manage_users]]\",\"description\":\"[[%action_manage_users_desc]]\"}}', 'core', 'core:dashboards', 'full', ''),
(7, 'w_updates', 'w_updates_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.updates.php', NULL, 'core', 'core:dashboards', 'one-third', 'workspaces');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `user` int UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int UNSIGNED NOT NULL DEFAULT '0',
  `widget` int UNSIGNED NOT NULL DEFAULT '0',
  `rank` int UNSIGNED NOT NULL DEFAULT '0',
  `size` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`user`, `dashboard`, `widget`, `rank`, `size`) VALUES
(0, 1, 1, 2, 'one-third'),
(0, 1, 2, 3, 'one-third'),
(0, 1, 3, 5, 'one-third'),
(0, 1, 4, 6, 'two-thirds'),
(0, 1, 5, 1, 'full'),
(0, 1, 6, 0, 'full'),
(0, 1, 7, 4, 'one-third'),
(1, 1, 1, 2, 'one-third'),
(1, 1, 2, 3, 'one-third'),
(1, 1, 3, 5, 'one-third'),
(1, 1, 4, 6, 'two-thirds'),
(1, 1, 6, 0, 'full'),
(1, 1, 7, 4, 'one-third');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_deprecated_call`
--

CREATE TABLE `modx_deprecated_call` (
  `id` int UNSIGNED NOT NULL,
  `method` int UNSIGNED NOT NULL DEFAULT '0',
  `call_count` int UNSIGNED NOT NULL DEFAULT '0',
  `caller` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `caller_file` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `caller_line` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_deprecated_call`
--

INSERT INTO `modx_deprecated_call` (`id`, `method`, `call_count`, `caller`, `caller_file`, `caller_line`) VALUES
(1, 1, 8, 'xPDO\\xPDO::newObject', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 808),
(2, 2, 8, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(3, 2, 8, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(4, 3, 1, 'xPDO\\xPDO::newObject', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 808),
(5, 4, 5, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(6, 4, 5, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(7, 5, 19, 'xPDO\\xPDO::newObject', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 808),
(8, 5, 19, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(9, 5, 19, 'xPDO\\Om\\xPDOObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 402),
(10, 6, 46, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(11, 6, 46, 'xPDO\\Om\\xPDOObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 402),
(12, 7, 1, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(13, 7, 1, 'xPDO\\Om\\xPDOObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 402),
(14, 8, 39, 'xPDO\\xPDO::newObject', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 808),
(15, 9, 6, 'xPDO\\xPDO::newObject', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 808),
(16, 10, 6, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(17, 10, 6, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(18, 4, 4, 'xPDO\\xPDO::newObject', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 808),
(19, 11, 1, 'xPDO\\Om\\xPDOQuery::__construct', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOQuery.php', 122),
(20, 11, 1, 'xPDO\\xPDO::getTableName', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1289),
(21, 11, 1, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(22, 11, 1, 'xPDO\\Om\\xPDOObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 402),
(23, 12, 68, 'xPDO\\xPDO::getPKType', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1660),
(24, 12, 68, 'xPDO\\xPDO::getPK', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1598),
(25, 12, 68, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(26, 12, 68, 'xPDO\\Om\\xPDOObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 402),
(27, 13, 363, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(28, 13, 363, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(29, 14, 7, 'MODX\\Revolution\\Registry\\modRegistry::_initRegister', 'C:\\OSPanel\\domains\\hh.local\\core\\src\\Revolution\\Registry\\modRegistry.php', 173),
(30, 15, 462, 'xPDO\\xPDO::newObject', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 808),
(31, 15, 28, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(32, 15, 28, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(33, 13, 25, 'xPDO\\xPDO::newObject', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 808),
(34, 16, 1, 'xPDO\\xPDO::newObject', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 808),
(35, 17, 1, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(36, 17, 1, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(37, 18, 1382, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(38, 18, 1382, 'xPDO\\Om\\xPDOObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 402),
(39, 19, 1377, 'xPDO\\xPDO::newObject', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 808),
(40, 20, 76, 'xPDO\\xPDO::getService', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1258),
(41, 21, 76, 'xPDO\\xPDO::getPKType', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1660),
(42, 21, 76, 'xPDO\\xPDO::getPK', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1598),
(43, 21, 76, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(44, 21, 76, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(45, 19, 107, 'xPDO\\xPDO::getPKType', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1660),
(46, 19, 107, 'xPDO\\xPDO::getPK', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 1598),
(47, 19, 237, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(48, 19, 237, 'MODX\\Revolution\\modAccessibleObject::load', 'C:\\OSPanel\\domains\\hh.local\\core\\src\\Revolution\\modAccessibleObject.php', 106),
(49, 22, 29, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(50, 22, 29, 'MODX\\Revolution\\modAccessibleObject::loadCollection', 'C:\\OSPanel\\domains\\hh.local\\core\\src\\Revolution\\modAccessibleObject.php', 164),
(51, 23, 1, 'xPDO\\xPDO::call', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\xPDO.php', 774),
(52, 23, 1, 'xPDO\\Om\\xPDOObject::loadCollection', 'C:\\OSPanel\\domains\\hh.local\\core\\vendor\\xpdo\\xpdo\\src\\xPDO\\Om\\xPDOObject.php', 460);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_deprecated_method`
--

CREATE TABLE `modx_deprecated_method` (
  `id` int UNSIGNED NOT NULL,
  `definition` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `since` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `recommendation` varchar(1024) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_deprecated_method`
--

INSERT INTO `modx_deprecated_method` (`id`, `definition`, `since`, `recommendation`) VALUES
(1, 'modx.modNamespace', '3.0', 'Replace references to class modx.modNamespace with MODX\\Revolution\\modNamespace to take advantage of PSR-4 autoloading.'),
(2, 'modNamespace', '3.0', 'Replace references to class modNamespace with MODX\\Revolution\\modNamespace to take advantage of PSR-4 autoloading.'),
(3, 'modx.modPlugin', '3.0', 'Replace references to class modx.modPlugin with MODX\\Revolution\\modPlugin to take advantage of PSR-4 autoloading.'),
(4, 'modPlugin', '3.0', 'Replace references to class modPlugin with MODX\\Revolution\\modPlugin to take advantage of PSR-4 autoloading.'),
(5, 'modPluginEvent', '3.0', 'Replace references to class modPluginEvent with MODX\\Revolution\\modPluginEvent to take advantage of PSR-4 autoloading.'),
(6, 'modSystemSetting', '3.0', 'Replace references to class modSystemSetting with MODX\\Revolution\\modSystemSetting to take advantage of PSR-4 autoloading.'),
(7, 'modEvent', '3.0', 'Replace references to class modEvent with MODX\\Revolution\\modEvent to take advantage of PSR-4 autoloading.'),
(8, 'modx.modSystemSetting', '3.0', 'Replace references to class modx.modSystemSetting with MODX\\Revolution\\modSystemSetting to take advantage of PSR-4 autoloading.'),
(9, 'modx.modCategory', '3.0', 'Replace references to class modx.modCategory with MODX\\Revolution\\modCategory to take advantage of PSR-4 autoloading.'),
(10, 'modCategory', '3.0', 'Replace references to class modCategory with MODX\\Revolution\\modCategory to take advantage of PSR-4 autoloading.'),
(11, 'transport.modTransportPackage', '3.0', 'Replace references to class transport.modTransportPackage with MODX\\Revolution\\Transport\\modTransportPackage to take advantage of PSR-4 autoloading.'),
(12, 'modContentType', '3.0', 'Replace references to class modContentType with MODX\\Revolution\\modContentType to take advantage of PSR-4 autoloading.'),
(13, 'modSnippet', '3.0', 'Replace references to class modSnippet with MODX\\Revolution\\modSnippet to take advantage of PSR-4 autoloading.'),
(14, 'registry.modDbRegister', '3.0', 'Replace references to class registry.modDbRegister with MODX\\Revolution\\Registry\\modDbRegister to take advantage of PSR-4 autoloading.'),
(15, 'modChunk', '3.0', 'Replace references to class modChunk with MODX\\Revolution\\modChunk to take advantage of PSR-4 autoloading.'),
(16, 'modx.modMenu', '3.0', 'Replace references to class modx.modMenu with MODX\\Revolution\\modMenu to take advantage of PSR-4 autoloading.'),
(17, 'modMenu', '3.0', 'Replace references to class modMenu with MODX\\Revolution\\modMenu to take advantage of PSR-4 autoloading.'),
(18, 'modContextSetting', '3.0', 'Replace references to class modContextSetting with MODX\\Revolution\\modContextSetting to take advantage of PSR-4 autoloading.'),
(19, 'modTemplateVar', '3.0', 'Replace references to class modTemplateVar with MODX\\Revolution\\modTemplateVar to take advantage of PSR-4 autoloading.'),
(20, 'smarty.modSmarty', '3.0', 'Replace references to class smarty.modSmarty with MODX\\Revolution\\Smarty\\modSmarty to take advantage of PSR-4 autoloading.'),
(21, 'modResource', '3.0', 'Replace references to class modResource with MODX\\Revolution\\modResource to take advantage of PSR-4 autoloading.'),
(22, 'modContext', '3.0', 'Replace references to class modContext with MODX\\Revolution\\modContext to take advantage of PSR-4 autoloading.'),
(23, 'modAccessPolicy', '3.0', 'Replace references to class modAccessPolicy with MODX\\Revolution\\modAccessPolicy to take advantage of PSR-4 autoloading.');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `private_memgroup` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int UNSIGNED NOT NULL,
  `document_group` int NOT NULL DEFAULT '0',
  `document` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `property_set` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int UNSIGNED NOT NULL,
  `namespace` varchar(40) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'core',
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'core',
  `path` text COLLATE utf8mb4_general_ci,
  `table_prefix` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `service_class` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `service_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int NOT NULL DEFAULT '0',
  `profile` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int UNSIGNED NOT NULL,
  `profile` int NOT NULL DEFAULT '0',
  `action` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int NOT NULL DEFAULT '0',
  `constraint` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `constraint_field` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `constraint_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_formit_forms`
--

CREATE TABLE `modx_formit_forms` (
  `id` int UNSIGNED NOT NULL,
  `form` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `values` text COLLATE utf8mb4_general_ci NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `date` int NOT NULL DEFAULT '0',
  `encrypted` tinyint(1) NOT NULL DEFAULT '0',
  `encryption_type` int NOT NULL DEFAULT '1',
  `hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_general_ci NOT NULL,
  `topic` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'default',
  `namespace` varchar(40) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'core',
  `language` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int UNSIGNED NOT NULL,
  `user` int UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `classKey` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `item` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2024-02-02 22:40:27', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(2, 1, '2024-02-02 22:40:37', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(3, 1, '2024-02-02 22:42:39', 'content_type_save', 'MODX\\Revolution\\modContentType', '1'),
(4, 1, '2024-02-02 22:42:56', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'ace.font_size'),
(5, 1, '2024-02-02 22:43:13', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'ace.soft_tabs'),
(6, 1, '2024-02-02 22:43:22', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'ace.theme'),
(7, 1, '2024-02-02 22:43:25', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'ace.word_wrap'),
(8, 1, '2024-02-02 22:44:05', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'friendly_alias_realtime'),
(9, 1, '2024-02-02 22:44:18', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'friendly_alias_translit'),
(10, 1, '2024-02-02 22:44:35', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'friendly_urls'),
(11, 1, '2024-02-02 22:44:38', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'friendly_urls_strict'),
(12, 1, '2024-02-02 22:44:41', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'global_duplicate_uri_check'),
(13, 1, '2024-02-02 22:44:44', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'use_alias_path'),
(14, 1, '2024-02-02 22:44:46', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'use_frozen_parent_uris'),
(15, 1, '2024-02-02 22:45:19', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'pdotools_fenom_modx'),
(16, 1, '2024-02-02 22:45:32', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'pdotools_fenom_parser'),
(17, 1, '2024-02-02 22:45:50', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'pdotools_fenom_php'),
(18, 1, '2024-02-02 22:46:43', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'site_name'),
(19, 1, '2024-02-02 22:46:59', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(20, 1, '2024-02-02 22:47:45', 'directory_remove', '', 'Filesystem: core/elements/chunks\\news\\'),
(21, 1, '2024-02-02 22:48:05', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'upload_files'),
(22, 1, '2024-02-02 22:48:38', 'file_remove', '', 'Filesystem: core/elements/templates/news.tpl'),
(23, 1, '2024-02-02 22:48:41', 'file_remove', '', 'Filesystem: core/elements/templates/news.item.tpl'),
(24, 1, '2024-02-02 22:48:43', 'file_remove', '', 'Filesystem: core/elements/templates/home.tpl'),
(25, 1, '2024-02-02 22:52:49', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(26, 1, '2024-02-02 22:53:30', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(27, 1, '2024-02-02 22:57:40', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(28, 1, '2024-02-02 22:58:24', 'template_update', 'MODX\\Revolution\\modTemplate', '1'),
(29, 1, '2024-02-02 22:58:24', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 1 Default'),
(30, 1, '2024-02-02 22:58:39', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(31, 1, '2024-02-02 22:58:53', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(32, 1, '2024-02-02 22:59:05', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(33, 1, '2024-02-02 23:00:04', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(34, 1, '2024-02-02 23:01:10', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(35, 1, '2024-02-02 23:02:46', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(36, 1, '2024-02-02 23:07:01', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(37, 1, '2024-02-02 23:07:39', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(38, 1, '2024-02-02 23:09:06', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(39, 1, '2024-02-02 23:39:00', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(40, 1, '2024-02-02 23:39:24', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(41, 1, '2024-02-02 23:40:21', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(42, 1, '2024-02-02 23:40:46', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(43, 1, '2024-02-02 23:41:15', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(44, 1, '2024-02-02 23:42:07', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(45, 1, '2024-02-02 23:42:22', 'clear_cache', '', 'mgr'),
(46, 1, '2024-02-02 23:42:46', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(47, 1, '2024-02-02 23:43:45', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'cache_default'),
(48, 1, '2024-02-02 23:43:53', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(49, 1, '2024-02-02 23:46:45', 'setting_update', 'MODX\\Revolution\\modSystemSetting', 'cache_resource'),
(50, 1, '2024-02-02 23:46:53', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(51, 1, '2024-02-02 23:47:07', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(52, 1, '2024-02-03 00:03:03', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(53, 1, '2024-02-03 00:04:02', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(54, 1, '2024-02-03 00:04:13', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(55, 1, '2024-02-03 00:06:16', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(56, 1, '2024-02-03 00:11:51', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(57, 1, '2024-02-03 00:13:59', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(58, 1, '2024-02-03 00:14:02', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(59, 1, '2024-02-03 00:15:22', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(60, 1, '2024-02-03 00:23:05', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(61, 1, '2024-02-03 00:30:20', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(62, 1, '2024-02-03 00:30:32', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(63, 1, '2024-02-03 00:32:03', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(64, 1, '2024-02-03 00:32:25', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(65, 1, '2024-02-03 00:36:57', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(66, 1, '2024-02-03 00:38:19', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(67, 1, '2024-02-03 00:39:23', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(68, 1, '2024-02-03 00:40:11', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(69, 1, '2024-02-03 00:40:18', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(70, 1, '2024-02-03 00:40:26', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(71, 1, '2024-02-03 01:00:19', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(72, 1, '2024-02-03 01:00:20', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(73, 1, '2024-02-03 01:19:13', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(74, 1, '2024-02-03 01:20:11', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(75, 1, '2024-02-03 01:26:22', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(76, 1, '2024-02-03 01:26:29', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(77, 1, '2024-02-03 02:46:32', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(78, 1, '2024-02-03 02:59:32', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(79, 1, '2024-02-03 14:49:51', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(80, 1, '2024-02-03 14:50:00', 'user_widget_remove', 'MODX\\Revolution\\modDashboardWidget', '5'),
(81, 1, '2024-02-03 14:52:31', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(82, 1, '2024-02-03 14:53:03', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(83, 1, '2024-02-03 15:16:28', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(84, 1, '2024-02-03 17:30:30', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(85, 1, '2024-02-03 17:30:35', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(86, 1, '2024-02-03 17:31:41', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(87, 1, '2024-02-03 17:31:45', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(88, 1, '2024-02-03 17:31:53', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(89, 1, '2024-02-03 17:31:55', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(90, 1, '2024-02-03 17:33:42', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(91, 1, '2024-02-03 17:33:46', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(92, 1, '2024-02-03 23:03:35', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(93, 1, '2024-02-03 23:03:46', 'file_create', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(94, 1, '2024-02-03 23:04:13', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(95, 1, '2024-02-03 23:08:40', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(96, 1, '2024-02-03 23:13:29', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(97, 1, '2024-02-03 23:37:25', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(98, 1, '2024-02-03 23:38:13', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(99, 1, '2024-02-03 23:38:34', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(100, 1, '2024-02-04 00:32:31', 'file_create', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(101, 1, '2024-02-04 00:33:02', 'template_update', 'MODX\\Revolution\\modTemplate', '1'),
(102, 1, '2024-02-04 00:33:02', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplate 1 Default'),
(103, 1, '2024-02-04 00:34:13', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(104, 1, '2024-02-04 00:34:18', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(105, 1, '2024-02-04 00:34:25', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(106, 1, '2024-02-04 00:35:31', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(107, 1, '2024-02-04 00:41:27', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(108, 1, '2024-02-04 00:41:58', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(109, 1, '2024-02-04 01:19:42', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(110, 1, '2024-02-04 01:44:30', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(111, 1, '2024-02-04 01:53:25', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(112, 1, '2024-02-04 02:04:25', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(113, 1, '2024-02-04 02:04:41', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(114, 1, '2024-02-04 02:05:15', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(115, 1, '2024-02-04 02:16:12', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(116, 1, '2024-02-04 02:25:54', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(117, 1, '2024-02-04 02:27:15', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(118, 1, '2024-02-04 02:30:21', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(119, 1, '2024-02-04 02:34:37', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(120, 1, '2024-02-04 14:57:11', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(121, 1, '2024-02-04 15:02:34', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(122, 1, '2024-02-04 16:26:32', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(123, 1, '2024-02-04 16:27:46', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(124, 1, '2024-02-04 16:28:26', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(125, 1, '2024-02-04 16:31:31', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(126, 1, '2024-02-04 16:37:36', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(127, 1, '2024-02-04 16:38:28', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(128, 1, '2024-02-04 17:41:37', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(129, 1, '2024-02-04 18:17:29', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(130, 1, '2024-02-05 00:18:47', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(131, 1, '2024-02-05 00:18:55', 'file_create', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(132, 1, '2024-02-05 00:19:20', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(133, 1, '2024-02-05 00:19:48', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(134, 1, '2024-02-05 00:22:56', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(135, 1, '2024-02-05 00:23:10', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(136, 1, '2024-02-05 00:24:33', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(137, 1, '2024-02-05 00:24:46', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(138, 1, '2024-02-05 00:25:41', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(139, 1, '2024-02-05 00:26:21', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(140, 1, '2024-02-05 00:26:52', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(141, 1, '2024-02-05 00:29:08', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(142, 1, '2024-02-05 00:30:41', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(143, 1, '2024-02-05 00:31:39', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(144, 1, '2024-02-05 00:31:44', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(145, 1, '2024-02-05 00:32:15', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(146, 1, '2024-02-05 01:05:20', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(147, 1, '2024-02-05 01:51:36', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(148, 1, '2024-02-05 01:51:46', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(149, 1, '2024-02-05 15:15:28', 'login', 'MODX\\Revolution\\modContext', 'mgr'),
(150, 1, '2024-02-05 15:15:50', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(151, 1, '2024-02-05 15:16:03', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(152, 1, '2024-02-05 15:16:09', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(153, 1, '2024-02-05 15:33:10', 'category_create', 'MODX\\Revolution\\modCategory', '3'),
(154, 1, '2024-02-05 15:41:33', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '1'),
(155, 1, '2024-02-05 15:41:55', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(156, 1, '2024-02-05 15:43:03', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(157, 1, '2024-02-05 15:47:35', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '2'),
(158, 1, '2024-02-05 15:47:59', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '2'),
(159, 1, '2024-02-05 15:47:59', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 2 Default'),
(160, 1, '2024-02-05 15:48:08', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '2'),
(161, 1, '2024-02-05 15:48:08', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 2 Default'),
(162, 1, '2024-02-05 15:48:25', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '2'),
(163, 1, '2024-02-05 15:48:25', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 2 Default'),
(164, 1, '2024-02-05 15:48:34', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(165, 1, '2024-02-05 15:48:39', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(166, 1, '2024-02-05 15:48:49', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '2'),
(167, 1, '2024-02-05 15:48:50', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 2 Default'),
(168, 1, '2024-02-05 15:49:10', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(169, 1, '2024-02-05 15:49:14', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(170, 1, '2024-02-05 15:49:22', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(171, 1, '2024-02-05 15:50:16', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(172, 1, '2024-02-05 15:51:41', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(173, 1, '2024-02-05 15:51:56', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(174, 1, '2024-02-05 15:52:28', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(175, 1, '2024-02-05 15:52:36', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(176, 1, '2024-02-05 15:52:50', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(177, 1, '2024-02-05 15:53:11', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(178, 1, '2024-02-05 15:53:32', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(179, 1, '2024-02-05 16:55:08', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '3'),
(180, 1, '2024-02-05 16:55:23', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '1'),
(181, 1, '2024-02-05 16:55:23', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 1 Default'),
(182, 1, '2024-02-05 16:55:34', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(183, 1, '2024-02-05 16:56:16', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '4'),
(184, 1, '2024-02-05 16:56:38', 'tv_duplicate', 'MODX\\Revolution\\modTemplateVar', '5'),
(185, 1, '2024-02-05 16:56:52', 'tv_duplicate', 'MODX\\Revolution\\modTemplateVar', '6'),
(186, 1, '2024-02-05 16:57:19', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '6'),
(187, 1, '2024-02-05 16:57:19', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 6 Default'),
(188, 1, '2024-02-05 16:57:26', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '6'),
(189, 1, '2024-02-05 16:57:27', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 6 Default'),
(190, 1, '2024-02-05 16:57:34', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '4'),
(191, 1, '2024-02-05 16:57:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 4 Default'),
(192, 1, '2024-02-05 16:57:45', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '3'),
(193, 1, '2024-02-05 16:57:45', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 3 Default'),
(194, 1, '2024-02-05 16:57:52', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '1'),
(195, 1, '2024-02-05 16:57:52', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 1 Default'),
(196, 1, '2024-02-05 16:58:00', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '5'),
(197, 1, '2024-02-05 16:58:00', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 5 Default'),
(198, 1, '2024-02-05 16:58:26', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(199, 1, '2024-02-05 16:58:46', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\header.tpl'),
(200, 1, '2024-02-05 17:00:37', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(201, 1, '2024-02-05 17:01:32', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(202, 1, '2024-02-05 17:01:33', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(203, 1, '2024-02-05 17:05:00', 'resource_create', 'MODX\\Revolution\\modStaticResource', '2'),
(204, 1, '2024-02-05 17:05:26', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(205, 1, '2024-02-05 17:05:36', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(206, 1, '2024-02-05 17:05:55', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(207, 1, '2024-02-05 17:06:20', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(208, 1, '2024-02-05 17:06:30', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(209, 1, '2024-02-05 17:06:49', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(210, 1, '2024-02-05 17:07:03', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(211, 1, '2024-02-05 17:07:16', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(212, 1, '2024-02-05 17:07:56', 'duplicate_resource', 'MODX\\Revolution\\modWebLink', '3'),
(213, 1, '2024-02-05 17:08:07', 'duplicate_resource', 'MODX\\Revolution\\modWebLink', '4'),
(214, 1, '2024-02-05 17:08:14', 'duplicate_resource', 'MODX\\Revolution\\modWebLink', '5'),
(215, 1, '2024-02-05 17:08:22', 'duplicate_resource', 'MODX\\Revolution\\modWebLink', '6'),
(216, 1, '2024-02-05 17:08:28', 'duplicate_resource', 'MODX\\Revolution\\modWebLink', '7'),
(217, 1, '2024-02-05 17:26:18', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(218, 1, '2024-02-05 17:26:53', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(219, 1, '2024-02-05 17:27:14', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(220, 1, '2024-02-05 17:34:58', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(221, 1, '2024-02-05 17:35:39', 'file_create', '', 'Filesystem: core\\elements\\chunks\\base\\li.tpl'),
(222, 1, '2024-02-05 17:35:56', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(223, 1, '2024-02-05 17:36:06', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(224, 1, '2024-02-05 17:36:41', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\li.tpl'),
(225, 1, '2024-02-05 17:37:12', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(226, 1, '2024-02-05 17:37:17', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\li.tpl'),
(227, 1, '2024-02-05 17:37:25', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(228, 1, '2024-02-05 17:37:48', 'resource_update', 'MODX\\Revolution\\modResource', '2'),
(229, 1, '2024-02-05 17:38:18', 'resource_update', 'MODX\\Revolution\\modResource', '3'),
(230, 1, '2024-02-05 17:38:25', 'resource_update', 'MODX\\Revolution\\modResource', '4'),
(231, 1, '2024-02-05 17:38:31', 'resource_update', 'MODX\\Revolution\\modResource', '5'),
(232, 1, '2024-02-05 17:38:37', 'resource_update', 'MODX\\Revolution\\modResource', '6'),
(233, 1, '2024-02-05 17:38:56', 'resource_update', 'MODX\\Revolution\\modResource', '7'),
(234, 1, '2024-02-05 17:39:35', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\li.tpl'),
(235, 1, '2024-02-05 17:39:55', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\li.tpl'),
(236, 1, '2024-02-05 17:40:05', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(237, 1, '2024-02-05 17:41:29', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(238, 1, '2024-02-05 17:41:43', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(239, 1, '2024-02-05 17:41:45', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(240, 1, '2024-02-05 17:42:56', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(241, 1, '2024-02-05 17:49:00', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '7'),
(242, 1, '2024-02-05 18:09:58', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(243, 1, '2024-02-05 18:14:24', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '8'),
(244, 1, '2024-02-05 18:16:19', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '9'),
(245, 1, '2024-02-05 18:20:45', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(246, 1, '2024-02-05 18:22:56', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(247, 1, '2024-02-05 18:26:58', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(248, 1, '2024-02-05 18:27:08', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(249, 1, '2024-02-05 18:27:51', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(250, 1, '2024-02-05 18:27:56', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(251, 1, '2024-02-05 18:28:03', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(252, 1, '2024-02-05 18:28:06', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(253, 1, '2024-02-05 18:28:41', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(254, 1, '2024-02-05 18:28:45', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(255, 1, '2024-02-05 18:29:02', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(256, 1, '2024-02-05 18:30:26', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(257, 1, '2024-02-05 18:30:29', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(258, 1, '2024-02-05 18:30:45', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(259, 1, '2024-02-05 18:30:57', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(260, 1, '2024-02-05 18:31:09', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\footer.tpl'),
(261, 1, '2024-02-05 18:31:57', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(262, 1, '2024-02-05 18:33:05', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(263, 1, '2024-02-05 18:41:26', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(264, 1, '2024-02-05 18:46:28', 'category_create', 'MODX\\Revolution\\modCategory', '5'),
(265, 1, '2024-02-05 18:47:58', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '10'),
(266, 1, '2024-02-05 18:48:12', 'tv_duplicate', 'MODX\\Revolution\\modTemplateVar', '11'),
(267, 1, '2024-02-05 18:48:23', 'tv_duplicate', 'MODX\\Revolution\\modTemplateVar', '12'),
(268, 1, '2024-02-05 18:48:36', 'tv_duplicate', 'MODX\\Revolution\\modTemplateVar', '13'),
(269, 1, '2024-02-05 18:50:01', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '14'),
(270, 1, '2024-02-05 18:50:43', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '15'),
(271, 1, '2024-02-05 18:50:52', 'tv_duplicate', 'MODX\\Revolution\\modTemplateVar', '16'),
(272, 1, '2024-02-05 18:51:24', 'tv_duplicate', 'MODX\\Revolution\\modTemplateVar', '17'),
(273, 1, '2024-02-05 18:52:18', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '8'),
(274, 1, '2024-02-05 18:52:18', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 8 Default'),
(275, 1, '2024-02-05 18:52:22', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '9'),
(276, 1, '2024-02-05 18:52:22', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 9 Default'),
(277, 1, '2024-02-05 18:52:29', 'tv_delete', 'MODX\\Revolution\\modTemplateVar', '17'),
(278, 1, '2024-02-05 18:53:33', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '8'),
(279, 1, '2024-02-05 18:53:34', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 8 Default'),
(280, 1, '2024-02-05 18:53:40', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '9'),
(281, 1, '2024-02-05 18:53:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 9 Default'),
(282, 1, '2024-02-05 18:55:16', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '18'),
(283, 1, '2024-02-05 18:55:48', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '19'),
(284, 1, '2024-02-05 19:04:27', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '20'),
(285, 1, '2024-02-05 19:05:12', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(286, 1, '2024-02-05 19:05:37', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '10'),
(287, 1, '2024-02-05 19:05:37', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 10 Default'),
(288, 1, '2024-02-05 19:05:46', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '10'),
(289, 1, '2024-02-05 19:05:46', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 10 Default'),
(290, 1, '2024-02-05 19:07:51', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(291, 1, '2024-02-05 19:07:54', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(292, 1, '2024-02-05 19:08:28', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(293, 1, '2024-02-05 19:09:15', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(294, 1, '2024-02-05 19:09:22', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(295, 1, '2024-02-05 19:09:39', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(296, 1, '2024-02-05 19:10:55', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(297, 1, '2024-02-05 19:11:08', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(298, 1, '2024-02-05 19:12:48', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(299, 1, '2024-02-05 19:12:55', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(300, 1, '2024-02-05 19:19:12', 'directory_create', '', 'Filesystem: core\\elements\\chunks\\form'),
(301, 1, '2024-02-05 19:19:32', 'file_create', '', 'Filesystem: core\\elements\\chunks\\form\\form.tpl'),
(302, 1, '2024-02-05 19:19:50', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(303, 1, '2024-02-05 19:19:57', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(304, 1, '2024-02-05 19:20:04', 'file_update', '', 'Filesystem: core\\elements\\chunks\\form\\form.tpl'),
(305, 1, '2024-02-05 19:21:33', 'file_create', '', 'Filesystem: core\\elements\\chunks\\form\\form.email.tpl'),
(306, 1, '2024-02-05 19:21:43', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(307, 1, '2024-02-05 19:22:11', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(308, 1, '2024-02-05 19:22:28', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(309, 1, '2024-02-05 19:23:41', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(310, 1, '2024-02-05 19:24:27', 'tv_create', 'MODX\\Revolution\\modTemplateVar', '21'),
(311, 1, '2024-02-05 19:24:33', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '21'),
(312, 1, '2024-02-05 19:24:33', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 21 Default'),
(313, 1, '2024-02-05 19:24:39', 'tv_update', 'MODX\\Revolution\\modTemplateVar', '18'),
(314, 1, '2024-02-05 19:24:40', 'propertyset_update_from_element', 'MODX\\Revolution\\modPropertySet', 'MODX\\Revolution\\modTemplateVar 18 Default'),
(315, 1, '2024-02-05 19:25:07', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(316, 1, '2024-02-05 19:25:42', 'file_update', '', 'Filesystem: core\\elements\\chunks\\form\\form.tpl'),
(317, 1, '2024-02-05 19:25:52', 'file_update', '', 'Filesystem: core\\elements\\chunks\\form\\form.tpl'),
(318, 1, '2024-02-05 19:26:05', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(319, 1, '2024-02-05 19:27:03', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(320, 1, '2024-02-05 19:27:10', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(321, 1, '2024-02-05 19:27:30', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(322, 1, '2024-02-05 19:27:35', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(323, 1, '2024-02-05 19:31:39', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(324, 1, '2024-02-05 19:31:44', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(325, 1, '2024-02-05 19:32:06', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(326, 1, '2024-02-05 19:33:47', 'category_create', 'MODX\\Revolution\\modCategory', '8'),
(327, 1, '2024-02-05 19:34:37', 'chunk_create', 'MODX\\Revolution\\modChunk', '6'),
(328, 1, '2024-02-05 19:34:49', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(329, 1, '2024-02-05 19:35:08', 'chunk_create', 'MODX\\Revolution\\modChunk', '7'),
(330, 1, '2024-02-05 19:35:15', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(331, 1, '2024-02-05 19:41:03', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(332, 1, '2024-02-05 19:41:42', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(333, 1, '2024-02-05 19:41:52', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(334, 1, '2024-02-05 19:44:26', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(335, 1, '2024-02-05 19:53:01', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(336, 1, '2024-02-05 19:53:26', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(337, 1, '2024-02-05 19:53:27', 'file_update', '', 'Filesystem: core\\elements\\chunks\\base\\head.tpl'),
(338, 1, '2024-02-05 19:53:36', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(339, 1, '2024-02-05 19:56:14', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(340, 1, '2024-02-06 00:31:01', 'file_update', '', 'Filesystem: core\\elements\\chunks\\form\\form.tpl'),
(341, 1, '2024-02-06 00:31:21', 'file_update', '', 'Filesystem: core\\elements\\templates\\default.tpl'),
(342, 1, '2024-02-06 00:31:36', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(343, 1, '2024-02-06 00:33:01', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(344, 1, '2024-02-06 00:33:29', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(345, 1, '2024-02-06 00:33:42', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(346, 1, '2024-02-06 00:35:03', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(347, 1, '2024-02-06 00:35:13', 'file_remove', '', 'Filesystem: core/elements/chunks/form/form.tpl'),
(348, 1, '2024-02-06 00:35:20', 'file_update', '', 'Filesystem: core\\elements\\chunks\\form\\form.email.tpl'),
(349, 1, '2024-02-06 00:46:00', 'file_update', '', 'Filesystem: core\\elements\\chunks\\form\\form.email.tpl'),
(350, 1, '2024-02-06 00:57:22', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(351, 1, '2024-02-06 00:58:47', 'file_update', '', 'Filesystem: core\\elements\\chunks\\form\\form.email.tpl'),
(352, 1, '2024-02-06 00:59:19', 'file_update', '', 'Filesystem: core\\elements\\chunks\\form\\form.email.tpl'),
(353, 1, '2024-02-06 00:59:43', 'file_update', '', 'Filesystem: core\\elements\\chunks\\form\\form.email.tpl'),
(354, 1, '2024-02-06 01:26:21', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(355, 1, '2024-02-06 01:26:35', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(356, 1, '2024-02-06 01:35:54', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(357, 1, '2024-02-06 01:35:58', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(358, 1, '2024-02-06 01:40:58', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(359, 1, '2024-02-06 02:27:10', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(360, 1, '2024-02-06 02:32:06', 'file_update', '', 'Filesystem: core\\elements\\templates\\home.tpl'),
(361, 1, '2024-02-06 02:34:00', 'resource_update', 'MODX\\Revolution\\modResource', '1'),
(362, 1, '2024-02-06 02:34:10', 'clear_cache', '', 'mgr');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_general_ci,
  `class_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\Sources\\modFileMediaSource',
  `properties` mediumtext COLLATE utf8mb4_general_ci,
  `is_stream` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'MODX\\Revolution\\Sources\\modFileMediaSource', 'a:0:{}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modTemplateVar',
  `object` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_media_sources_elements`
--

INSERT INTO `modx_media_sources_elements` (`source`, `object_class`, `object`, `context_key`) VALUES
(1, 'MODX\\Revolution\\modTemplateVar', 1, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 2, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 3, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 4, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 5, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 6, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 7, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 8, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 9, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 10, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 11, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 12, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 13, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 14, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 15, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 16, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 17, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 18, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 19, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 20, 'web'),
(1, 'MODX\\Revolution\\modTemplateVar', 21, 'web');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_general_ci,
  `parent` int UNSIGNED NOT NULL DEFAULT '0',
  `rank` int UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int UNSIGNED NOT NULL,
  `user_group` int UNSIGNED NOT NULL DEFAULT '0',
  `member` int UNSIGNED NOT NULL DEFAULT '0',
  `role` int UNSIGNED NOT NULL DEFAULT '1',
  `rank` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `parent` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `action` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `icon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `menuindex` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_general_ci NOT NULL,
  `handler` text COLLATE utf8mb4_general_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_general_ci NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 8, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('components', 'topnav', '', '', '<i class=\"icon-cube icon icon-large\"></i>', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 3, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('formit', 'components', 'home', 'formit.desc', '', 0, '', '', '', 'formit'),
('form_customization', 'admin', 'security/forms', 'form_customization_desc', '', 1, '', '', 'customize_forms', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('language', 'user', '', 'language_desc', '', 2, '', '', 'language', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 3, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '<i class=\"icon-sliders icon icon-large\"></i>', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', '', '<i class=\"icon-file-image-o icon icon-large\"></i>', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('MIGX', 'components', 'index', '', '', 1, '&configs=migxconfigs||packagemanager', '', '', 'migx'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 1, '', 'MODx.preview(); return false;', '', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 2, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '<i class=\"icon-file-text-o icon icon-large\"></i>', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'mgr_log_view', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core'),
('{$username}', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_migx_configs`
--

CREATE TABLE `modx_migx_configs` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `formtabs` text COLLATE utf8mb4_general_ci NOT NULL,
  `contextmenus` text COLLATE utf8mb4_general_ci NOT NULL,
  `actionbuttons` text COLLATE utf8mb4_general_ci NOT NULL,
  `columnbuttons` text COLLATE utf8mb4_general_ci NOT NULL,
  `filters` text COLLATE utf8mb4_general_ci NOT NULL,
  `extended` text COLLATE utf8mb4_general_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_general_ci NOT NULL,
  `fieldpermissions` text COLLATE utf8mb4_general_ci NOT NULL,
  `columns` text COLLATE utf8mb4_general_ci NOT NULL,
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int NOT NULL DEFAULT '0',
  `published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int NOT NULL DEFAULT '0',
  `category` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_migx_configs`
--

INSERT INTO `modx_migx_configs` (`id`, `name`, `formtabs`, `contextmenus`, `actionbuttons`, `columnbuttons`, `filters`, `extended`, `permissions`, `fieldpermissions`, `columns`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `published`, `publishedon`, `publishedby`, `category`) VALUES
(1, 'media', '[{\"MIGX_id\":1,\"caption\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0435\",\"print_before_tabs\":\"0\",\"fields\":[{\"MIGX_id\":1,\"field\":\"icon\",\"caption\":\"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"migx_icon\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":1},{\"MIGX_id\":2,\"field\":\"url\",\"caption\":\"\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"migx_url\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":2}],\"pos\":1}]', '', '', '', '', '{\"migx_add\":\"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u0443\\u044e \\u0441\\u0435\\u0442\\u044c\",\"disable_add_item\":\"\",\"add_items_directly\":\"\",\"formcaption\":\"\",\"update_win_title\":\"\\u0421\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0442\\u044c\",\"win_id\":\"\",\"maxRecords\":\"10\",\"addNewItemAt\":\"bottom\",\"media_source_id\":\"\",\"multiple_formtabs\":\"\",\"multiple_formtabs_label\":\"\",\"multiple_formtabs_field\":\"\",\"multiple_formtabs_optionstext\":\"\",\"multiple_formtabs_optionsvalue\":\"\",\"actionbuttonsperrow\":\"4\",\"winbuttonslist\":\"\",\"extrahandlers\":\"\",\"filtersperrow\":\"4\",\"packageName\":\"\",\"classname\":\"\",\"task\":\"\",\"getlistsort\":\"\",\"getlistsortdir\":\"\",\"sortconfig\":\"\",\"gridpagesize\":\"\",\"use_custom_prefix\":\"0\",\"prefix\":\"\",\"grid\":\"\",\"gridload_mode\":\"1\",\"check_resid\":\"1\",\"check_resid_TV\":\"\",\"join_alias\":\"\",\"has_jointable\":\"yes\",\"getlistwhere\":\"\",\"joins\":\"\",\"hooksnippets\":\"\",\"cmpmaincaption\":\"\",\"cmptabcaption\":\"\",\"cmptabdescription\":\"\",\"cmptabcontroller\":\"\",\"winbuttons\":\"\",\"onsubmitsuccess\":\"\",\"submitparams\":\"\"}', '{\"apiaccess\":\"\",\"view\":\"\",\"list\":\"\",\"save\":\"\",\"create\":\"\",\"remove\":\"\",\"delete\":\"\",\"publish\":\"\",\"unpublish\":\"\",\"viewdeleted\":\"\",\"viewunpublished\":\"\"}', '', '[{\"MIGX_id\":\"1\",\"header\":\"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430\",\"dataIndex\":\"icon\",\"width\":\"\",\"sortable\":\"false\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"this.renderImage\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"2\",\"header\":\"\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430\",\"dataIndex\":\"url\",\"width\":\"\",\"sortable\":\"false\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"}]', 1, '2024-02-05 17:47:17', 1, '2024-02-05 18:56:17', 0, NULL, 0, 1, NULL, 0, ''),
(2, 'plus', '[{\"MIGX_id\":2,\"caption\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0435\",\"print_before_tabs\":\"0\",\"fields\":[{\"MIGX_id\":3,\"field\":\"icon\",\"caption\":\"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"migx_icon\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":1},{\"MIGX_id\":5,\"field\":\"count\",\"caption\":\"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"migx_number\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":2},{\"MIGX_id\":6,\"field\":\"desc\",\"caption\":\"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\",\"description\":\"\",\"description_is_code\":\"0\",\"inputTV\":\"migx_text\",\"inputTVtype\":\"\",\"validation\":\"\",\"configs\":\"\",\"restrictive_condition\":\"\",\"display\":\"\",\"sourceFrom\":\"config\",\"sources\":\"\",\"inputOptionValues\":\"\",\"default\":\"\",\"useDefaultIfEmpty\":\"0\",\"pos\":3}],\"pos\":1}]', '', '', '', '', '{\"migx_add\":\"\\u0414\\u043e\\u0431\\u0430\\u0432\\u0438\\u0442\\u044c \\u043f\\u0440\\u0435\\u0438\\u043c\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043e\",\"disable_add_item\":\"\",\"add_items_directly\":\"\",\"formcaption\":\"\",\"update_win_title\":\"\\u041f\\u0440\\u0435\\u0438\\u043c\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043e\",\"win_id\":\"\",\"maxRecords\":\"10\",\"addNewItemAt\":\"bottom\",\"media_source_id\":\"\",\"multiple_formtabs\":\"\",\"multiple_formtabs_label\":\"\",\"multiple_formtabs_field\":\"\",\"multiple_formtabs_optionstext\":\"\",\"multiple_formtabs_optionsvalue\":\"\",\"actionbuttonsperrow\":\"4\",\"winbuttonslist\":\"\",\"extrahandlers\":\"\",\"filtersperrow\":\"4\",\"packageName\":\"\",\"classname\":\"\",\"task\":\"\",\"getlistsort\":\"\",\"getlistsortdir\":\"\",\"sortconfig\":\"\",\"gridpagesize\":\"\",\"use_custom_prefix\":\"0\",\"prefix\":\"\",\"grid\":\"\",\"gridload_mode\":\"1\",\"check_resid\":\"1\",\"check_resid_TV\":\"\",\"join_alias\":\"\",\"has_jointable\":\"yes\",\"getlistwhere\":\"\",\"joins\":\"\",\"hooksnippets\":\"\",\"cmpmaincaption\":\"\",\"cmptabcaption\":\"\",\"cmptabdescription\":\"\",\"cmptabcontroller\":\"\",\"winbuttons\":\"\",\"onsubmitsuccess\":\"\",\"submitparams\":\"\"}', '{\"apiaccess\":\"\",\"view\":\"\",\"list\":\"\",\"save\":\"\",\"create\":\"\",\"remove\":\"\",\"delete\":\"\",\"publish\":\"\",\"unpublish\":\"\",\"viewdeleted\":\"\",\"viewunpublished\":\"\"}', '', '[{\"MIGX_id\":1,\"header\":\"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430\",\"dataIndex\":\"icon\",\"width\":\"\",\"sortable\":\"false\",\"show_in_grid\":1,\"customrenderer\":\"\",\"renderer\":\"this.renderImage\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"2\",\"header\":\"\\u041a\\u043e\\u043b\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\",\"dataIndex\":\"count\",\"width\":\"\",\"sortable\":\"true\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"},{\"MIGX_id\":\"3\",\"header\":\"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\",\"dataIndex\":\"desc\",\"width\":\"\",\"sortable\":\"false\",\"show_in_grid\":\"1\",\"customrenderer\":\"\",\"renderer\":\"this.renderLimited\",\"clickaction\":\"\",\"selectorconfig\":\"\",\"renderchunktpl\":\"\",\"renderoptions\":\"\",\"editor\":\"\"}]', 1, '2024-02-05 18:57:07', 1, '2024-02-05 19:02:29', 0, NULL, 0, 1, NULL, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_migx_config_elements`
--

CREATE TABLE `modx_migx_config_elements` (
  `id` int UNSIGNED NOT NULL,
  `config_id` int NOT NULL DEFAULT '0',
  `element_id` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0',
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int NOT NULL DEFAULT '0',
  `published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_migx_elements`
--

CREATE TABLE `modx_migx_elements` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int NOT NULL DEFAULT '0',
  `published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_migx_formtabs`
--

CREATE TABLE `modx_migx_formtabs` (
  `id` int UNSIGNED NOT NULL,
  `config_id` int NOT NULL DEFAULT '0',
  `caption` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `print_before_tabs` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `extended` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_migx_formtabs`
--

INSERT INTO `modx_migx_formtabs` (`id`, `config_id`, `caption`, `pos`, `print_before_tabs`, `extended`) VALUES
(1, 1, 'Основное', 1, 0, ''),
(2, 2, 'Основное', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_migx_formtab_fields`
--

CREATE TABLE `modx_migx_formtab_fields` (
  `id` int UNSIGNED NOT NULL,
  `config_id` int NOT NULL DEFAULT '0',
  `formtab_id` int NOT NULL DEFAULT '0',
  `field` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `caption` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `description_is_code` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `inputTV` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `inputTVtype` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `validation` text COLLATE utf8mb4_general_ci NOT NULL,
  `configs` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `restrictive_condition` text COLLATE utf8mb4_general_ci NOT NULL,
  `display` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `sourceFrom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `sources` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `inputOptionValues` text COLLATE utf8mb4_general_ci NOT NULL,
  `default` text COLLATE utf8mb4_general_ci NOT NULL,
  `extended` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_migx_formtab_fields`
--

INSERT INTO `modx_migx_formtab_fields` (`id`, `config_id`, `formtab_id`, `field`, `caption`, `description`, `pos`, `description_is_code`, `inputTV`, `inputTVtype`, `validation`, `configs`, `restrictive_condition`, `display`, `sourceFrom`, `sources`, `inputOptionValues`, `default`, `extended`) VALUES
(1, 1, 1, 'icon', 'Иконка', '', 1, 0, 'migx_icon', '', '', '', '', '', 'config', '', '', '', ''),
(2, 1, 1, 'url', 'Ссылка', '', 2, 0, 'migx_url', '', '', '', '', '', 'config', '', '', '', ''),
(3, 2, 2, 'icon', 'Иконка', '', 1, 0, 'migx_icon', '', '', '', '', '', 'config', '', '', '', ''),
(5, 2, 2, 'count', 'Количество', '', 2, 0, 'migx_number', '', '', '', '', '', 'config', '', '', '', ''),
(6, 2, 2, 'desc', 'Описание', '', 3, 0, 'migx_text', '', '', '', '', '', 'config', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_general_ci,
  `assets_path` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('ace', '{core_path}components/ace/', ''),
('core', '{core_path}', '{assets_path}'),
('formit', '{core_path}components/formit/', '{assets_path}components/formit/'),
('migx', '{core_path}components/migx/', '{assets_path}components/migx/'),
('pdotools', '{core_path}components/pdotools/', ''),
('tinymcerte', '{core_path}components/tinymcerte/', '{assets_path}components/tinymcerte/'),
('translit', '{core_path}components/translit/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `category` int NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `properties` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int UNSIGNED NOT NULL,
  `id` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int UNSIGNED NOT NULL DEFAULT '0',
  `expires` int NOT NULL DEFAULT '0',
  `payload` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `kill` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}'),
(2, 'resource_reload', 'a:1:{s:9:\"directory\";s:15:\"resource_reload\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int UNSIGNED NOT NULL,
  `queue` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2024-02-02 22:40:33', NULL, NULL),
(2, 2, '/resourcereload/', '2024-02-05 17:05:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `access` int UNSIGNED NOT NULL,
  `data` mediumtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('0kspcf7acn62mm1mc1nnp3pk05fh3gh3', 1706909818, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('5h76940td2n3meenv6aort3qoqfl96ph', 1706912782, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"ru\";modx.mgr.user.token|s:52:\"modx65bd450d6237a9.32647711_165bd6c0e395cf2.70304026\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),
('5lj1o46m09ph45nmabd940hrmug4nf24', 1706909819, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('67is35t2ssj6e076jkmc26hck950f8q2', 1706909888, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('92ujudabdrl13u1v9q6epfbf0t7f63dt', 1706909889, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('9c7v2uhdvreiod9ojnkthih4g1dtnjsb', 1706903257, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"ru\";modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx65bd450d6237a9.32647711_165bd452b08e585.67223465\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:3:{i:0;s:23:\"65bd4531c4a144.03687806\";i:1;s:23:\"65bd46a94e7918.03263434\";i:2;s:23:\"65bd46d99b7369.95409583\";}'),
('9haqfhsq67s437lg39mumft66vkbnplf', 1707176014, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"ru\";modx.mgr.user.token|s:52:\"modx65bd450d6237a9.32647711_165c0d160f1f149.83446072\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:62:{i:0;s:23:\"65c0d161224781.61298124\";i:1;s:23:\"65c0d78986de25.88628169\";i:2;s:23:\"65c0d84e97a883.65064365\";i:3;s:23:\"65c0d901ea9263.88444191\";i:4;s:23:\"65c0d909bb02f6.33262827\";i:5;s:23:\"65c0d91b23c066.25650529\";i:6;s:23:\"65c0d929076947.90253446\";i:7;s:23:\"65c0d933d23e13.25610937\";i:8;s:23:\"65c0e8cd5468f3.23614329\";i:9;s:23:\"65c0e9287a81d9.75269575\";i:10;s:23:\"65c0e96b707c12.80728443\";i:11;s:23:\"65c0eb0d3f3de5.73400386\";i:12;s:23:\"65c0eb2466e2e4.60850123\";i:13;s:23:\"65c0eb317a83c2.22799616\";i:14;s:23:\"65c0eb43c0e693.32301120\";i:15;s:23:\"65c0eb4a4d5841.68493194\";i:16;s:23:\"65c0eb5dcb7c51.61935562\";i:17;s:23:\"65c0eb885548e6.42969813\";i:18;s:23:\"65c0ebbcd88791.38187910\";i:19;s:23:\"65c0ebc8825d41.76543427\";i:20;s:23:\"65c0ebcf7a5446.53296452\";i:21;s:23:\"65c0ebd7e40061.96003808\";i:22;s:23:\"65c0ebdd4409e8.43713744\";i:23;s:23:\"65c0f2864baa51.72955851\";i:24;s:23:\"65c0f2be04f6a3.00834983\";i:25;s:23:\"65c0f2d2934891.90166299\";i:26;s:23:\"65c0f2d5ce8c63.08896580\";i:27;s:23:\"65c0f2dabb6960.55281550\";i:28;s:23:\"65c0f2dc6760e5.65807257\";i:29;s:23:\"65c0f2e1b86208.76652976\";i:30;s:23:\"65c0f2e3861874.19062128\";i:31;s:23:\"65c0f2e7df9f39.73982863\";i:32;s:23:\"65c0f2e9a45354.46900657\";i:33;s:23:\"65c0f2ee186f20.18131383\";i:34;s:23:\"65c0f2fc1db5c0.65001193\";i:35;s:23:\"65c0f301849f90.21713201\";i:36;s:23:\"65c0f868bb1338.57340711\";i:37;s:23:\"65c0f88c290e37.13109739\";i:38;s:23:\"65c0f8a7200167.44029615\";i:39;s:23:\"65c0f8da354933.63402147\";i:40;s:23:\"65c0f8eb8d63c6.12010171\";i:41;s:23:\"65c0f9170598d3.59256673\";i:42;s:23:\"65c0f93ec3f323.55394951\";i:43;s:23:\"65c0f96f97c834.78146872\";i:44;s:23:\"65c0fa3395ebc1.82627933\";i:45;s:23:\"65c0fa475b20a3.89333055\";i:46;s:23:\"65c0fb6fe7bee9.09061856\";i:47;s:23:\"65c0fc61296015.49206859\";i:48;s:23:\"65c0fc936b08c2.99744514\";i:49;s:23:\"65c0fcaa8b2fd5.30695051\";i:50;s:23:\"65c0fccfa328b2.16801490\";i:51;s:23:\"65c0fcec29c090.09343910\";i:52;s:23:\"65c0fd0af05ec8.76722929\";i:53;s:23:\"65c0fd1c09fcc4.08148870\";i:54;s:23:\"65c0fd525d3b20.99668050\";i:55;s:23:\"65c10469168fd3.96314390\";i:56;s:23:\"65c1071167a896.91638709\";i:57;s:23:\"65c10752c1f924.94142842\";i:58;s:23:\"65c107dbb1a917.59892321\";i:59;s:23:\"65c10bca806bd7.16044258\";i:60;s:23:\"65c15a92936623.00890122\";i:61;s:23:\"65c1704eada4d6.68008674\";}AjaxForm|a:2:{s:32:\"b83782d1ed622e593f893a63737f15e7\";a:16:{s:4:\"form\";s:0:\"\";s:7:\"snippet\";s:6:\"FormIt\";s:12:\"frontend_css\";s:29:\"[[+assetsUrl]]css/default.css\";s:11:\"frontend_js\";s:27:\"[[+assetsUrl]]js/default.js\";s:9:\"actionUrl\";s:24:\"[[+assetsUrl]]action.php\";s:12:\"formSelector\";s:9:\"ajax_form\";s:10:\"objectName\";s:8:\"AjaxForm\";s:5:\"hooks\";s:5:\"email\";s:8:\"emailTpl\";s:32:\"@FILE chunks/form/form.email.tpl\";s:12:\"emailSubject\";s:36:\"Заявка с контактами\";s:9:\"emailFrom\";s:17:\"admin@example.com\";s:13:\"emailFromName\";s:10:\"MAYBESMART\";s:7:\"emailTo\";s:22:\"edik-kichaev@yandex.ru\";s:8:\"validate\";s:30:\"phone:required,accept:required\";s:22:\"validationErrorMessage\";s:47:\"В форме содержатся ошибки\";s:14:\"successMessage\";s:48:\"Заявка успешно отправлена\";}s:32:\"976defe7ae7615e7d404baf0de91d46c\";a:16:{s:4:\"form\";s:8:\"form.tpl\";s:7:\"snippet\";s:6:\"FormIt\";s:12:\"frontend_css\";s:29:\"[[+assetsUrl]]css/default.css\";s:11:\"frontend_js\";s:27:\"[[+assetsUrl]]js/default.js\";s:9:\"actionUrl\";s:24:\"[[+assetsUrl]]action.php\";s:12:\"formSelector\";s:9:\"ajax_form\";s:10:\"objectName\";s:8:\"AjaxForm\";s:5:\"hooks\";s:5:\"email\";s:8:\"emailTpl\";s:14:\"form.email.tpl\";s:12:\"emailSubject\";s:36:\"Заявка с контактами\";s:9:\"emailFrom\";s:17:\"admin@example.com\";s:13:\"emailFromName\";s:10:\"MAYBESMART\";s:7:\"emailTo\";s:22:\"edik-kichaev@yandex.ru\";s:8:\"validate\";s:30:\"phone:required,accept:required\";s:22:\"validationErrorMessage\";s:47:\"В форме содержатся ошибки\";s:14:\"successMessage\";s:48:\"Заявка успешно отправлена\";}}'),
('bf1iferjf8b3q75hgjepljh9ucs9kp6d', 1706909889, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('i1qnlo5c6878cu3r3v7vug2sbhei16qg', 1706909422, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('korqv59obvbjmli6o82r8h34km3gop1j', 1706910018, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('nq9b9c1387779qsv0tncr705i132ripg', 1706909879, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('o76tk4u808lv2mrbvsiv9uai3g7fj917', 1707090951, 'modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}manager_language|s:2:\"ru\";modx.mgr.user.token|s:52:\"modx65bd450d6237a9.32647711_165be285f021ec0.79572816\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:3:{i:0;s:23:\"65be2ea0a41a93.39748851\";i:1;s:23:\"65be4e47def068.03636311\";i:2;s:23:\"65c024076e43b3.99466687\";}'),
('oijub9gqf1ii3lfjfgh2n13t92e1cocc', 1706909881, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('rhbpde1ijraio9ucf9tusulp8f5ddues', 1706970689, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('to71u83kf0ucumid0qj4igvbbu5efslg', 1706909423, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}'),
('u4gmuc7n8h2evrntnm8pggg5mkuc2a77', 1706909841, 'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:32:\"MODX\\Revolution\\modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:38:\"MODX\\Revolution\\modAccessResourceGroup\";a:0:{}s:33:\"MODX\\Revolution\\modAccessCategory\";a:0:{}s:44:\"MODX\\Revolution\\Sources\\modAccessMediaSource\";a:0:{}s:34:\"MODX\\Revolution\\modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'document',
  `pagetitle` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `longtitle` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_general_ci DEFAULT '',
  `link_attributes` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int NOT NULL DEFAULT '0',
  `unpub_date` int NOT NULL DEFAULT '0',
  `parent` int UNSIGNED NOT NULL DEFAULT '0',
  `isfolder` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text COLLATE utf8mb4_general_ci,
  `content` mediumtext COLLATE utf8mb4_general_ci,
  `richtext` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `template` int NOT NULL DEFAULT '0',
  `menuindex` int NOT NULL DEFAULT '0',
  `searchable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0',
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0',
  `deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int NOT NULL DEFAULT '0',
  `deletedby` int NOT NULL DEFAULT '0',
  `publishedon` int NOT NULL DEFAULT '0',
  `publishedby` int NOT NULL DEFAULT '0',
  `menutitle` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `donthit` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modDocument',
  `context_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'web',
  `content_type` int UNSIGNED NOT NULL DEFAULT '1',
  `uri` text COLLATE utf8mb4_general_ci,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext COLLATE utf8mb4_general_ci,
  `alias_visible` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`, `alias_visible`) VALUES
(1, 'document', 'Главная', 'MAYBESMART - Система автоматизации', '', 'index', '', 1, 0, 0, 0, 0, 'Наша история', '<p>Компания Умный Дом реализовала множество проектов в области автоматизации зданий, как на частных территориях (в квартирах, домах, офисах), так и в государственных учреждениях. Наши системы установлены на множестве объектов в Санкт-Петербурге, Москве, Новосибирске, где расположены наши филиалы, и в других регионах и даже странах. За свою 20-летнюю историю работ с системами безопасности и 14-летнюю историю установки Умных Домов, наши инженеры и проектировщики приобрели колоссальный опыт, помогающий в работе с объектами любой сложности и объемов.</p>', 1, 1, 0, 1, 1, 1, 1706902804, 1, 1707176040, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modDocument', 'web', 1, 'index', 0, 0, 1, NULL, 1),
(2, 'document', 'О компании', '', '', 'o-kompanii', '', 1, 0, 0, 0, 0, '', '', 1, 0, 1, 1, 0, 1, 1707141900, 1, 1707143868, 0, 0, 0, 1707142020, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modSymLink', 'web', 1, 'o-kompanii', 0, 0, 1, '{\"core\":{\"responseCode\":\"HTTP\\/1.1 301 Moved Permanently\"}}', 1),
(3, 'document', 'Портфолио', '', '', 'portfolio', '', 1, 0, 0, 0, 0, '', '', 1, 0, 2, 1, 0, 1, 1707142076, 1, 1707143898, 0, 0, 0, 1707142020, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modSymLink', 'web', 1, 'portfolio', 0, 0, 1, '{\"core\":{\"responseCode\":\"HTTP\\/1.1 301 Moved Permanently\"}}', 1),
(4, 'document', 'Услуги', '', '', 'uslugi', '', 1, 0, 0, 0, 0, '', '', 1, 0, 3, 1, 0, 1, 1707142087, 1, 1707143905, 0, 0, 0, 1707142020, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modSymLink', 'web', 1, 'uslugi', 0, 0, 1, '{\"core\":{\"responseCode\":\"HTTP\\/1.1 301 Moved Permanently\"}}', 1),
(5, 'document', 'Дизайнерам', '', '', 'dizajneram', '', 1, 0, 0, 0, 0, '', '', 1, 0, 4, 1, 0, 1, 1707142094, 1, 1707143911, 0, 0, 0, 1707142020, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modSymLink', 'web', 1, 'dizajneram', 0, 0, 1, '{\"core\":{\"responseCode\":\"HTTP\\/1.1 301 Moved Permanently\"}}', 1),
(6, 'document', 'Управление', '', '', 'upravlenie', '', 1, 0, 0, 0, 0, '', '', 1, 0, 5, 1, 0, 1, 1707142102, 1, 1707143917, 0, 0, 0, 1707142020, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modSymLink', 'web', 1, 'upravlenie', 0, 0, 1, '{\"core\":{\"responseCode\":\"HTTP\\/1.1 301 Moved Permanently\"}}', 1),
(7, 'document', 'Контакты', '', '', 'kontaktyi', '', 1, 0, 0, 0, 0, '', '', 1, 0, 6, 1, 0, 1, 1707142108, 1, 1707143936, 0, 0, 0, 1707142020, 1, '', 0, 0, 0, 0, 0, 'MODX\\Revolution\\modSymLink', 'web', 1, 'kontaktyi', 0, 0, 1, '{\"core\":{\"responseCode\":\"HTTP\\/1.1 301 Moved Permanently\"}}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Chunk',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext COLLATE utf8mb4_general_ci,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8mb4_general_ci,
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'fiDefaultEmailTpl', 'The default chunk used for the email. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 6, 0, '<p>[[+fields]]</p>', 0, 'a:0:{}', 0, ''),
(2, 0, 0, 'fiDefaultFiarTpl', 'The default chunk used for the autoresponder email. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 6, 0, '<p>Hello [[+name]],</p>\n\n<p>Your message has been received. We will respond as soon as possible. Thank you for contacting us.</p>\n\n<p>NOTE: This is an automatic response; please do not respond to this message directly.</p>\n\n<p>Here is your message:<br />\n[[+message:nl2br]]</p>', 0, 'a:0:{}', 0, ''),
(3, 0, 0, 'fiDefaultOptGroupTpl', 'The default chunk used by the FormItCountryOptions snippet for the select optgroup. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 6, 0, '<optgroup label=\"[[+text]]\">\n    [[+options]]\n</optgroup>', 0, 'a:0:{}', 0, ''),
(4, 0, 0, 'fiDefaultOptionTpl', 'The default chunk used by the FormItCountryOptions snippet for the select option. Please do not edit this chunk, as this will be overwritten when updating FormIt.', 0, 6, 0, '<option value=\"[[+value]]\"[[+selected]]>[[+text]]</option>', 0, 'a:0:{}', 0, ''),
(5, 1, 0, 'tpl.AjaxForm.example', '', 0, 0, 0, '<form action=\"\" method=\"post\" class=\"ajax_form af_example\">\n\n    <div class=\"form-group\">\n        <label class=\"control-label\" for=\"af_name\">[[%af_label_name]]</label>\n        <div class=\"controls\">\n            <input type=\"text\" id=\"af_name\" name=\"name\" value=\"[[+fi.name]]\" placeholder=\"\" class=\"form-control\"/>\n            <span class=\"error_name\">[[+fi.error.name]]</span>\n        </div>\n    </div>\n\n    <div class=\"form-group\">\n        <label class=\"control-label\" for=\"af_email\">[[%af_label_email]]</label>\n        <div class=\"controls\">\n            <input type=\"email\" id=\"af_email\" name=\"email\" value=\"[[+fi.email]]\" placeholder=\"\" class=\"form-control\"/>\n            <span class=\"error_email\">[[+fi.error.email]]</span>\n        </div>\n    </div>\n\n    <div class=\"form-group\">\n        <label class=\"control-label\" for=\"af_message\">[[%af_label_message]]</label>\n        <div class=\"controls\">\n            <textarea id=\"af_message\" name=\"message\" class=\"form-control\" rows=\"5\">[[+fi.message]]</textarea>\n            <span class=\"error_message\">[[+fi.error.message]]</span>\n        </div>\n    </div>\n\n    <div class=\"form-group\">\n        <div class=\"controls\">\n            <button type=\"reset\" class=\"btn btn-default\">[[%af_reset]]</button>\n            <button type=\"submit\" class=\"btn btn-primary\">[[%af_submit]]</button>\n        </div>\n    </div>\n\n    [[+fi.success:is=`1`:then=`\n    <div class=\"alert alert-success\">[[+fi.successMessage]]</div>\n    `]]\n    [[+fi.validation_error:is=`1`:then=`\n    <div class=\"alert alert-danger\">[[+fi.validation_error_message]]</div>\n    `]]\n</form>', 0, NULL, 0, 'core/components/ajaxform/elements/chunks/chunk.example.tpl'),
(6, 1, 0, 'form.tpl', '', 0, 8, 0, '<form class=\"form__form\" method=\"POST\">\n	<label class=\"form__item\">\n		<input class=\"form__input\" type=\"text\" name=\"name\" placeholder=\"Ваше имя\">\n	</label>\n	<label class=\"form__item\">\n		<input class=\"form__input\" type=\"tel\" name=\"phone\" placeholder=\"Телефон\" required>\n	</label>\n	<label class=\"form__item\">\n		<input class=\"form__input\" type=\"email\" name=\"email\" placeholder=\"E-mail\">\n	</label>\n	<label class=\"form__item form__item_row\">\n		<textarea class=\"form__textarea\" name=\"comment\" placeholder=\"Комментарий\"></textarea>\n	</label>\n	<label class=\"form__item form__item_accept\">\n		<input class=\"form__checkbox\" type=\"checkbox\" name=\"accept\" value=\"1\" checked>\n		<div class=\"form__flex\">\n			<div class=\"form__span\"></div>\n			<div class=\"form__label\">Я согласен с условиями обработки персональных данных</div>\n		</div>\n	</label>\n	<label class=\"form__item form__item_button\">\n		<button class=\"button form__button\" type=\"submit\">Отправить</button>\n	</label>\n</form>', 0, 'a:0:{}', 1, 'core/elements/chunks/form/form.tpl'),
(7, 1, 0, 'form.email.tpl', '', 0, 8, 0, '<h3>Заявка с сайта {$_modx->config.site_name}</h3>\n{if $name}\n	<p><strong>От кого:</strong> {$name}</p>\n{/if}\n{if $phone}\n	<p><strong>Телефон:</strong> {$phone}</p>\n{/if}\n{if $email}\n	<p><strong>Электронная почта:</strong> {$email}</p>\n{/if}\n{if $comment}\n	<p><strong>Комментарий:</strong> {$comment}</p>\n{/if}', 0, 'a:0:{}', 1, 'core/elements/chunks/form/form.email.tpl');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8mb4_general_ci,
  `disabled` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 0, 0, 'Ace', 'Ace code editor plugin for MODx Revolution', 0, 0, 0, '/**\n * Ace Source Editor Plugin\n *\n * Events: OnManagerPageBeforeRender, OnRichTextEditorRegister, OnSnipFormPrerender,\n * OnTempFormPrerender, OnChunkFormPrerender, OnPluginFormPrerender,\n * OnFileCreateFormPrerender, OnFileEditFormPrerender, OnDocFormPrerender\n *\n * @author Danil Kostin <danya.postfactum(at)gmail.com>\n *\n * @package ace\n *\n * @var array $scriptProperties\n * @var Ace $ace\n */\nif ($modx->event->name == \'OnRichTextEditorRegister\') {\n    $modx->event->output(\'Ace\');\n    return;\n}\n\nif ($modx->getOption(\'which_element_editor\', null, \'Ace\') !== \'Ace\') {\n    return;\n}\n\n$corePath = $modx->getOption(\'ace.core_path\', null, $modx->getOption(\'core_path\').\'components/ace/\');\n$ace = $modx->getService(\'ace\', \'Ace\', $corePath.\'model/ace/\');\n$ace->initialize();\n\n$extensionMap = array(\n    \'tpl\'   => \'text/x-smarty\',\n    \'htm\'   => \'text/html\',\n    \'html\'  => \'text/html\',\n    \'css\'   => \'text/css\',\n    \'scss\'  => \'text/x-scss\',\n    \'less\'  => \'text/x-less\',\n    \'svg\'   => \'image/svg+xml\',\n    \'xml\'   => \'application/xml\',\n    \'xsl\'   => \'application/xml\',\n    \'js\'    => \'application/javascript\',\n    \'json\'  => \'application/json\',\n    \'php\'   => \'application/x-php\',\n    \'sql\'   => \'text/x-sql\',\n    \'md\'    => \'text/x-markdown\',\n    \'txt\'   => \'text/plain\',\n    \'twig\'  => \'text/x-twig\'\n);\n\n// Define default mime for html elements(templates, chunks and html resources)\n$html_elements_mime=$modx->getOption(\'ace.html_elements_mime\',null,false);\nif(!$html_elements_mime){\n    // this may deprecated in future because components may set ace.html_elements_mime option now\n    switch (true) {\n        case $modx->getOption(\'twiggy_class\'):\n            $html_elements_mime = \'text/x-twig\';\n            break;\n        case $modx->getOption(\'pdotools_fenom_parser\'):\n            $html_elements_mime = \'text/x-smarty\';\n            break;\n        default:\n            $html_elements_mime = \'text/html\';\n    }\n}\n\n// Defines wether we should highlight modx tags\n$modxTags = false;\nswitch ($modx->event->name) {\n    case \'OnSnipFormPrerender\':\n        $field = \'modx-snippet-snippet\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnTempFormPrerender\':\n        $field = \'modx-template-content\';\n        $modxTags = true;\n        $mimeType = $html_elements_mime;\n        break;\n    case \'OnChunkFormPrerender\':\n        $field = \'modx-chunk-snippet\';\n        if ($modx->controller->chunk && $modx->controller->chunk->isStatic()) {\n            $extension = pathinfo($modx->controller->chunk->name, PATHINFO_EXTENSION);\n            if(!$extension||!isset($extensionMap[$extension])){\n                $extension = pathinfo($modx->controller->chunk->getSourceFile(), PATHINFO_EXTENSION);\n            }\n            $mimeType = isset($extensionMap[$extension]) ? $extensionMap[$extension] : \'text/plain\';\n        } else {\n            $mimeType = $html_elements_mime;\n        }\n        $modxTags = true;\n        break;\n    case \'OnPluginFormPrerender\':\n        $field = \'modx-plugin-plugincode\';\n        $mimeType = \'application/x-php\';\n        break;\n    case \'OnFileCreateFormPrerender\':\n        $field = \'modx-file-content\';\n        $mimeType = \'text/plain\';\n        break;\n    case \'OnFileEditFormPrerender\':\n        $field = \'modx-file-content\';\n        $extension = pathinfo($scriptProperties[\'file\'], PATHINFO_EXTENSION);\n        $mimeType = isset($extensionMap[$extension])\n            ? $extensionMap[$extension]\n            : (\'@FILE:\'.pathinfo($scriptProperties[\'file\'], PATHINFO_BASENAME));\n        $modxTags = $extension == \'tpl\';\n        break;\n    case \'OnDocFormPrerender\':\n        if (!$modx->controller->resourceArray) {\n            return;\n        }\n        $field = \'ta\';\n        $mimeType = $modx->getObject(\'modContentType\', $modx->controller->resourceArray[\'content_type\'])->get(\'mime_type\');\n\n        if($mimeType == \'text/html\')$mimeType = $html_elements_mime;\n\n        if ($modx->getOption(\'use_editor\')){\n            $richText = $modx->controller->resourceArray[\'richtext\'];\n            $classKey = $modx->controller->resourceArray[\'class_key\'];\n            if ($richText || in_array($classKey, array(\'modStaticResource\',\'modSymLink\',\'modWebLink\',\'modXMLRPCResource\'))) {\n                $field = false;\n            }\n        }\n        $modxTags = true;\n        break;\n    case \'OnTVInputRenderList\':\n        $modx->event->output($corePath . \'elements/tv/input/\');\n        break;\n    default:\n        return;\n}\n\n$modxTags = (int) $modxTags;\n$script = \'\';\nif (!empty($field)) {\n    $script .= \"MODx.ux.Ace.replaceComponent(\'$field\', \'$mimeType\', $modxTags);\";\n}\n\nif ($modx->event->name == \'OnDocFormPrerender\' && !$modx->getOption(\'use_editor\')) {\n    $script .= \"MODx.ux.Ace.replaceTextAreas(Ext.query(\'.modx-richtext\'));\";\n}\n\nif ($script) {\n    $modx->controller->addHtml(\'<script>Ext.onReady(function() {\' . $script . \'});</script>\');\n}', 0, NULL, 0, '', 0, 'ace/elements/plugins/ace.plugin.php'),
(2, 1, 0, 'pdoTools', '', 0, 1, 0, '/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\nswitch ($modx->event->name) {\r\n    case \'OnSiteRefresh\':\r\n        /** @var ModxPro\\PdoTools\\CoreTools $coreTools */\r\n        if ($coreTools = $modx->services->get(\'pdotools\')) {\r\n            if ($coreTools->clearFileCache()) {\r\n                $modx->log(modX::LOG_LEVEL_INFO, $modx->lexicon(\'refresh_default\') . \': pdoTools\');\r\n            }\r\n        }\r\n        break;\r\n    case \'OnWebPagePrerender\':\r\n        /** @var ModxPro\\PdoTools\\Parsing\\Parser $parser */\r\n        $parser = $modx->getParser();\r\n        if ($parser instanceof ModxPro\\PdoTools\\Parsing\\Parser) {\r\n            foreach ($parser->ignores as $key => $val) {\r\n                $modx->resource->_output = str_replace($key, $val, $modx->resource->_output);\r\n            }\r\n        }\r\n        break;\r\n}', 0, NULL, 0, '', 0, 'core/components/pdotools/elements/plugins/plugin.pdotools.php'),
(3, 0, 0, 'TinyMCE Rich Text Editor', 'TinyMCE Rich Text Editor runtime hooks - registers and includes javascripts on document edit pages', 0, 2, 0, '/**\n * TinyMCE Rich Tech Editor Plugin\n *\n * @package tinymcerte\n * @subpackage plugin\n *\n * @var modX $modx\n * @var array $scriptProperties\n */\n\n$className = \'TinyMCERTE\\Plugins\\Events\\\\\' . $modx->event->name;\n\n$corePath = $modx->getOption(\'tinymcerte.core_path\', null, $modx->getOption(\'core_path\') . \'components/tinymcerte/\');\n/** @var TinyMCERTE $tinymcerte */\n$tinymcerte = $modx->getService(\'tinymcerte\', \'TinyMCERTE\', $corePath . \'model/tinymcerte/\', [\n    \'core_path\' => $corePath\n]);\n\nif ($tinymcerte) {\n    if (class_exists($className)) {\n        $handler = new $className($modx, $scriptProperties);\n        if (get_class($handler) == $className) {\n            $handler->run();\n        } else {\n            $modx->log(xPDO::LOG_LEVEL_ERROR, $className. \' could not be initialized!\', \'\', \'TinyMCE RTE Plugin\');\n        }\n    } else {\n        $modx->log(xPDO::LOG_LEVEL_ERROR, $className. \' was not found!\', \'\', \'TinyMCE RTE Plugin\');\n    }\n}\n\nreturn;', 0, 'a:0:{}', 0, '', 0, ''),
(4, 0, 0, 'MIGX', '', 0, 4, 0, '$corePath = $modx->getOption(\'migx.core_path\',null,$modx->getOption(\'core_path\').\'components/migx/\');\r\n$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\r\nswitch ($modx->event->name) {\r\n    case \'OnTVInputRenderList\':\r\n        $modx->event->output($corePath.\'elements/tv/input/\');\r\n        break;\r\n    case \'OnTVInputPropertiesList\':\r\n        $modx->event->output($corePath.\'elements/tv/inputoptions/\');\r\n        break;\r\n\r\n        case \'OnDocFormPrerender\':\r\n        $modx->controller->addCss($assetsUrl.\'css/mgr.css\');\r\n        break; \r\n \r\n    /*          \r\n    case \'OnTVOutputRenderList\':\r\n        $modx->event->output($corePath.\'elements/tv/output/\');\r\n        break;\r\n    case \'OnTVOutputRenderPropertiesList\':\r\n        $modx->event->output($corePath.\'elements/tv/properties/\');\r\n        break;\r\n    \r\n    case \'OnDocFormPrerender\':\r\n        $assetsUrl = $modx->getOption(\'colorpicker.assets_url\',null,$modx->getOption(\'assets_url\').\'components/colorpicker/\'); \r\n        $modx->regClientStartupHTMLBlock(\'<script type=\"text/javascript\">\r\n        Ext.onReady(function() {\r\n            \r\n        });\r\n        </script>\');\r\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPicker.js\');\r\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorMenu.js\');\r\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPickerField.js\');		\r\n        $modx->regClientCSS($assetsUrl.\'resources/css/colorpicker.css\');\r\n        break;\r\n     */\r\n}\r\nreturn;', 0, 'a:0:{}', 0, '', 0, ''),
(5, 0, 0, 'MIGXquip', '', 0, 4, 0, '$quipCorePath = $modx->getOption(\'quip.core_path\', null, $modx->getOption(\'core_path\') . \'components/quip/\');\r\n//$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\r\nswitch ($modx->event->name)\r\n{\r\n\r\n    case \'OnDocFormPrerender\':\r\n\r\n        \r\n        require_once $quipCorePath . \'model/quip/quip.class.php\';\r\n        $modx->quip = new Quip($modx);\r\n\r\n        $modx->lexicon->load(\'quip:default\');\r\n        $quipconfig = $modx->toJson($modx->quip->config);\r\n        \r\n        $js = \"\r\n        Quip.config = Ext.util.JSON.decode(\'{$quipconfig}\');\r\n        console.log(Quip);\";\r\n\r\n        //$modx->controller->addCss($assetsUrl . \'css/mgr.css\');\r\n        $modx->controller->addJavascript($modx->quip->config[\'jsUrl\'].\'quip.js\');\r\n        $modx->controller->addHtml(\'<script type=\"text/javascript\">\' . $js . \'</script>\');\r\n        break;\r\n\r\n}\r\nreturn;', 0, 'a:0:{}', 1, '', 0, ''),
(6, 0, 0, 'migxResizeOnUpload', '', 0, 4, 0, '/**\n * migxResizeOnUpload Plugin\n *\n * Events: OnFileManagerUpload\n * Author: Bruno Perner <b.perner@gmx.de>\n * Modified to read multiple configs from mediasource-property\n * \n * First Author: Vasiliy Naumkin <bezumkin@yandex.ru>\n * Required: PhpThumbOf snippet for resizing images\n * \n * Example: mediasource - property \'resizeConfig\':\n * [{\"alias\":\"origin\",\"w\":\"500\",\"h\":\"500\",\"far\":1},{\"alias\":\"thumb\",\"w\":\"150\",\"h\":\"150\",\"far\":1}]\n */\n\nif ($modx->event->name != \'OnFileManagerUpload\') {\n    return;\n}\n\n\n$file = $modx->event->params[\'files\'][\'file\'];\n$directory = $modx->event->params[\'directory\'];\n\nif ($file[\'error\'] != 0) {\n    return;\n}\n\n$name = $file[\'name\'];\n//$extensions = explode(\',\', $modx->getOption(\'upload_images\'));\n\n$source = $modx->event->params[\'source\'];\n\nif ($source instanceof modMediaSource) {\n    //$dirTree = $modx->getOption(\'dirtree\', $_REQUEST, \'\');\n    //$modx->setPlaceholder(\'docid\', $resource_id);\n    $source->initialize();\n    $basePath = str_replace(\'/./\', \'/\', $source->getBasePath());\n    //$cachepath = $cachepath . $dirTree;\n    $baseUrl = $modx->getOption(\'site_url\') . $source->getBaseUrl();\n    //$baseUrl = $baseUrl . $dirTree;\n    $sourceProperties = $source->getPropertyList();\n\n    //echo \'<pre>\' . print_r($sourceProperties, 1) . \'</pre>\';\n    //$allowedExtensions = $modx->getOption(\'allowedFileTypes\', $sourceProperties, \'\');\n    //$allowedExtensions = empty($allowedExtensions) ? \'jpg,jpeg,png,gif\' : $allowedExtensions;\n    //$maxFilesizeMb = $modx->getOption(\'maxFilesizeMb\', $sourceProperties, \'8\');\n    //$maxFiles = $modx->getOption(\'maxFiles\', $sourceProperties, \'0\');\n    //$thumbX = $modx->getOption(\'thumbX\', $sourceProperties, \'100\');\n    //$thumbY = $modx->getOption(\'thumbY\', $sourceProperties, \'100\');\n    $resizeConfigs = $modx->getOption(\'resizeConfigs\', $sourceProperties, \'\');\n    $resizeConfigs = $modx->fromJson($resizeConfigs);\n    $thumbscontainer = $modx->getOption(\'thumbscontainer\', $sourceProperties, \'thumbs/\');\n    $imageExtensions = $modx->getOption(\'imageExtensions\', $sourceProperties, \'jpg,jpeg,png,gif,JPG\');\n    $imageExtensions = explode(\',\', $imageExtensions);\n    //$uniqueFilenames = $modx->getOption(\'uniqueFilenames\', $sourceProperties, false);\n    //$onImageUpload = $modx->getOption(\'onImageUpload\', $sourceProperties, \'\');\n    //$onImageRemove = $modx->getOption(\'onImageRemove\', $sourceProperties, \'\');\n    $cleanalias = $modx->getOption(\'cleanFilename\', $sourceProperties, false);\n\n}\n\nif (is_array($resizeConfigs) && count($resizeConfigs) > 0) {\n    foreach ($resizeConfigs as $rc) {\n        if (isset($rc[\'alias\'])) {\n            $filePath = $basePath . $directory;\n            $filePath = str_replace(\'//\',\'/\',$filePath);\n            if ($rc[\'alias\'] == \'origin\') {\n                $thumbPath = $filePath;\n            } else {\n                $thumbPath = $filePath . $rc[\'alias\'] . \'/\';\n                $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n                if (!@mkdir($thumbPath, $permissions, true)) {\n                    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $thumbPath));\n                } else {\n                    chmod($thumbPath, $permissions);\n                }\n\n            }\n\n\n            $filename = $filePath . $name;\n            $thumbname = $thumbPath . $name;\n            $ext = substr(strrchr($name, \'.\'), 1);\n            if (in_array($ext, $imageExtensions)) {\n                $sizes = getimagesize($filename);\n                echo $sizes[0]; \n                //$format = substr($sizes[\'mime\'], 6);\n                if ($sizes[0] > $rc[\'w\'] || $sizes[1] > $rc[\'h\']) {\n                    if ($sizes[0] < $rc[\'w\']) {\n                        $rc[\'w\'] = $sizes[0];\n                    }\n                    if ($sizes[1] < $rc[\'h\']) {\n                        $rc[\'h\'] = $sizes[1];\n                    }\n                    $type = $sizes[0] > $sizes[1] ? \'landscape\' : \'portrait\';\n                    if (isset($rc[\'far\']) && $rc[\'far\'] == \'1\' && isset($rc[\'w\']) && isset($rc[\'h\'])) {\n                        if ($type = \'landscape\') {\n                            unset($rc[\'h\']);\n                        }else {\n                            unset($rc[\'w\']);\n                        }\n                    }\n\n                    $options = \'\';\n                    foreach ($rc as $k => $v) {\n                        if ($k != \'alias\') {\n                            $options .= \'&\' . $k . \'=\' . $v;\n                        }\n                    }\n                    $resized = $modx->runSnippet(\'phpthumbof\', array(\'input\' => $filePath . $name, \'options\' => $options));\n                    rename(MODX_BASE_PATH . substr($resized, 1), $thumbname);\n                }\n            }\n\n\n        }\n    }\n}', 0, 'a:0:{}', 0, '', 0, ''),
(7, 0, 0, 'FormIt', '', 0, 6, 0, '/**\n * FormIt plugin\n *\n * @package formit\n */\nuse Sterc\\FormIt;\n\nswitch ($modx->event->name) {\n    case \'OnManagerPageBeforeRender\':\n        // If migration status is false, show migrate alert message bar in manager\n        if (method_exists(\'Sterc\\FormIt\', \'encryptionMigrationStatus\')) {\n            $formit = new FormIt($modx, $scriptProperties);\n\n            if (!$formit->encryptionMigrationStatus()) {\n                $modx->lexicon->load(\'formit:mgr\');\n\n                $properties = [\'message\' => $modx->lexicon(\'formit.migrate_alert\')];\n                $chunk      = $formit->_getTplChunk(\'migrate/alert\');\n                if ($chunk) {\n                    $modx->regClientStartupHTMLBlock($chunk->process($properties));\n                    $modx->regClientCSS($formit->config[\'css_url\'] . \'migrate.css\');\n                }\n            }\n        }\n\n    break;\n}', 0, 'a:0:{}', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int NOT NULL DEFAULT '0',
  `event` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `priority` int NOT NULL DEFAULT '0',
  `propertyset` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'OnChunkFormPrerender', 0, 0),
(1, 'OnDocFormPrerender', 0, 0),
(1, 'OnFileCreateFormPrerender', 0, 0),
(1, 'OnFileEditFormPrerender', 0, 0),
(1, 'OnManagerPageBeforeRender', 0, 0),
(1, 'OnPluginFormPrerender', 0, 0),
(1, 'OnRichTextEditorRegister', 0, 0),
(1, 'OnSnipFormPrerender', 0, 0),
(1, 'OnTempFormPrerender', 0, 0),
(1, 'OnTVInputRenderList', 0, 0),
(2, 'OnSiteRefresh', 0, 0),
(2, 'OnWebPagePrerender', -101, 0),
(3, 'OnManagerPageBeforeRender', 0, 0),
(3, 'OnRichTextBrowserInit', 0, 0),
(3, 'OnRichTextEditorInit', 0, 0),
(3, 'OnRichTextEditorRegister', 0, 0),
(4, 'OnDocFormPrerender', 0, 0),
(4, 'OnTVInputPropertiesList', 0, 0),
(4, 'OnTVInputRenderList', 0, 0),
(5, 'OnDocFormPrerender', 0, 0),
(6, 'OnFileManagerUpload', 0, 0),
(7, 'OnManagerPageBeforeRender', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext COLLATE utf8mb4_general_ci,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8mb4_general_ci,
  `moduleguid` varchar(32) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'pdoResources', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modSnippet;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\nif (isset($parents) && $parents === \'\') {\r\n    $scriptProperties[\'parents\'] = $modx->resource->id;\r\n}\r\nif (!empty($returnIds)) {\r\n    $scriptProperties[\'return\'] = $return = \'ids\';\r\n} elseif (!isset($return)) {\r\n    $scriptProperties[\'return\'] = $return = \'chunks\';\r\n}\r\n\r\n// Adding extra parameters into special place so we can put them in a results\r\n/** @var modSnippet $snippet */\r\n$additionalPlaceholders = $properties = [];\r\nif (isset($this) && $this instanceof modSnippet && $this->get(\'properties\')) {\r\n    $properties = $this->get(\'properties\');\r\n} elseif ($snippet = $modx->getObject(modSnippet::class, [\'name\' => \'pdoResources\'])) {\r\n    $properties = $snippet->get(\'properties\');\r\n}\r\nif (!empty($properties)) {\r\n    foreach ($scriptProperties as $k => $v) {\r\n        if (!isset($properties[$k])) {\r\n            $additionalPlaceholders[$k] = $v;\r\n        }\r\n    }\r\n}\r\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\r\n\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n$output = $pdoFetch->run();\r\n\r\nif ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\r\n    $modx->setPlaceholder(\'pdoResourcesLog\', print_r($pdoFetch->getTime(), true));\r\n}\r\n\r\n// Return output\r\nif (!empty($returnIds)) {\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n} elseif ($return === \'data\') {\r\n    return $output;\r\n} elseif (!empty($toSeparatePlaceholders)) {\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n        $output = $pdoFetch->getChunk($tplWrapper, array_merge($additionalPlaceholders, [\'output\' => $output]),\r\n            $pdoFetch->config(\'fastMode\'));\r\n    }\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:47:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:11:\"publishedon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tvFilters\";a:7:{s:4:\"name\";s:9:\"tvFilters\";s:4:\"desc\";s:23:\"pdotools_prop_tvFilters\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:21:\"tvFiltersAndDelimiter\";a:7:{s:4:\"name\";s:21:\"tvFiltersAndDelimiter\";s:4:\"desc\";s:35:\"pdotools_prop_tvFiltersAndDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\",\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:20:\"tvFiltersOrDelimiter\";a:7:{s:4:\"name\";s:20:\"tvFiltersOrDelimiter\";s:4:\"desc\";s:34:\"pdotools_prop_tvFiltersOrDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"||\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"loadModels\";a:7:{s:4:\"name\";s:10:\"loadModels\";s:4:\"desc\";s:24:\"pdotools_prop_loadModels\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoresources.php'),
(2, 1, 0, 'pdoUsers', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modUser;\r\nuse MODX\\Revolution\\modUserGroup;\r\nuse MODX\\Revolution\\modUserGroupMember;\r\nuse MODX\\Revolution\\modUserGroupRole;\r\nuse MODX\\Revolution\\modUserProfile;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\nif (!empty($returnIds)) {\r\n    $scriptProperties[\'return\'] = $return = \'ids\';\r\n} elseif (!isset($return)) {\r\n    $scriptProperties[\'return\'] = $return = \'chunks\';\r\n}\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\n$class = modUser::class;\r\n$alias_class = $modx->getAlias($class);\r\n$profile = modUserProfile::class;\r\n$alias_profile = $modx->getAlias($profile);\r\n$member = modUserGroupMember::class;\r\n$alias_member = $modx->getAlias($member);\r\n\r\n// Start building \"Where\" expression\r\n$where = [];\r\nif (empty($showInactive)) {\r\n    $where[$alias_class . \'.active\'] = 1;\r\n}\r\nif (empty($showBlocked)) {\r\n    $where[$alias_profile . \'.blocked\'] = 0;\r\n}\r\n\r\n// Add users profiles and groups\r\n$innerJoin = [\r\n    $profile => [\'class\' => $profile, \'alias\' => $alias_profile, \'on\' => \"$alias_class.id = $alias_profile.internalKey\"],\r\n];\r\n\r\n// Filter by users, groups and roles\r\n$tmp = [\r\n    \'users\' => [\r\n        \'class\' => $class,\r\n        \'name\' => \'username\',\r\n        \'join\' => $alias_class . \'.id\',\r\n    ],\r\n    \'groups\' => [\r\n        \'class\' => modUserGroup::class,\r\n        \'name\' => \'name\',\r\n        \'join\' => $alias_member . \'.user_group\',\r\n    ],\r\n    \'roles\' => [\r\n        \'class\' => modUserGroupRole::class,\r\n        \'name\' => \'name\',\r\n        \'join\' => $alias_member . \'.role\',\r\n    ],\r\n];\r\nforeach ($tmp as $k => $p) {\r\n    if (!empty($$k)) {\r\n        $$k = array_map(\'trim\', explode(\',\', $$k));\r\n        ${$k . \'_in\'} = ${$k . \'_out\'} = $fetch_in = $fetch_out = [];\r\n        foreach ($$k as $v) {\r\n            if (is_numeric($v)) {\r\n                if ($v[0] == \'-\') {\r\n                    ${$k . \'_out\'}[] = abs($v);\r\n                } else {\r\n                    ${$k . \'_in\'}[] = abs($v);\r\n                }\r\n            } else {\r\n                if ($v[0] == \'-\') {\r\n                    $fetch_out[] = $v;\r\n                } else {\r\n                    $fetch_in[] = $v;\r\n                }\r\n            }\r\n        }\r\n\r\n        if (!empty($fetch_in) || !empty($fetch_out)) {\r\n            $q = $modx->newQuery($p[\'class\'], [$p[\'name\'] . \':IN\' => array_merge($fetch_in, $fetch_out)]);\r\n            $q->select(\'id,\' . $p[\'name\']);\r\n            $tstart = microtime(true);\r\n            if ($q->prepare() && $q->stmt->execute()) {\r\n                $modx->queryTime += microtime(true) - $tstart;\r\n                $modx->executedQueries++;\r\n                while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {\r\n                    if (in_array($row[$p[\'name\']], $fetch_in)) {\r\n                        ${$k . \'_in\'}[] = $row[\'id\'];\r\n                    } else {\r\n                        ${$k . \'_out\'}[] = $row[\'id\'];\r\n                    }\r\n                }\r\n            }\r\n        }\r\n\r\n        if (!empty(${$k . \'_in\'})) {\r\n            $where[$p[\'join\'] . \':IN\'] = ${$k . \'_in\'};\r\n        }\r\n        if (!empty(${$k . \'_out\'})) {\r\n            $where[$p[\'join\'] . \':NOT IN\'] = ${$k . \'_out\'};\r\n        }\r\n    }\r\n}\r\n\r\nif (!empty($groups_in) || !empty($groups_out) || !empty($roles_in) || !empty($roles_out)) {\r\n    $innerJoin[$alias_member] = [\'class\' => $member, \'alias\' => $alias_member, \'on\' => \"$alias_class.id = $alias_member.member\"];\r\n}\r\n\r\n// Fields to select\r\n$select = [\r\n    $profile => implode(\',\', array_diff(array_keys($modx->getFieldMeta($profile)), [\'sessionid\'])),\r\n    $class => implode(\',\', array_diff(array_keys($modx->getFieldMeta($class)), [\'password\', \'cachepwd\', \'salt\', \'session_stale\', \'remote_key\', \'remote_data\', \'hash_class\'])),\r\n];\r\n\r\n// Add custom parameters\r\nforeach ([\'where\', \'innerJoin\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n$default = [\r\n    \'class\' => $class,\r\n    \'innerJoin\' => $innerJoin,\r\n    \'where\' => $where,\r\n    \'select\' => $select,\r\n    \'groupby\' => $alias_class . \'.id\',\r\n    \'sortby\' => $alias_class . \'.id\',\r\n    \'sortdir\' => \'ASC\',\r\n    \'fastMode\' => false,\r\n    \'return\' => $return,\r\n    \'disableConditions\' => true,\r\n];\r\n\r\nif (!empty($users_in) && (empty($scriptProperties[\'sortby\']) || $scriptProperties[\'sortby\'] == $alias_class . \'.id\')) {\r\n    $scriptProperties[\'sortby\'] = \"find_in_set(`$alias_class`.`id`,\'\" . implode(\',\', $users_in) . \"\')\";\r\n    $scriptProperties[\'sortdir\'] = \'\';\r\n}\r\n\r\n// Merge all properties and run!\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n$output = $pdoFetch->run();\r\n\r\n$log = \'\';\r\nif ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\r\n    $modx->setPlaceholder(\'pdoUsersLog\',  print_r($pdoFetch->getTime(), true));\r\n}\r\n\r\n// Return output\r\nif (!empty($returnIds)) {\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n} elseif ($return === \'data\') {\r\n    return $output;\r\n} elseif (!empty($toSeparatePlaceholders)) {\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n        $output = $pdoFetch->getChunk($tplWrapper, [\'output\' => $output], $pdoFetch->config(\'fastMode\'));\r\n    }\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:30:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"modUser.id\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"groups\";a:7:{s:4:\"name\";s:6:\"groups\";s:4:\"desc\";s:20:\"pdotools_prop_groups\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"roles\";a:7:{s:4:\"name\";s:5:\"roles\";s:4:\"desc\";s:19:\"pdotools_prop_roles\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"users\";a:7:{s:4:\"name\";s:5:\"users\";s:4:\"desc\";s:19:\"pdotools_prop_users\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"showInactive\";a:7:{s:4:\"name\";s:12:\"showInactive\";s:4:\"desc\";s:26:\"pdotools_prop_showInactive\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showBlocked\";a:7:{s:4:\"name\";s:11:\"showBlocked\";s:4:\"desc\";s:25:\"pdotools_prop_showBlocked\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdousers.php'),
(3, 1, 0, 'pdoCrumbs', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modResource;\r\nuse MODX\\Revolution\\modWebLink;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\n\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\nif (!isset($from) || $from == \'\') {\r\n    $from = 0;\r\n}\r\nif (empty($to)) {\r\n    $to = $modx->resource->id;\r\n}\r\nif (empty($direction)) {\r\n    $direction = \'ltr\';\r\n}\r\nif ($outputSeparator == \'&nbsp;&rarr;&nbsp;\' && $direction == \'rtl\') {\r\n    $outputSeparator = \'&nbsp;&larr;&nbsp;\';\r\n}\r\n$limit = $limit ?: 10;\r\n\r\n// For compatibility with BreadCrumb\r\nif (!empty($maxCrumbs)) {\r\n    $limit = $maxCrumbs;\r\n}\r\nif (!empty($containerTpl)) {\r\n    $tplWrapper = $containerTpl;\r\n}\r\nif (!empty($currentCrumbTpl)) {\r\n    $tplCurrent = $currentCrumbTpl;\r\n}\r\nif (!empty($linkCrumbTpl)) {\r\n    $scriptProperties[\'tpl\'] = $linkCrumbTpl;\r\n}\r\nif (!empty($maxCrumbTpl)) {\r\n    $tplMax = $maxCrumbTpl;\r\n}\r\nif (isset($showBreadCrumbsAtHome)) {\r\n    $showAtHome = $showBreadCrumbsAtHome;\r\n}\r\nif (isset($showHomeCrumb)) {\r\n    $showHome = $showHomeCrumb;\r\n}\r\nif (isset($showCurrentCrumb)) {\r\n    $showCurrent = $showCurrentCrumb;\r\n}\r\n// --\r\n$fastMode = !empty($fastMode);\r\n$siteStart = (int)$modx->getOption(\'siteStart\', $scriptProperties, $modx->getOption(\'site_start\'));\r\n\r\nif (empty($showAtHome) && $modx->resource->id === $siteStart) {\r\n    return \'\';\r\n}\r\n\r\n$class = modResource::class;\r\n$alias = $modx->getAlias($class);\r\n// Start building \"Where\" expression\r\n$where = [];\r\nif (empty($showUnpublished) && empty($showUnPub)) {\r\n    $where[\'published\'] = 1;\r\n}\r\nif (empty($showHidden)) {\r\n    $where[\'hidemenu\'] = 0;\r\n}\r\nif (empty($showDeleted)) {\r\n    $where[\'deleted\'] = 0;\r\n}\r\nif (!empty($hideContainers) && empty($showContainer)) {\r\n    $where[\'isfolder\'] = 0;\r\n}\r\n\r\n$resource = ($to == $modx->resource->id)\r\n    ? $modx->resource\r\n    : $modx->getObject($class, $to);\r\n\r\nif (!$resource) {\r\n    $message = \'Could not build breadcrumbs to resource \"\' . $to . \'\"\';\r\n\r\n    return \'\';\r\n}\r\n\r\nif (!empty($customParents)) {\r\n    $customParents = is_array($customParents) ? $customParents : array_map(\'trim\', explode(\',\', $customParents));\r\n    $parents = is_array($customParents) ? array_reverse($customParents) : [];\r\n}\r\nif (empty($parents)) {\r\n    $parents = $modx->getParentIds($resource->id, $limit, [\'context\' => $resource->get(\'context_key\')]);\r\n}\r\nif (!empty($showHome)) {\r\n    $parents[] = $siteStart;\r\n}\r\n\r\n$ids = [$resource->id];\r\nforeach ($parents as $parent) {\r\n    if (!empty($parent)) {\r\n        $ids[] = $parent;\r\n    }\r\n    if (!empty($from) && $parent == $from) {\r\n        break;\r\n    }\r\n}\r\n$where[\'id:IN\'] = $ids;\r\n\r\nif (!empty($exclude)) {\r\n    $where[\'id:NOT IN\'] = array_map(\'trim\', explode(\',\', $exclude));\r\n}\r\n\r\n// Fields to select\r\n$resourceColumns = array_keys($modx->getFieldMeta($class));\r\n$select = [$alias => implode(\',\', $resourceColumns)];\r\n\r\n// Add custom parameters\r\nforeach ([\'where\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Default parameters\r\n$default = [\r\n    \'class\' => $class,\r\n    \'where\' => $where,\r\n    \'select\' => $select,\r\n    \'groupby\' => $alias . \'.id\',\r\n    \'sortby\' => \"find_in_set(`$alias`.`id`,\'\" . implode(\',\', $ids) . \"\')\",\r\n    \'sortdir\' => \'\',\r\n    \'return\' => \'data\',\r\n    \'totalVar\' => \'pdocrumbs.total\',\r\n    \'disableConditions\' => true,\r\n];\r\n\r\n// Merge all properties and run!\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n$rows = $pdoFetch->run();\r\n\r\n$output = [];\r\nif (!empty($rows) && is_array($rows)) {\r\n    if (strtolower($direction) == \'ltr\') {\r\n        $rows = array_reverse($rows);\r\n    }\r\n\r\n    foreach ($rows as $row) {\r\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] === modWebLink::class) {\r\n            $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\r\n                ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\r\n                : $row[\'content\'];\r\n        } else {\r\n            $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\r\n        }\r\n\r\n        $row = array_merge(\r\n            $scriptProperties,\r\n            $row,\r\n            [\'idx\' => $pdoFetch->idx++]\r\n        );\r\n        if (empty($row[\'menutitle\'])) {\r\n            $row[\'menutitle\'] = $row[\'pagetitle\'];\r\n        }\r\n\r\n        if (isset($return) && $return === \'data\') {\r\n            $output[] = $row;\r\n            continue;\r\n        }\r\n        if ($row[\'id\'] == $resource->id && empty($showCurrent)) {\r\n            continue;\r\n        } elseif ($row[\'id\'] == $resource->id && !empty($tplCurrent)) {\r\n            $tpl = $tplCurrent;\r\n        } elseif ($row[\'id\'] == $siteStart && !empty($tplHome)) {\r\n            $tpl = $tplHome;\r\n        } else {\r\n            $tpl = $pdoFetch->defineChunk($row);\r\n        }\r\n        $output[] = empty($tpl)\r\n            ? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\r\n            : $pdoFetch->getChunk($tpl, $row, $fastMode);\r\n    }\r\n}\r\nif (isset($return) && $return === \'data\') {\r\n    return $output;\r\n}\r\n\r\n$pdoFetch->addTime(\'Chunks processed\');\r\n\r\nif (count($output) == 1 && !empty($hideSingle)) {\r\n    $pdoFetch->addTime(\'The only result was hidden, because the parameter \"hideSingle\" activated\');\r\n    $output = [];\r\n}\r\n\r\n$log = \'\';\r\nif ($modx->user->isAuthenticated(\'mgr\') && (bool)$showLog) {\r\n    $modx->setPlaceholder(\'pdoCrumbsLog\', print_r($pdoFetch->getTime(), true));\r\n}\r\n\r\nif (!empty($toSeparatePlaceholders)) {\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    $output = implode($outputSeparator, $output);\r\n    if ($pdoFetch->idx >= $limit && !empty($tplMax) && !empty($output)) {\r\n        $output = ($direction == \'ltr\')\r\n            ? $pdoFetch->getChunk($tplMax, [], $fastMode) . $output\r\n            : $output . $pdoFetch->getChunk($tplMax, [], $fastMode);\r\n    }\r\n    $output .= $log;\r\n\r\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n        $output = $pdoFetch->getChunk($tplWrapper, [\'output\' => $output, \'crumbs\' => $output], $fastMode);\r\n    }\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:31:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"from\";a:7:{s:4:\"name\";s:4:\"from\";s:4:\"desc\";s:18:\"pdotools_prop_from\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:2:\"to\";a:7:{s:4:\"name\";s:2:\"to\";s:4:\"desc\";s:16:\"pdotools_prop_to\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"customParents\";a:7:{s:4:\"name\";s:13:\"customParents\";s:4:\"desc\";s:27:\"pdotools_prop_customParents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li class=\"breadcrumb-item\"><a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplCurrent\";a:7:{s:4:\"name\";s:10:\"tplCurrent\";s:4:\"desc\";s:24:\"pdotools_prop_tplCurrent\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:62:\"@INLINE <li class=\"breadcrumb-item active\">[[+menutitle]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplMax\";a:7:{s:4:\"name\";s:6:\"tplMax\";s:4:\"desc\";s:20:\"pdotools_prop_tplMax\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li class=\"breadcrumb-item disabled\">&nbsp;...&nbsp;</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHome\";a:7:{s:4:\"name\";s:7:\"tplHome\";s:4:\"desc\";s:21:\"pdotools_prop_tplHome\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:47:\"@INLINE <ol class=\"breadcrumb\">[[+output]]</ol>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showCurrent\";a:7:{s:4:\"name\";s:11:\"showCurrent\";s:4:\"desc\";s:25:\"pdotools_prop_showCurrent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"showHome\";a:7:{s:4:\"name\";s:8:\"showHome\";s:4:\"desc\";s:22:\"pdotools_prop_showHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showAtHome\";a:7:{s:4:\"name\";s:10:\"showAtHome\";s:4:\"desc\";s:24:\"pdotools_prop_showAtHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"hideSingle\";a:7:{s:4:\"name\";s:10:\"hideSingle\";s:4:\"desc\";s:24:\"pdotools_prop_hideSingle\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"direction\";a:7:{s:4:\"name\";s:9:\"direction\";s:4:\"desc\";s:23:\"pdotools_prop_direction\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ltr\";s:4:\"text\";s:19:\"Left To Right (ltr)\";}i:1;a:2:{s:5:\"value\";s:3:\"rtl\";s:4:\"text\";s:19:\"Right To Left (rtl)\";}}s:5:\"value\";s:3:\"ltr\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdocrumbs.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(4, 1, 0, 'pdoField', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modResource;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var modX $modx */\r\n\r\nif (!empty($input)) {\r\n    $id = $input;\r\n}\r\nif (!isset($default)) {\r\n    $default = \'\';\r\n}\r\nif (!isset($output)) {\r\n    $output = \'\';\r\n}\r\n$class = $modx->getOption(\'class\', $scriptProperties, modResource::class, true);\r\n$alias = $modx->getAlias($class);\r\n$isResource = $class === modResource::class || in_array($class, $modx->getDescendants(modResource::class));\r\n\r\nif (empty($field)) {\r\n    $field = \'pagetitle\';\r\n}\r\n$top = isset($top) ? (int)$top : 0;\r\n$topLevel = isset($topLevel) ? (int)$topLevel : 0;\r\nif (!empty($options) && is_string($options)) {\r\n    $options = trim($options);\r\n    if ($options[0] == \'{\') {\r\n        $tmp = json_decode($options, true);\r\n        if (is_array($tmp)) {\r\n            extract($tmp, EXTR_OVERWRITE);\r\n            $scriptProperties = array_merge($scriptProperties, $tmp);\r\n        }\r\n    } else {\r\n        $field = $options;\r\n    }\r\n}\r\nif (empty($id)) {\r\n    if (!empty($modx->resource)) {\r\n        $id = $modx->resource->id;\r\n    } else {\r\n        return \'You must specify an id of \' . $alias;\r\n    }\r\n}\r\nif (!isset($context)) {\r\n    $context = \'\';\r\n}\r\n\r\n// Gets the parent from root of context, if specified\r\nif ($isResource && $id && ($top || $topLevel)) {\r\n    // Select needed context for parents functionality\r\n    if (empty($context)) {\r\n        $q = $modx->newQuery($class, $id);\r\n        $q->select(\'context_key\');\r\n        $tstart = microtime(true);\r\n        if ($q->prepare() && $q->stmt->execute()) {\r\n            $modx->queryTime += microtime(true) - $tstart;\r\n            $modx->executedQueries++;\r\n            $context = $q->stmt->fetch(PDO::FETCH_COLUMN);\r\n        }\r\n    }\r\n    // Original pdoField logic\r\n    if (empty($ultimate)) {\r\n        if ($topLevel) {\r\n            $pids = $modx->getChildIds(0, $topLevel, [\'context\' => $context]);\r\n            $pid = $id;\r\n            while (true) {\r\n                $tmp = $modx->getParentIds($pid, 1, [\'context\' => $context]);\r\n                if (!$pid = current($tmp)) {\r\n                    break;\r\n                } elseif (in_array($pid, $pids)) {\r\n                    $id = $pid;\r\n                    break;\r\n                }\r\n            }\r\n        } elseif ($top) {\r\n            $pid = $id;\r\n            for ($i = 1; $i <= $top; $i++) {\r\n                $tmp = $modx->getParentIds($pid, 1, [\'context\' => $context]);\r\n                if (!$pid = current($tmp)) {\r\n                    break;\r\n                }\r\n                $id = $pid;\r\n            }\r\n        }\r\n    }\r\n    // UltimateParent logic\r\n    // https://github.com/splittingred/UltimateParent/blob/develop/core/components/ultimateparent/snippet.ultimateparent.php\r\n    elseif ($id != $top) {\r\n        $pid = $id;\r\n        $pids = $modx->getParentIds($id, 10, [\'context\' => $context]);\r\n        if (!$topLevel || count($pids) >= $topLevel) {\r\n            while ($parentIds = $modx->getParentIds($id, 1, [\'context\' => $context])) {\r\n                $pid = array_pop($parentIds);\r\n                if ($pid == $top) {\r\n                    break;\r\n                }\r\n                $id = $pid;\r\n                $parentIds = $modx->getParentIds($id, 10, [\'context\' => $context]);\r\n                if ($topLevel && count($parentIds) < $topLevel) {\r\n                    break;\r\n                }\r\n            }\r\n        }\r\n    }\r\n}\r\n\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\n$where = [$alias . \'.id\' => $id];\r\n// Add custom parameters\r\nforeach ([\'where\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Fields to select\r\n$resourceColumns = array_keys($modx->getFieldMeta($class));\r\n$field = strtolower($field);\r\nif (in_array($field, $resourceColumns)) {\r\n    $scriptProperties[\'select\'] = [$alias => $field];\r\n    $scriptProperties[\'includeTVs\'] = \'\';\r\n} elseif ($isResource) {\r\n    $scriptProperties[\'select\'] = [$alias => \'id\'];\r\n    $scriptProperties[\'includeTVs\'] = $field;\r\n}\r\n// Additional default field\r\nif (!empty($default)) {\r\n    $default = strtolower($default);\r\n    if (in_array($default, $resourceColumns)) {\r\n        $scriptProperties[\'select\'][$alias] .= \',\' . $default;\r\n    } elseif ($isResource) {\r\n        $scriptProperties[\'includeTVs\'] = empty($scriptProperties[\'includeTVs\'])\r\n            ? $default\r\n            : $scriptProperties[\'includeTVs\'] . \',\' . $default;\r\n    }\r\n}\r\n\r\n$scriptProperties[\'disableConditions\'] = true;\r\nif ($row = $pdoFetch->getArray($class, $where, $scriptProperties)) {\r\n    foreach ($row as $k => $v) {\r\n        if (strtolower($k) == $field && $v != \'\') {\r\n            $output = $v;\r\n            break;\r\n        }\r\n    }\r\n\r\n    if (empty($output) && !empty($default)) {\r\n        foreach ($row as $k => $v) {\r\n            if (strtolower($k) == $default && $v != \'\') {\r\n                $output = $v;\r\n                break;\r\n            }\r\n        }\r\n    }\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:12:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"field\";a:7:{s:4:\"name\";s:5:\"field\";s:4:\"desc\";s:19:\"pdotools_prop_field\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:27:\"pdotools_prop_field_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"top\";a:7:{s:4:\"name\";s:3:\"top\";s:4:\"desc\";s:17:\"pdotools_prop_top\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"topLevel\";a:7:{s:4:\"name\";s:8:\"topLevel\";s:4:\"desc\";s:22:\"pdotools_prop_topLevel\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"default\";a:7:{s:4:\"name\";s:7:\"default\";s:4:\"desc\";s:27:\"pdotools_prop_field_default\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"output\";a:7:{s:4:\"name\";s:6:\"output\";s:4:\"desc\";s:26:\"pdotools_prop_field_output\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ultimate\";a:7:{s:4:\"name\";s:8:\"ultimate\";s:4:\"desc\";s:22:\"pdotools_prop_ultimate\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdofield.php'),
(5, 1, 0, 'pdoSitemap', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modResource;\r\nuse MODX\\Revolution\\modWebLink;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\n$modx->services[\'pdotools_config\'] = [];\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\n// Default variables\r\nif (empty($tpl)) {\r\n    $tpl = \"@INLINE \\n<url>\\n\\t<loc>[[+url]]</loc>\\n\\t<lastmod>[[+date]]</lastmod>\\n\\t<changefreq>[[+update]]</changefreq>\\n\\t<priority>[[+priority]]</priority>\\n</url>\";\r\n}\r\nif (empty($tplWrapper)) {\r\n    $tplWrapper = \"@INLINE <?xml version=\\\"1.0\\\" encoding=\\\"[[++modx_charset]]\\\"?>\\n<urlset xmlns=\\\"[[+schema]]\\\">\\n[[+output]]\\n</urlset>\";\r\n}\r\nif (empty($sitemapSchema)) {\r\n    $sitemapSchema = \'http://www.sitemaps.org/schemas/sitemap/0.9\';\r\n}\r\nif (empty($outputSeparator)) {\r\n    $outputSeparator = \"\\n\";\r\n}\r\nif (empty($cacheKey)) {\r\n    $scriptProperties[\'cacheKey\'] = \'sitemap/\' . substr(md5(json_encode($scriptProperties)), 0, 6);\r\n}\r\n\r\n// Convert parameters from GoogleSiteMap if exists\r\nif (!empty($itemTpl)) {\r\n    $tpl = $itemTpl;\r\n}\r\nif (!empty($containerTpl)) {\r\n    $tplWrapper = $containerTpl;\r\n}\r\nif (!empty($allowedtemplates)) {\r\n    $scriptProperties[\'templates\'] = $allowedtemplates;\r\n}\r\nif (!empty($maxDepth)) {\r\n    $scriptProperties[\'depth\'] = $maxDepth;\r\n}\r\nif (isset($hideDeleted)) {\r\n    $scriptProperties[\'showDeleted\'] = !$hideDeleted;\r\n}\r\nif (isset($published)) {\r\n    $scriptProperties[\'showUnpublished\'] = !$published;\r\n}\r\nif (isset($searchable)) {\r\n    $scriptProperties[\'showUnsearchable\'] = !$searchable;\r\n}\r\nif (!empty($googleSchema)) {\r\n    $sitemapSchema = $googleSchema;\r\n}\r\nif (!empty($excludeResources)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $excludeResources));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'resources\'])) {\r\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\r\n        } else {\r\n            $scriptProperties[\'resources\'] = \'-\' . $v;\r\n        }\r\n    }\r\n}\r\nif (!empty($excludeChildrenOf)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $excludeChildrenOf));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'parents\'])) {\r\n            $scriptProperties[\'parents\'] .= \',-\' . $v;\r\n        } else {\r\n            $scriptProperties[\'parents\'] = \'-\' . $v;\r\n        }\r\n    }\r\n}\r\nif (!empty($startId)) {\r\n    if (!empty($scriptProperties[\'parents\'])) {\r\n        $scriptProperties[\'parents\'] .= \',\' . $startId;\r\n    } else {\r\n        $scriptProperties[\'parents\'] = $startId;\r\n    }\r\n}\r\nif (!empty($sortBy)) {\r\n    $scriptProperties[\'sortby\'] = $sortBy;\r\n}\r\nif (!empty($sortDir)) {\r\n    $scriptProperties[\'sortdir\'] = $sortDir;\r\n}\r\nif (!empty($priorityTV)) {\r\n    if (!empty($scriptProperties[\'includeTVs\'])) {\r\n        $scriptProperties[\'includeTVs\'] .= \',\' . $priorityTV;\r\n    } else {\r\n        $scriptProperties[\'includeTVs\'] = $priorityTV;\r\n    }\r\n}\r\nif (!empty($itemSeparator)) {\r\n    $outputSeparator = $itemSeparator;\r\n}\r\n//---\r\n\r\n\r\n$class = modResource::class;\r\n$alias = $modx->getAlias($class);\r\n$where = [];\r\nif (empty($showHidden)) {\r\n    $where[] = [\r\n        $alias . \'.hidemenu\' => 0,\r\n        \'OR:\' . $alias . \'.class_key:IN\' => [\'Ticket\', \'Article\'],\r\n    ];\r\n}\r\nif (empty($context)) {\r\n    $scriptProperties[\'context\'] = $modx->context->key;\r\n}\r\n\r\n$select = [$alias => \'id,editedon,createdon,context_key,class_key,uri\'];\r\nif (!empty($useWeblinkUrl)) {\r\n    $select[$alias] .= \',content\';\r\n}\r\n// Add custom parameters\r\nforeach ([\'where\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Default parameters\r\n$default = [\r\n    \'class\' => $class,\r\n    \'where\' => $where,\r\n    \'select\' => $select,\r\n    \'sortby\' => \"{$alias}.parent ASC, {$alias}.menuindex\",\r\n    \'sortdir\' => \'ASC\',\r\n    \'return\' => \'data\',\r\n    \'scheme\' => \'full\',\r\n    \'limit\' => 0,\r\n];\r\n// Merge all properties and run!\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n\r\nif (!empty($cache)) {\r\n    $data = $pdoFetch->getCache($scriptProperties);\r\n}\r\nif (!isset($return)) {\r\n    $return = \'chunks\';\r\n}\r\nif (empty($data)) {\r\n    $now = time();\r\n    $data = $urls = [];\r\n    $rows = $pdoFetch->run();\r\n    foreach ($rows as $row) {\r\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == modWebLink::class) {\r\n            $row[\'url\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\r\n                ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\r\n                : $row[\'content\'];\r\n        } else {\r\n            $row[\'url\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\r\n        }\r\n        unset($row[\'content\']);\r\n        $time = !empty($row[\'editedon\'])\r\n            ? $row[\'editedon\']\r\n            : $row[\'createdon\'];\r\n        $row[\'date\'] = date(\'c\', $time);\r\n\r\n        $datediff = floor(($now - $time) / 86400);\r\n        if ($datediff <= 1) {\r\n            $row[\'priority\'] = \'1.0\';\r\n            $row[\'update\'] = \'daily\';\r\n        } elseif (($datediff > 1) && ($datediff <= 7)) {\r\n            $row[\'priority\'] = \'0.75\';\r\n            $row[\'update\'] = \'weekly\';\r\n        } elseif (($datediff > 7) && ($datediff <= 30)) {\r\n            $row[\'priority\'] = \'0.50\';\r\n            $row[\'update\'] = \'weekly\';\r\n        } else {\r\n            $row[\'priority\'] = \'0.25\';\r\n            $row[\'update\'] = \'monthly\';\r\n        }\r\n        if (!empty($priorityTV) && !empty($row[$priorityTV])) {\r\n            $row[\'priority\'] = $row[$priorityTV];\r\n        }\r\n\r\n        // Fix possible duplicates made by modWebLink\r\n        if (!empty($urls[$row[\'url\']])) {\r\n            if ($urls[$row[\'url\']] > $row[\'date\']) {\r\n                continue;\r\n            }\r\n        }\r\n        $urls[$row[\'url\']] = $row[\'date\'];\r\n\r\n        // Add item to output\r\n        if ($return === \'data\') {\r\n            $data[$row[\'url\']] = $row;\r\n        } else {\r\n            $data[$row[\'url\']] = $pdoFetch->parseChunk($tpl, $row);\r\n            if (strpos($data[$row[\'url\']], \'[[\') !== false) {\r\n                $modx->parser->processElementTags(\'\', $data[$row[\'url\']], true, true, \'[[\', \']]\', array(), 10);\r\n            }\r\n        }\r\n    }\r\n    $pdoFetch->addTime(\'Rows processed\');\r\n    if (!empty($cache)) {\r\n        $pdoFetch->setCache($data, $scriptProperties);\r\n    }\r\n}\r\n\r\nif ($return === \'data\') {\r\n    $output = $data;\r\n} else {\r\n    $output = implode($outputSeparator, $data);\r\n    $output = $pdoFetch->getChunk($tplWrapper, [\r\n        \'schema\' => $sitemapSchema,\r\n        \'output\' => $output,\r\n        \'items\' => $output,\r\n    ]);\r\n    $pdoFetch->addTime(\'Rows wrapped\');\r\n\r\n    if ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\r\n        $modx->setPlaceholder(\'pdoSitemapLog\', print_r($pdoFetch->getTime(), true));\r\n    }\r\n}\r\nif (!empty($forceXML)) {\r\n    header(\"Content-Type:text/xml\");\r\n    @session_write_close();\r\n    exit($output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:24:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:145:\"@INLINE <url>\n	<loc>[[+url]]</loc>\n	<lastmod>[[+date]]</lastmod>\n	<changefreq>[[+update]]</changefreq>\n	<priority>[[+priority]]</priority>\n</url>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:110:\"@INLINE <?xml version=\"1.0\" encoding=\"[[++modx_charset]]\"?>\n<urlset xmlns=\"[[+schema]]\">\n[[+output]]\n</urlset>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"sitemapSchema\";a:7:{s:4:\"name\";s:13:\"sitemapSchema\";s:4:\"desc\";s:27:\"pdotools_prop_sitemapSchema\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:43:\"http://www.sitemaps.org/schemas/sitemap/0.9\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"hideUnsearchable\";a:7:{s:4:\"name\";s:16:\"hideUnsearchable\";s:4:\"desc\";s:30:\"pdotools_prop_hideUnsearchable\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"forceXML\";a:7:{s:4:\"name\";s:8:\"forceXML\";s:4:\"desc\";s:22:\"pdotools_prop_forceXML\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"cacheKey\";a:7:{s:4:\"name\";s:8:\"cacheKey\";s:4:\"desc\";s:22:\"pdotools_prop_cacheKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdositemap.php'),
(6, 1, 0, 'pdoNeighbors', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modResource;\r\nuse MODX\\Revolution\\modWebLink;\r\n\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n/** @var array $scriptProperties */\r\n\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n\r\nif (empty($id)) {\r\n    $id = $modx->resource->id;\r\n}\r\nif (empty($limit)) {\r\n    $limit = 1;\r\n}\r\nif (!isset($outputSeparator)) {\r\n    $outputSeparator = \"\\n\";\r\n}\r\n$fastMode = !empty($fastMode);\r\n\r\n$class = modResource::class;\r\n$alias = $modx->getAlias($class);\r\n$resource = ($id == $modx->resource->id)\r\n    ? $modx->resource\r\n    : $modx->getObject($class, $id);\r\nif (!$resource) {\r\n    return \'\';\r\n}\r\n\r\n// We need to determine ids of neighbors\r\n$params = $scriptProperties;\r\n$params[\'select\'] = \'id\';\r\n$params[\'limit\'] = 0;\r\nif (!empty($parents) && is_string($parents)) {\r\n    $parents = array_map(\'trim\', explode(\',\', $parents));\r\n    if (!in_array($resource->parent, $parents)) {\r\n        $parents[] = $resource->parent;\r\n    }\r\n    $key = array_search($resource->parent * -1, $parents);\r\n    if ($key !== false) {\r\n        unset($parents[$key]);\r\n    }\r\n    $params[\'parents\'] = implode(\',\', $parents);\r\n    $ids = $pdoFetch->getCollection(modResource::class, [], $params);\r\n    unset($scriptProperties[\'parents\']);\r\n} else {\r\n    $ids = $pdoFetch->getCollection(modResource::class, [\'parent\' => $resource->parent], $params);\r\n}\r\n\r\n$found = false;\r\n$prev = $next = [];\r\nforeach ($ids as $v) {\r\n    if ($v[\'id\'] == $id) {\r\n        $found = true;\r\n        continue;\r\n    } elseif (!$found) {\r\n        $prev[] = $v[\'id\'];\r\n    } else {\r\n        $next[] = $v[\'id\'];\r\n        if (count($next) >= $limit) {\r\n            break;\r\n        }\r\n    }\r\n}\r\n$prev = array_splice($prev, $limit * -1);\r\nif (!empty($loop)) {\r\n    if (!count($prev)) {\r\n        $v = end($ids);\r\n        $prev[] = $v[\'id\'];\r\n    } else {\r\n        if (!count($next)) {\r\n            $v = reset($ids);\r\n            $next[] = $v[\'id\'];\r\n        }\r\n    }\r\n}\r\n$ids = array_merge($prev, $next, [$resource->parent]);\r\n$pdoFetch->addTime(\'Found ids of neighbors: \' . implode(\',\', $ids));\r\n\r\n// Query conditions\r\n$where = [$alias . \'.id:IN\' => $ids];\r\n\r\n// Fields to select\r\n$resourceColumns = array_keys($modx->getFieldMeta($class));\r\nif (empty($includeContent) && empty($useWeblinkUrl)) {\r\n    $key = array_search(\'content\', $resourceColumns);\r\n    unset($resourceColumns[$key]);\r\n}\r\n$select = [$alias => implode(\',\', $resourceColumns)];\r\n\r\n// Add custom parameters\r\nforeach ([\'where\', \'select\'] as $v) {\r\n    if (!empty($scriptProperties[$v])) {\r\n        $tmp = $scriptProperties[$v];\r\n        if (!is_array($tmp)) {\r\n            $tmp = json_decode($tmp, true);\r\n        }\r\n        if (is_array($tmp)) {\r\n            $$v = array_merge($$v, $tmp);\r\n        }\r\n    }\r\n    unset($scriptProperties[$v]);\r\n}\r\n$pdoFetch->addTime(\'Conditions prepared\');\r\n\r\n// Default parameters\r\n$default = [\r\n    \'class\' => $class,\r\n    \'where\' => $where,\r\n    \'select\' => $select,\r\n    //\'groupby\' => $class.\'.id\',\r\n    \'sortby\' => $class . \'.menuindex\',\r\n    \'sortdir\' => \'ASC\',\r\n    \'return\' => \'data\',\r\n    \'limit\' => 0,\r\n    \'totalVar\' => \'pdoneighbors.total\',\r\n];\r\n\r\n// Merge all properties and run!\r\nunset($scriptProperties[\'limit\']);\r\n$pdoFetch->addTime(\'Query parameters ready\');\r\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\r\n\r\n$rows = $pdoFetch->run();\r\n$prev = array_flip($prev);\r\n$next = array_flip($next);\r\n\r\nif (!isset($return)) {\r\n    $return = \'chunks\';\r\n}\r\n$output = [\'prev\' => [], \'up\' => [], \'next\' => []];\r\nforeach ($rows as $row) {\r\n    if (empty($row[\'menutitle\'])) {\r\n        $row[\'menutitle\'] = $row[\'pagetitle\'];\r\n    }\r\n    if (!empty($useWeblinkUrl) && $row[\'class_key\'] === modWebLink::class) {\r\n        $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\r\n            ? $pdoFetch->makeUrl((int)trim($row[\'content\'], \'[]~ \'), $row)\r\n            : $row[\'content\'];\r\n    } else {\r\n        $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\r\n    }\r\n\r\n    if (isset($prev[$row[\'id\']])) {\r\n        if ($return === \'data\') {\r\n            $output[\'prev\'][] = $row;\r\n        } else {\r\n            $output[\'prev\'][] = !empty($tplPrev)\r\n                ? $pdoFetch->getChunk($tplPrev, $row, $fastMode)\r\n                : $pdoFetch->getChunk(\'\', $row);\r\n        }\r\n    } elseif (isset($next[$row[\'id\']])) {\r\n        if ($return === \'data\') {\r\n            $output[\'next\'][] = $row;\r\n        } else {\r\n            $output[\'next\'][] = !empty($tplNext)\r\n                ? $pdoFetch->getChunk($tplNext, $row, $fastMode)\r\n                : $pdoFetch->getChunk(\'\', $row);\r\n        }\r\n    } else {\r\n        if ($return === \'data\') {\r\n            $output[\'up\'][] = $row;\r\n        } else {\r\n            $output[\'up\'][] = !empty($tplUp)\r\n                ? $pdoFetch->getChunk($tplUp, $row, $fastMode)\r\n                : $pdoFetch->getChunk(\'\', $row);\r\n        }\r\n    }\r\n}\r\n$pdoFetch->addTime(\'Chunks processed\');\r\n\r\n$log = \'\';\r\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\r\n    $log .= \'<pre class=\"pdoNeighborsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\r\n}\r\n\r\nforeach ($output as &$row) {\r\n    $row = implode($outputSeparator, $row);\r\n}\r\n\r\nif (!empty($toSeparatePlaceholders)) {\r\n    $output[\'log\'] = $log;\r\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\r\n} else {\r\n    if (!empty($rows) || !empty($wrapIfEmpty)) {\r\n        $output = !empty($tplWrapper)\r\n            ? $pdoFetch->getChunk($tplWrapper, $output, $fastMode)\r\n            : $pdoFetch->getChunk(\'\', $output);\r\n    } else {\r\n        $output = \'\';\r\n    }\r\n    $output .= $log;\r\n\r\n    if (!empty($toPlaceholder)) {\r\n        $modx->setPlaceholder($toPlaceholder, $output);\r\n    } else {\r\n        return $output;\r\n    }\r\n}', 0, 'a:27:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:29:\"pdotools_prop_neighbors_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPrev\";a:7:{s:4:\"name\";s:7:\"tplPrev\";s:4:\"desc\";s:21:\"pdotools_prop_tplPrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-prev\"><a href=\"[[+link]]\" class=\"btn btn-light\">&larr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"tplUp\";a:7:{s:4:\"name\";s:5:\"tplUp\";s:4:\"desc\";s:19:\"pdotools_prop_tplUp\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:104:\"@INLINE <span class=\"link-up\"><a href=\"[[+link]]\" class=\"btn btn-light\">&uarr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplNext\";a:7:{s:4:\"name\";s:7:\"tplNext\";s:4:\"desc\";s:21:\"pdotools_prop_tplNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:106:\"@INLINE <span class=\"link-next\"><a href=\"[[+link]]\" class=\"btn btn-light\">[[+menutitle]] &rarr;</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:34:\"pdotools_prop_neighbors_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:93:\"@INLINE <div class=\"neighbors d-flex justify-content-between\">[[+prev]][[+up]][[+next]]</div>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"loop\";a:7:{s:4:\"name\";s:4:\"loop\";s:4:\"desc\";s:18:\"pdotools_prop_loop\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoneighbors.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(7, 1, 0, 'pdoPage', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Support\\Paginator;\r\nuse MODX\\Revolution\\modSnippet;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var modX $modx */\r\n\r\n// Default variables\r\nif (empty($pageVarKey)) {\r\n    $pageVarKey = \'page\';\r\n}\r\nif (empty($pageNavVar)) {\r\n    $pageNavVar = \'page.nav\';\r\n}\r\nif (empty($pageCountVar)) {\r\n    $pageCountVar = \'pageCount\';\r\n}\r\nif (empty($totalVar)) {\r\n    $totalVar = \'total\';\r\n}\r\nif (empty($page)) {\r\n    $page = 1;\r\n}\r\nif (empty($pageLimit)) {\r\n    $pageLimit = 5;\r\n} else {\r\n    $pageLimit = (integer)$pageLimit;\r\n}\r\nif (!isset($plPrefix)) {\r\n    $plPrefix = \'\';\r\n}\r\nif (!empty($scriptProperties[\'ajaxMode\'])) {\r\n    $scriptProperties[\'ajax\'] = 1;\r\n}\r\n\r\n// Convert parameters from getPage if exists\r\nif (!empty($namespace)) {\r\n    $plPrefix = $namespace;\r\n}\r\nif (!empty($pageNavTpl)) {\r\n    $scriptProperties[\'tplPage\'] = $pageNavTpl;\r\n}\r\nif (!empty($pageNavOuterTpl)) {\r\n    $scriptProperties[\'tplPageWrapper\'] = $pageNavOuterTpl;\r\n}\r\nif (!empty($pageActiveTpl)) {\r\n    $scriptProperties[\'tplPageActive\'] = $pageActiveTpl;\r\n}\r\nif (!empty($pageFirstTpl)) {\r\n    $scriptProperties[\'tplPageFirst\'] = $pageFirstTpl;\r\n}\r\nif (!empty($pagePrevTpl)) {\r\n    $scriptProperties[\'tplPagePrev\'] = $pagePrevTpl;\r\n}\r\nif (!empty($pageNextTpl)) {\r\n    $scriptProperties[\'tplPageNext\'] = $pageNextTpl;\r\n}\r\nif (!empty($pageLastTpl)) {\r\n    $scriptProperties[\'tplPageLast\'] = $pageLastTpl;\r\n}\r\nif (!empty($pageSkipTpl)) {\r\n    $scriptProperties[\'tplPageSkip\'] = $pageSkipTpl;\r\n}\r\nif (!empty($pageNavScheme)) {\r\n    $scriptProperties[\'scheme\'] = $pageNavScheme;\r\n}\r\nif (!empty($cache_expires)) {\r\n    $scriptProperties[\'cacheTime\'] = $cache_expires;\r\n}\r\n//---\r\n$strictMode = !empty($strictMode);\r\n\r\n$isAjax = !empty($scriptProperties[\'ajax\']) && !empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) && $_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\';\r\nif ($isAjax && !isset($_REQUEST[$pageVarKey])) {\r\n    return;\r\n}\r\n\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n/** @var Paginator $paginator */\r\n$paginator = $modx->services->get(Paginator::class);\r\n$paginator->pdoTools->addTime(\'pdoTools loaded\');\r\n\r\n// Script and styles\r\nif (!$isAjax && !empty($scriptProperties[\'ajaxMode\'])) {\r\n    $paginator->loadJsCss();\r\n}\r\n// Removing of default scripts and styles so they do not overwrote nested snippet parameters\r\nif ($snippet = $modx->getObject(modSnippet::class, [\'name\' => \'pdoPage\'])) {\r\n    $properties = $snippet->get(\'properties\');\r\n    if ($scriptProperties[\'frontend_js\'] == $properties[\'frontend_js\'][\'value\']) {\r\n        unset($scriptProperties[\'frontend_js\']);\r\n    }\r\n    if ($scriptProperties[\'frontend_css\'] == $properties[\'frontend_css\'][\'value\']) {\r\n        unset($scriptProperties[\'frontend_css\']);\r\n    }\r\n}\r\n\r\n// Page\r\nif (isset($_REQUEST[$pageVarKey]) && $strictMode && (!is_numeric($_REQUEST[$pageVarKey]) || ($_REQUEST[$pageVarKey] <= 1 && !$isAjax))) {\r\n    return $paginator->redirectToFirst($isAjax);\r\n} elseif (!empty($_REQUEST[$pageVarKey])) {\r\n    $page = (integer)$_REQUEST[$pageVarKey];\r\n}\r\n$scriptProperties[\'page\'] = $page;\r\n$scriptProperties[\'request\'] = $_REQUEST;\r\n$scriptProperties[\'setTotal\'] = true;\r\n// Limit\r\nif (isset($_REQUEST[\'limit\'])) {\r\n    if (is_numeric($_REQUEST[\'limit\']) && abs($_REQUEST[\'limit\']) > 0) {\r\n        $scriptProperties[\'limit\'] = abs($_REQUEST[\'limit\']);\r\n    } elseif ($strictMode) {\r\n        unset($_GET[\'limit\']);\r\n\r\n        return $paginator->redirectToFirst($isAjax);\r\n    }\r\n}\r\nif (!empty($maxLimit) && !empty($scriptProperties[\'limit\']) && $scriptProperties[\'limit\'] > $maxLimit) {\r\n    $scriptProperties[\'limit\'] = $maxLimit;\r\n}\r\n\r\n// Offset\r\n$_offset = !empty($scriptProperties[\'offset\']) && $scriptProperties[\'offset\'] > 0\r\n    ? (int)$scriptProperties[\'offset\']\r\n    : 0;\r\n$scriptProperties[\'offset\'] = $page > 1\r\n    ? $scriptProperties[\'limit\'] * ($page - 1) + $_offset\r\n    : $_offset;\r\nif (!empty($scriptProperties[\'offset\']) && empty($scriptProperties[\'limit\'])) {\r\n    $scriptProperties[\'limit\'] = 10000000;\r\n}\r\n\r\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\r\n$charset = $modx->getOption(\'modx_charset\', null, \'UTF-8\');\r\n$url = htmlentities($paginator->getBaseUrl(), ENT_QUOTES, $charset);\r\n$output = $pagination = $total = $pageCount = \'\';\r\n\r\n$data = $cache\r\n    ? $paginator->pdoTools->getCache($scriptProperties)\r\n    : [];\r\n\r\nif (empty($data)) {\r\n    $output = $paginator->pdoTools->runSnippet(\'!\' . $scriptProperties[\'element\'], $scriptProperties);\r\n    if ($output === false) {\r\n        return \'\';\r\n    } elseif (!empty($toPlaceholder)) {\r\n        $output = $modx->getPlaceholder($toPlaceholder);\r\n    }\r\n\r\n    // Pagination\r\n    $total = (int)$modx->getPlaceholder($totalVar);\r\n    $pageCount = !empty($scriptProperties[\'limit\']) && $total > $_offset\r\n        ? ceil(($total - $_offset) / $scriptProperties[\'limit\'])\r\n        : 0;\r\n\r\n    // Redirect to start if somebody specified incorrect page\r\n    if ($page > 1 && $page > $pageCount && $strictMode) {\r\n        return $paginator->redirectToFirst($isAjax);\r\n    }\r\n    if (!empty($pageCount) && $pageCount > 1) {\r\n        $pagination = [\r\n            \'first\' => $page > 1 && !empty($tplPageFirst)\r\n                ? $paginator->makePageLink($url, 1, $tplPageFirst)\r\n                : \'\',\r\n            \'prev\' => $page > 1 && !empty($tplPagePrev)\r\n                ? $paginator->makePageLink($url, $page - 1, $tplPagePrev)\r\n                : \'\',\r\n            \'pages\' => $pageLimit >= 7 && empty($disableModernPagination)\r\n                ? $paginator->buildModernPagination($page, $pageCount, $url)\r\n                : $paginator->buildClassicPagination($page, $pageCount, $url),\r\n            \'next\' => $page < $pageCount && !empty($tplPageNext)\r\n                ? $paginator->makePageLink($url, $page + 1, $tplPageNext)\r\n                : \'\',\r\n            \'last\' => $page < $pageCount && !empty($tplPageLast)\r\n                ? $paginator->makePageLink($url, $pageCount, $tplPageLast)\r\n                : \'\',\r\n        ];\r\n\r\n        if (!empty($pageCount)) {\r\n            foreach ([\'first\', \'prev\', \'next\', \'last\'] as $v) {\r\n                $_tpl = \'tplPage\' . ucfirst($v) . \'Empty\';\r\n                if (!empty(${$_tpl}) && empty($pagination[$v])) {\r\n                    $pagination[$v] = $paginator->pdoTools->getChunk(${$_tpl});\r\n                }\r\n            }\r\n        }\r\n    } else {\r\n        $pagination = [\r\n            \'first\' => \'\',\r\n            \'prev\' => \'\',\r\n            \'pages\' => \'\',\r\n            \'next\' => \'\',\r\n            \'last\' => \'\',\r\n        ];\r\n    }\r\n\r\n    $data = [\r\n        \'output\' => $output,\r\n        $pageVarKey => $page,\r\n        $pageCountVar => $pageCount,\r\n        $pageNavVar => !empty($tplPageWrapper)\r\n            ? $paginator->pdoTools->getChunk($tplPageWrapper, $pagination)\r\n            : $paginator->pdoTools->parseChunk(\'\', $pagination),\r\n        $totalVar => $total,\r\n    ];\r\n    if ($cache) {\r\n        $paginator->pdoTools->setCache($data, $scriptProperties);\r\n    }\r\n}\r\n/** @var bool $showLog */\r\nif ($modx->user->isAuthenticated(\'mgr\') && (bool)$showLog) {\r\n    $modx->setPlaceholder(\'pdoPageLog\', print_r($paginator->pdoTools->getTime(), true));\r\n}\r\n\r\nif ($isAjax) {\r\n    if ($pageNavVar !== \'pagination\') {\r\n        $data[\'pagination\'] = $data[$pageNavVar];\r\n        unset($data[$pageNavVar]);\r\n    }\r\n    if ($pageCountVar !== \'pages\') {\r\n        $data[\'pages\'] = (int)$data[$pageCountVar];\r\n        unset($data[$pageCountVar]);\r\n    }\r\n    if ($pageVarKey !== \'page\') {\r\n        $data[\'page\'] = (int)$data[$pageVarKey];\r\n        unset($data[$pageVarKey]);\r\n    }\r\n    if ($totalVar !== \'total\') {\r\n        $data[\'total\'] = (int)$data[$totalVar];\r\n        unset($data[$totalVar]);\r\n    }\r\n\r\n    $maxIterations = (integer)$modx->getOption(\'parser_max_iterations\', null, 10);\r\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], false, false, \'[[\', \']]\', [], $maxIterations);\r\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], true, true, \'[[\', \']]\', [], $maxIterations);\r\n\r\n    @session_write_close();\r\n    exit(json_encode($data));\r\n}\r\n\r\nif (!empty($setMeta)) {\r\n    $canurl = $paginator->pdoTools->config(\'scheme\') !== \'full\'\r\n        ? $paginator->getCanonicalUrl($url)\r\n        : $url;\r\n    $modx->regClientStartupHTMLBlock(\'<link rel=\"canonical\" href=\"\' . $canurl . \'\"/>\');\r\n    if ($data[$pageVarKey] > 1) {\r\n        $prevUrl = $paginator->makePageLink($canurl, $data[$pageVarKey] - 1);\r\n        $modx->regClientStartupHTMLBlock(\r\n            \'<link rel=\"prev\" href=\"\' . $prevUrl . \'\"/>\'\r\n        );\r\n    }\r\n    if ($data[$pageVarKey] < $data[$pageCountVar]) {\r\n        $nextUrl = $paginator->makePageLink($canurl, $data[$pageVarKey] + 1);\r\n        $modx->regClientStartupHTMLBlock(\r\n            \'<link rel=\"next\" href=\"\' . $nextUrl . \'\"/>\'\r\n        );\r\n    }\r\n}\r\n\r\n$modx->setPlaceholders($data, $plPrefix);\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $data[\'output\']);\r\n} else {\r\n    return $data[\'output\'];\r\n}', 0, 'a:41:{s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"maxLimit\";a:7:{s:4:\"name\";s:8:\"maxLimit\";s:4:\"desc\";s:22:\"pdotools_prop_maxLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:100;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"page\";a:7:{s:4:\"name\";s:4:\"page\";s:4:\"desc\";s:18:\"pdotools_prop_page\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"page.total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"pageLimit\";a:7:{s:4:\"name\";s:9:\"pageLimit\";s:4:\"desc\";s:23:\"pdotools_prop_pageLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:5;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"element\";a:7:{s:4:\"name\";s:7:\"element\";s:4:\"desc\";s:21:\"pdotools_prop_element\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:12:\"pdoResources\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageNavVar\";a:7:{s:4:\"name\";s:10:\"pageNavVar\";s:4:\"desc\";s:24:\"pdotools_prop_pageNavVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"page.nav\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"pageCountVar\";a:7:{s:4:\"name\";s:12:\"pageCountVar\";s:4:\"desc\";s:26:\"pdotools_prop_pageCountVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pageCount\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"pageLinkScheme\";a:7:{s:4:\"name\";s:14:\"pageLinkScheme\";s:4:\"desc\";s:28:\"pdotools_prop_pageLinkScheme\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPage\";a:7:{s:4:\"name\";s:7:\"tplPage\";s:4:\"desc\";s:21:\"pdotools_prop_tplPage\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:88:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"tplPageWrapper\";a:7:{s:4:\"name\";s:14:\"tplPageWrapper\";s:4:\"desc\";s:28:\"pdotools_prop_tplPageWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:83:\"@INLINE <ul class=\"pagination\">[[+first]][[+prev]][[+pages]][[+next]][[+last]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"tplPageActive\";a:7:{s:4:\"name\";s:13:\"tplPageActive\";s:4:\"desc\";s:27:\"pdotools_prop_tplPageActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item active\"><a class=\"page-link\" href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplPageFirst\";a:7:{s:4:\"name\";s:12:\"tplPageFirst\";s:4:\"desc\";s:26:\"pdotools_prop_tplPageFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageLast\";a:7:{s:4:\"name\";s:11:\"tplPageLast\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:94:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPagePrev\";a:7:{s:4:\"name\";s:11:\"tplPagePrev\";s:4:\"desc\";s:25:\"pdotools_prop_tplPagePrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageNext\";a:7:{s:4:\"name\";s:11:\"tplPageNext\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <li class=\"page-item\"><a class=\"page-link\" href=\"[[+href]]\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageSkip\";a:7:{s:4:\"name\";s:11:\"tplPageSkip\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageSkip\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:78:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">...</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplPageFirstEmpty\";a:7:{s:4:\"name\";s:17:\"tplPageFirstEmpty\";s:4:\"desc\";s:31:\"pdotools_prop_tplPageFirstEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:93:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">[[%pdopage_first]]</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageLastEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageLastEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageLastEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:92:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">[[%pdopage_last]]</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPagePrevEmpty\";a:7:{s:4:\"name\";s:16:\"tplPagePrevEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPagePrevEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:82:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\">&laquo;</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageNextEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageNextEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageNextEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:83:\"@INLINE <li class=\"page-item disabled\"><span class=\"page-link\" >&raquo;</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"ajax\";a:7:{s:4:\"name\";s:4:\"ajax\";s:4:\"desc\";s:18:\"pdotools_prop_ajax\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ajaxMode\";a:7:{s:4:\"name\";s:8:\"ajaxMode\";s:4:\"desc\";s:22:\"pdotools_prop_ajaxMode\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:4:\"None\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Default\";s:5:\"value\";s:7:\"default\";}i:2;a:2:{s:4:\"text\";s:6:\"Scroll\";s:5:\"value\";s:6:\"scroll\";}i:3;a:2:{s:4:\"text\";s:6:\"Button\";s:5:\"value\";s:6:\"button\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"ajaxElemWrapper\";a:7:{s:4:\"name\";s:15:\"ajaxElemWrapper\";s:4:\"desc\";s:29:\"pdotools_prop_ajaxElemWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"#pdopage\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemRows\";a:7:{s:4:\"name\";s:12:\"ajaxElemRows\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemRows\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:14:\"#pdopage .rows\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"ajaxElemPagination\";a:7:{s:4:\"name\";s:18:\"ajaxElemPagination\";s:4:\"desc\";s:32:\"pdotools_prop_ajaxElemPagination\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"#pdopage .pagination\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemLink\";a:7:{s:4:\"name\";s:12:\"ajaxElemLink\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemLink\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:22:\"#pdopage .pagination a\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemMore\";a:7:{s:4:\"name\";s:12:\"ajaxElemMore\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"#pdopage .btn-more\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxTplMore\";a:7:{s:4:\"name\";s:11:\"ajaxTplMore\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxTplMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:75:\"@INLINE <button class=\"btn btn-primary btn-more\">[[%pdopage_more]]</button>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxHistory\";a:7:{s:4:\"name\";s:11:\"ajaxHistory\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxHistory\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:4:\"Auto\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Enabled\";s:5:\"value\";i:1;}i:2;a:2:{s:4:\"text\";s:8:\"Disabled\";s:5:\"value\";i:0;}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"frontend_js\";a:7:{s:4:\"name\";s:11:\"frontend_js\";s:4:\"desc\";s:25:\"pdotools_prop_frontend_js\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"[[+assetsUrl]]js/pdopage.min.js\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"frontend_css\";a:7:{s:4:\"name\";s:12:\"frontend_css\";s:4:\"desc\";s:26:\"pdotools_prop_frontend_css\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:33:\"[[+assetsUrl]]css/pdopage.min.css\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"setMeta\";a:7:{s:4:\"name\";s:7:\"setMeta\";s:4:\"desc\";s:21:\"pdotools_prop_setMeta\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"strictMode\";a:7:{s:4:\"name\";s:10:\"strictMode\";s:4:\"desc\";s:24:\"pdotools_prop_strictMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdopage.php'),
(8, 1, 0, 'pdoMenu', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse ModxPro\\PdoTools\\Support\\MenuBuilder;\r\nuse MODX\\Revolution\\modResource;\r\n\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n/** @var array $scriptProperties */\r\n\r\n// Convert parameters from Wayfinder if exists\r\nif (isset($startId)) {\r\n    $scriptProperties[\'parents\'] = $startId;\r\n}\r\nif (!empty($includeDocs)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $includeDocs));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'resources\'])) {\r\n            $scriptProperties[\'resources\'] .= \',\' . $v;\r\n        } else {\r\n            $scriptProperties[\'resources\'] = $v;\r\n        }\r\n    }\r\n}\r\nif (!empty($excludeDocs)) {\r\n    $tmp = array_map(\'trim\', explode(\',\', $excludeDocs));\r\n    foreach ($tmp as $v) {\r\n        if (!empty($scriptProperties[\'resources\'])) {\r\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\r\n        } else {\r\n            $scriptProperties[\'resources\'] = \'-\' . $v;\r\n        }\r\n    }\r\n}\r\n\r\nif (!empty($previewUnpublished) && $modx->hasPermission(\'view_unpublished\')) {\r\n    $scriptProperties[\'showUnpublished\'] = 1;\r\n}\r\n\r\n$scriptProperties[\'depth\'] = empty($level) ? 100 : abs($level) - 1;\r\nif (!empty($contexts)) {\r\n    $scriptProperties[\'context\'] = $contexts;\r\n}\r\nif (empty($scriptProperties[\'context\'])) {\r\n    $scriptProperties[\'context\'] = $modx->resource->context_key;\r\n}\r\n\r\n// Save original parents specified by user\r\n$specified_parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\r\n\r\nif ($scriptProperties[\'parents\'] === \'\') {\r\n    $scriptProperties[\'parents\'] = $modx->resource->id;\r\n} elseif ($scriptProperties[\'parents\'] === 0 || $scriptProperties[\'parents\'] === \'0\') {\r\n    if ($scriptProperties[\'depth\'] !== \'\' && $scriptProperties[\'depth\'] !== 100) {\r\n        $contexts = array_map(\'trim\', explode(\',\', $scriptProperties[\'context\']));\r\n        $parents = [];\r\n        if (!empty($scriptProperties[\'showDeleted\'])) {\r\n            /** @var Fetch $pdoFetch */\r\n            $pdoFetch = $modx->services->get(\'pdofetch\');\r\n            foreach ($contexts as $ctx) {\r\n                $parents = array_merge($parents, $pdoFetch->getChildIds(modResource::class, 0, $scriptProperties[\'depth\'], [\'context\' => $ctx]));\r\n            }\r\n        } else {\r\n            foreach ($contexts as $ctx) {\r\n                $parents = array_merge($parents, $modx->getChildIds(0, $scriptProperties[\'depth\'], [\'context\' => $ctx]));\r\n            }\r\n        }\r\n        $scriptProperties[\'parents\'] = !empty($parents) ? implode(\',\', $parents) : \'+0\';\r\n        $scriptProperties[\'depth\'] = 0;\r\n    }\r\n    $scriptProperties[\'includeParents\'] = 1;\r\n    $scriptProperties[\'displayStart\'] = 0;\r\n} else {\r\n    $parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\r\n    $parents_in = $parents_out = [];\r\n    foreach ($parents as $v) {\r\n        if (!is_numeric($v)) {\r\n            continue;\r\n        }\r\n        if ($v[0] == \'-\') {\r\n            $parents_out[] = abs($v);\r\n        } else {\r\n            $parents_in[] = abs($v);\r\n        }\r\n    }\r\n\r\n    if (empty($parents_in)) {\r\n        $scriptProperties[\'includeParents\'] = 1;\r\n        $scriptProperties[\'displayStart\'] = 0;\r\n    }\r\n}\r\n\r\nif (!empty($displayStart)) {\r\n    $scriptProperties[\'includeParents\'] = 1;\r\n}\r\nif (!empty($ph)) {\r\n    $toPlaceholder = $ph;\r\n}\r\nif (!empty($sortOrder)) {\r\n    $scriptProperties[\'sortdir\'] = $sortOrder;\r\n}\r\nif (!empty($sortBy)) {\r\n    $scriptProperties[\'sortby\'] = $sortBy;\r\n}\r\nif (!empty($permissions)) {\r\n    $scriptProperties[\'checkPermissions\'] = $permissions;\r\n}\r\nif (!empty($cacheResults)) {\r\n    $scriptProperties[\'cache\'] = $cacheResults;\r\n}\r\nif (!empty($ignoreHidden)) {\r\n    $scriptProperties[\'showHidden\'] = $ignoreHidden;\r\n}\r\n\r\n$wfTemplates = [\r\n    \'outerTpl\' => \'tplOuter\',\r\n    \'rowTpl\' => \'tpl\',\r\n    \'parentRowTpl\' => \'tplParentRow\',\r\n    \'parentRowHereTpl\' => \'tplParentRowHere\',\r\n    \'hereTpl\' => \'tplHere\',\r\n    \'innerTpl\' => \'tplInner\',\r\n    \'innerRowTpl\' => \'tplInnerRow\',\r\n    \'innerHereTpl\' => \'tplInnerHere\',\r\n    \'activeParentRowTpl\' => \'tplParentRowActive\',\r\n    \'categoryFoldersTpl\' => \'tplCategoryFolder\',\r\n    \'startItemTpl\' => \'tplStart\',\r\n];\r\nforeach ($wfTemplates as $k => $v) {\r\n    if (isset(${$k})) {\r\n        $scriptProperties[$v] = ${$k};\r\n    }\r\n}\r\n//---\r\n\r\n/** @var MenuBuilder $menuBuilder */\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$menuBuilder = $modx->services->get(MenuBuilder::class);\r\n$menuBuilder->pdoTools->addTime(\'MenuBuilder loaded\');\r\n\r\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\r\nif (empty($scriptProperties[\'cache_key\'])) {\r\n    $scriptProperties[\'cache_key\'] = \'pdomenu/\' . sha1(serialize($scriptProperties));\r\n}\r\n\r\n$output = \'\';\r\n$tree = [];\r\nif ($cache) {\r\n    $tree = $menuBuilder->pdoTools->getCache($scriptProperties);\r\n}\r\nif (empty($tree)) {\r\n    $data = $menuBuilder->pdoTools->run();\r\n    $data = $menuBuilder->pdoTools->buildTree($data, \'id\', \'parent\', $specified_parents);\r\n    $tree = [];\r\n    foreach ($data as $k => $v) {\r\n        if (empty($v[\'id\'])) {\r\n            if (!in_array($k, $specified_parents) && !$menuBuilder->checkResource($k)) {\r\n                continue;\r\n            } else {\r\n                $tree = array_merge($tree, $v[\'children\']);\r\n            }\r\n        } else {\r\n            $tree[$k] = $v;\r\n        }\r\n    }\r\n    if ($cache) {\r\n        $menuBuilder->pdoTools->setCache($tree, $scriptProperties);\r\n    }\r\n}\r\nif (isset($return) && $return === \'data\') {\r\n    return $tree;\r\n}\r\nif (!empty($tree)) {\r\n    $output = $menuBuilder->templateTree($tree);\r\n}\r\n\r\nif ($modx->user->isAuthenticated(\'mgr\') && !empty($showLog)) {\r\n    $modx->setPlaceholder(\'pdoMenuLog\', print_r($menuBuilder->pdoTools->getTime(), true));\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:51:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"level\";a:7:{s:4:\"name\";s:5:\"level\";s:4:\"desc\";s:19:\"pdotools_prop_level\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"displayStart\";a:7:{s:4:\"name\";s:12:\"displayStart\";s:4:\"desc\";s:26:\"pdotools_prop_displayStart\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"wf.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"previewUnpublished\";a:7:{s:4:\"name\";s:18:\"previewUnpublished\";s:4:\"desc\";s:32:\"pdotools_prop_previewUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"hideSubMenus\";a:7:{s:4:\"name\";s:12:\"hideSubMenus\";s:4:\"desc\";s:26:\"pdotools_prop_hideSubMenus\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"rowIdPrefix\";a:7:{s:4:\"name\";s:11:\"rowIdPrefix\";s:4:\"desc\";s:25:\"pdotools_prop_rowIdPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"firstClass\";a:7:{s:4:\"name\";s:10:\"firstClass\";s:4:\"desc\";s:24:\"pdotools_prop_firstClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"first\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"lastClass\";a:7:{s:4:\"name\";s:9:\"lastClass\";s:4:\"desc\";s:23:\"pdotools_prop_lastClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"last\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"hereClass\";a:7:{s:4:\"name\";s:9:\"hereClass\";s:4:\"desc\";s:23:\"pdotools_prop_hereClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"parentClass\";a:7:{s:4:\"name\";s:11:\"parentClass\";s:4:\"desc\";s:25:\"pdotools_prop_parentClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"rowClass\";a:7:{s:4:\"name\";s:8:\"rowClass\";s:4:\"desc\";s:22:\"pdotools_prop_rowClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"outerClass\";a:7:{s:4:\"name\";s:10:\"outerClass\";s:4:\"desc\";s:24:\"pdotools_prop_outerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"innerClass\";a:7:{s:4:\"name\";s:10:\"innerClass\";s:4:\"desc\";s:24:\"pdotools_prop_innerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"levelClass\";a:7:{s:4:\"name\";s:10:\"levelClass\";s:4:\"desc\";s:24:\"pdotools_prop_levelClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"selfClass\";a:7:{s:4:\"name\";s:9:\"selfClass\";s:4:\"desc\";s:23:\"pdotools_prop_selfClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"webLinkClass\";a:7:{s:4:\"name\";s:12:\"webLinkClass\";s:4:\"desc\";s:26:\"pdotools_prop_webLinkClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplOuter\";a:7:{s:4:\"name\";s:8:\"tplOuter\";s:4:\"desc\";s:22:\"pdotools_prop_tplOuter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:41:\"@INLINE <ul[[+classes]]>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li[[+classes]]><a href=\"[[+link]]\" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplParentRow\";a:7:{s:4:\"name\";s:12:\"tplParentRow\";s:4:\"desc\";s:26:\"pdotools_prop_tplParentRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplParentRowHere\";a:7:{s:4:\"name\";s:16:\"tplParentRowHere\";s:4:\"desc\";s:30:\"pdotools_prop_tplParentRowHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHere\";a:7:{s:4:\"name\";s:7:\"tplHere\";s:4:\"desc\";s:21:\"pdotools_prop_tplHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplInner\";a:7:{s:4:\"name\";s:8:\"tplInner\";s:4:\"desc\";s:22:\"pdotools_prop_tplInner\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplInnerRow\";a:7:{s:4:\"name\";s:11:\"tplInnerRow\";s:4:\"desc\";s:25:\"pdotools_prop_tplInnerRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplInnerHere\";a:7:{s:4:\"name\";s:12:\"tplInnerHere\";s:4:\"desc\";s:26:\"pdotools_prop_tplInnerHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"tplParentRowActive\";a:7:{s:4:\"name\";s:18:\"tplParentRowActive\";s:4:\"desc\";s:32:\"pdotools_prop_tplParentRowActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplCategoryFolder\";a:7:{s:4:\"name\";s:17:\"tplCategoryFolder\";s:4:\"desc\";s:31:\"pdotools_prop_tplCategoryFolder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplStart\";a:7:{s:4:\"name\";s:8:\"tplStart\";s:4:\"desc\";s:22:\"pdotools_prop_tplStart\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:55:\"@INLINE <h2[[+classes]]>[[+menutitle]]</h2>[[+wrapper]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"checkPermissions\";a:7:{s:4:\"name\";s:16:\"checkPermissions\";s:4:\"desc\";s:30:\"pdotools_prop_checkPermissions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"hereId\";a:7:{s:4:\"name\";s:6:\"hereId\";s:4:\"desc\";s:20:\"pdotools_prop_hereId\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"countChildren\";a:7:{s:4:\"name\";s:13:\"countChildren\";s:4:\"desc\";s:27:\"pdotools_prop_countChildren\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdomenu.php'),
(9, 1, 0, 'pdoTitle', '', 0, 1, 0, 'use ModxPro\\PdoTools\\CoreTools;\r\nuse MODX\\Revolution\\modResource;\r\n\r\n/** @var array $scriptProperties */\r\n/** @var \\MODX\\Revolution\\modX $modx */\r\n\r\nif (empty($outputSeparator)) {\r\n    $outputSeparator = \' / \';\r\n}\r\nif (empty($titleField)) {\r\n    $titleField = \'longtitle\';\r\n}\r\nif (!isset($pageVarKey)) {\r\n    $pageVarKey = \'page\';\r\n}\r\nif (!isset($queryVarKey)) {\r\n    $queryVarKey = \'query\';\r\n}\r\nif (empty($tplPages)) {\r\n    $tplPages = \'@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\';\r\n}\r\nif (empty($tplSearch)) {\r\n    $tplSearch = \'@INLINE «[[+mse2_query]]»\';\r\n}\r\nif (empty($minQuery)) {\r\n    $minQuery = 3;\r\n}\r\nif (empty($id)) {\r\n    $id = $modx->resource->id;\r\n}\r\nif (empty($cacheKey)) {\r\n    $cacheKey = \'title_crumbs\';\r\n}\r\nif (!isset($cacheTime)) {\r\n    $cacheTime = 0;\r\n}\r\n/** @var CoreTools $pdoTools */\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoTools = $modx->services->get(CoreTools::class);\r\n$modx->lexicon->load(\'pdotools:pdopage\');\r\n\r\n/** @var modResource $resource */\r\n$resource = ($id == $modx->resource->id)\r\n    ? $modx->resource\r\n    : $modx->getObject(\'modResource\', $id);\r\nif (!$resource) {\r\n    return \'\';\r\n}\r\n\r\n$title = [];\r\n$pagetitle = trim($resource->get($titleField));\r\nif (empty($pagetitle)) {\r\n    $pagetitle = $resource->get(\'pagetitle\');\r\n}\r\n\r\n// Add search request if exists\r\nif (!empty($_GET[$queryVarKey]) && strlen($_GET[$queryVarKey]) >= $minQuery && !empty($tplSearch)) {\r\n    $pagetitle .= \' \' . $pdoTools->getChunk($tplSearch, [\r\n            $queryVarKey => $modx->stripTags($_GET[$queryVarKey]),\r\n        ]);\r\n}\r\n$title[] = $pagetitle;\r\n\r\n// Add pagination if exists\r\nif (!empty($_GET[$pageVarKey]) && !empty($tplPages)) {\r\n    $title[] = $pdoTools->getChunk($tplPages, [\r\n        \'page\' => (int)$_GET[$pageVarKey],\r\n    ]);\r\n}\r\n\r\n// Add parents\r\n$cacheKey = $resource->getCacheKey() . \'/\' . $cacheKey;\r\n$cacheOptions = [\'cache_key\' => $modx->getOption(\'cache_resource_key\', null, \'resource\')];\r\n$crumbs = \'\';\r\nif (empty($cache) || !$crumbs = $modx->cacheManager->get($cacheKey, $cacheOptions)) {\r\n    $crumbs = $pdoTools->runSnippet(\'!pdoCrumbs\', array_merge(\r\n        [\r\n            \'to\' => $resource->id,\r\n            \'outputSeparator\' => $outputSeparator,\r\n            \'showHome\' => 0,\r\n            \'showAtHome\' => 0,\r\n            \'showCurrent\' => 0,\r\n            \'direction\' => \'rtl\',\r\n            \'tpl\' => \'@INLINE [[+menutitle]]\',\r\n            \'tplCurrent\' => \'@INLINE [[+menutitle]]\',\r\n            \'tplWrapper\' => \'@INLINE [[+output]]\',\r\n            \'tplMax\' => \'\',\r\n            \'tplHome\' => \'\',\r\n        ], $scriptProperties\r\n    ));\r\n}\r\nif (!empty($crumbs)) {\r\n    if (!empty($cache)) {\r\n        $modx->cacheManager->set($cacheKey, $crumbs, $cacheTime, $cacheOptions);\r\n    }\r\n    $title[] = $crumbs;\r\n}\r\n\r\nif (!empty($registerJs)) {\r\n    $config = [\r\n        \'separator\' => $outputSeparator,\r\n        \'tpl\' => str_replace([\'[[+\', \']]\'], [\'{\', \'}\'], $pdoTools->getChunk($tplPages)),\r\n    ];\r\n    /** @noinspection Annotator */\r\n    $modx->regClientStartupScript(\'<script>pdoTitle = \' . json_encode($config) . \';</script>\',\r\n        true);\r\n}\r\n\r\nreturn implode($outputSeparator, $title);', 0, 'a:13:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:25:\"pdotools_prop_title_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"titleField\";a:7:{s:4:\"name\";s:10:\"titleField\";s:4:\"desc\";s:24:\"pdotools_prop_titleField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"longtitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:25:\"pdotools_prop_title_cache\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplPages\";a:7:{s:4:\"name\";s:8:\"tplPages\";s:4:\"desc\";s:22:\"pdotools_prop_tplPages\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:68:\"@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tplSearch\";a:7:{s:4:\"name\";s:9:\"tplSearch\";s:4:\"desc\";s:23:\"pdotools_prop_tplSearch\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:27:\"@INLINE «[[+mse2_query]]»\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"queryVarKey\";a:7:{s:4:\"name\";s:11:\"queryVarKey\";s:4:\"desc\";s:25:\"pdotools_prop_queryVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"query\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"minQuery\";a:7:{s:4:\"name\";s:8:\"minQuery\";s:4:\"desc\";s:22:\"pdotools_prop_minQuery\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:35:\"pdotools_prop_title_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\" / \";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"registerJs\";a:7:{s:4:\"name\";s:10:\"registerJs\";s:4:\"desc\";s:24:\"pdotools_prop_registerJs\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdotitle.php');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(10, 1, 0, 'pdoArchive', '', 0, 1, 0, 'use ModxPro\\PdoTools\\Fetch;\r\nuse MODX\\Revolution\\modSnippet;\r\nuse MODX\\Revolution\\modWebLink;\r\n\r\n/** @var MODX\\Revolution\\modX $modx */\r\n/** @var array $scriptProperties */\r\n\r\n$modx->lexicon->load(\'pdotools:pdoarchive\');\r\n\r\n$tplWrapper = $modx->getOption(\'tplWrapper\', $scriptProperties);\r\n$tplYear = $modx->getOption(\'tplYear\', $scriptProperties);\r\n$tplMonth = $modx->getOption(\'tplMonth\', $scriptProperties);\r\n$tplDay = $modx->getOption(\'tplDay\', $scriptProperties);\r\n$tpl = $modx->getOption(\'tpl\', $scriptProperties);\r\n$dateField = $modx->getOption(\'dateField\', $scriptProperties, \'createdon\', true);\r\n$dateFormat = $modx->getOption(\'dateFormat\', $scriptProperties, \'H:i\', true);\r\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\r\n\r\n// Adding extra parameters into special place so we can put them in a results\r\n/** @var modSnippet $snippet */\r\n$additionalPlaceholders = $properties = [];\r\nif (isset($this) && $this instanceof modSnippet) {\r\n    $properties = $this->get(\'properties\');\r\n} elseif ($snippet = $modx->getObject(modSnippet::class, [\'name\' => \'pdoResources\'])) {\r\n    $properties = $snippet->get(\'properties\');\r\n}\r\nif (!empty($properties)) {\r\n    foreach ($scriptProperties as $k => $v) {\r\n        if (!isset($properties[$k])) {\r\n            $additionalPlaceholders[$k] = $v;\r\n        }\r\n    }\r\n}\r\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\r\nif (isset($parents) && $parents === \'\') {\r\n    $scriptProperties[\'parents\'] = $modx->resource->id;\r\n}\r\n$scriptProperties[\'return\'] = \'data\';\r\n$modx->services[\'pdotools_config\'] = $scriptProperties;\r\n$pdoFetch = $modx->services->get(Fetch::class);\r\n$pdoFetch->addTime(\'pdoTools loaded\');\r\n$rows = $pdoFetch->run();\r\n\r\n// Process rows\r\n$tree = [];\r\nforeach ($rows as $row) {\r\n    $tmp = $row[$dateField];\r\n    if (!is_numeric($tmp)) {\r\n        $tmp = strtotime($tmp);\r\n    }\r\n    $year = date(\'Y\', $tmp);\r\n    $month = date(\'m\', $tmp);\r\n    $day = date(\'d\', $tmp);\r\n    $tree[$year][$month][$day][] = $row;\r\n}\r\n\r\n$output = \'\';\r\nforeach ($tree as $year => $months) {\r\n    $rows_year = \'\';\r\n    $count_year = 0;\r\n\r\n    foreach ($months as $month => $days) {\r\n        $rows_month = \'\';\r\n        $count_month = 0;\r\n\r\n        foreach ($days as $day => $resources) {\r\n            $rows_day = [];\r\n            $count_day = 0;\r\n            $idx = 1;\r\n\r\n            foreach ($resources as $resource) {\r\n                $resource[\'day\'] = $day;\r\n                $resource[\'month\'] = $month;\r\n                $resource[\'year\'] = $year;\r\n                $resource[\'date\'] = strftime($dateFormat, $resource[$dateField]);\r\n                $resource[\'idx\'] = $idx++;\r\n                $resource[\'menutitle\'] = !empty($resource[\'menutitle\'])\r\n                    ? $resource[\'menutitle\']\r\n                    : $resource[\'pagetitle\'];\r\n                // Add placeholder [[+link]] if specified\r\n                if (!empty($scriptProperties[\'useWeblinkUrl\'])) {\r\n                    if (!isset($resource[\'context_key\'])) {\r\n                        $resource[\'context_key\'] = \'\';\r\n                    }\r\n                    if (isset($resource[\'class_key\']) && ($resource[\'class_key\'] == modWebLink::class)) {\r\n                        $resource[\'link\'] = isset($resource[\'content\']) && is_numeric(trim($resource[\'content\'], \'[]~ \'))\r\n                            ? $pdoFetch->makeUrl(intval(trim($resource[\'content\'], \'[]~ \')), $resource)\r\n                            : (isset($resource[\'content\']) ? $resource[\'content\'] : \'\');\r\n                    } else {\r\n                        $resource[\'link\'] = $pdoFetch->makeUrl($resource[\'id\'], $resource);\r\n                    }\r\n                } else {\r\n                    $resource[\'link\'] = \'\';\r\n                }\r\n                $tpl = $pdoFetch->defineChunk($resource);\r\n                $rows_day[] = $pdoFetch->getChunk($tpl, $resource);\r\n                $count_year++;\r\n                $count_month++;\r\n                $count_day++;\r\n            }\r\n\r\n            $rows_month .= !empty($tplDay)\r\n                ? $pdoFetch->getChunk($tplDay, [\r\n                    \'day\' => $day,\r\n                    \'month\' => $month,\r\n                    \'year\' => $year,\r\n                    \'count\' => $count_day,\r\n                    \'wrapper\' => implode($outputSeparator, $rows_day),\r\n                ], $pdoFetch->config(\'fastMode\'))\r\n                : implode($outputSeparator, $rows_day);\r\n        }\r\n\r\n        $rows_year .= !empty($tplMonth)\r\n            ? $pdoFetch->getChunk($tplMonth, [\r\n                \'month\' => $month,\r\n                \'month_name\' => $modx->lexicon(\'pdoarchive_month_\' . $month),\r\n                \'year\' => $year,\r\n                \'count\' => $count_month,\r\n                \'wrapper\' => $rows_month,\r\n            ], $pdoFetch->config(\'fastMode\'))\r\n            : $rows_month;\r\n    }\r\n\r\n    $output .= !empty($tplYear)\r\n        ? $pdoFetch->getChunk($tplYear, [\r\n            \'year\' => $year,\r\n            \'count\' => $count_year,\r\n            \'wrapper\' => $rows_year,\r\n        ], $pdoFetch->config(\'fastMode\'))\r\n        : $rows_year;\r\n}\r\n$pdoFetch->addTime(\'Rows processed\');\r\n\r\n// Return output\r\nif (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\r\n    $output = $pdoFetch->getChunk(\r\n        $tplWrapper,\r\n        array_merge($additionalPlaceholders, [\'output\' => $output]),\r\n        $pdoFetch->config(\'fastMode\')\r\n    );\r\n    $pdoFetch->addTime(\'Rows wrapped\');\r\n}\r\n\r\nif ($modx->user->isAuthenticated(\'mgr\') && (bool)$showLog) {\r\n    $modx->setPlaceholder(\'pdoArchiveLog\', print_r($pdoFetch->getTime(), true));\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n} else {\r\n    return $output;\r\n}', 0, 'a:36:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li>[[+date]] <a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplYear\";a:7:{s:4:\"name\";s:7:\"tplYear\";s:4:\"desc\";s:21:\"pdotools_prop_tplYear\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:71:\"@INLINE <h3>[[+year]] <sup>([[+count]])</sup></h3><ul>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplMonth\";a:7:{s:4:\"name\";s:8:\"tplMonth\";s:4:\"desc\";s:22:\"pdotools_prop_tplMonth\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:86:\"@INLINE <li><h4>[[+month_name]] <sup>([[+count]])</sup></h4><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplDay\";a:7:{s:4:\"name\";s:6:\"tplDay\";s:4:\"desc\";s:20:\"pdotools_prop_tplDay\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li><h5>[[+day]] <sup>([[+count]])</sup></h5><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"dateField\";a:7:{s:4:\"name\";s:9:\"dateField\";s:4:\"desc\";s:23:\"pdotools_prop_dateField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"dateFormat\";a:7:{s:4:\"name\";s:10:\"dateFormat\";s:4:\"desc\";s:24:\"pdotools_prop_dateFormat\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"%H:%M\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoarchive.php'),
(11, 0, 0, 'getImageList', '', 0, 4, 0, '/**\r\n * getImageList\r\n *\r\n * Copyright 2009-2014 by Bruno Perner <b.perner@gmx.de>\r\n *\r\n * getImageList is free software; you can redistribute it and/or modify it\r\n * under the terms of the GNU General Public License as published by the Free\r\n * Software Foundation; either version 2 of the License, or (at your option) any\r\n * later version.\r\n *\r\n * getImageList is distributed in the hope that it will be useful, but WITHOUT ANY\r\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\r\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\r\n *\r\n * You should have received a copy of the GNU General Public License along with\r\n * getImageList; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\r\n * Suite 330, Boston, MA 02111-1307 USA\r\n *\r\n * @package migx\r\n */\r\n/**\r\n * getImageList\r\n *\r\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \r\n *\r\n * @version 1.4\r\n * @author Bruno Perner <b.perner@gmx.de>\r\n * @copyright Copyright &copy; 2009-2014\r\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\r\n * version 2 or (at your option) any later version.\r\n * @package migx\r\n */\r\n\r\n/*example: <ul>[[!getImageList? &tvname=`myTV`&tpl=`@CODE:<li>[[+idx]]<img src=\"[[+imageURL]]\"/><p>[[+imageAlt]]</p></li>`]]</ul>*/\r\n/* get default properties */\r\n\r\n$allow_request = (bool)$modx->getOption(\'allowRequest\', $scriptProperties, false);\r\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\r\n$inherit_children_tvname = $modx->getOption(\'inherit_children_tvname\', $scriptProperties, \'\');\r\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\r\n$wrapperTpl = $modx->getOption(\'wrapperTpl\', $scriptProperties, \'\');\r\n$emptyTpl = $modx->getOption(\'emptyTpl\', $scriptProperties, \'\'); \r\n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\r\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\r\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\r\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\r\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\r\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\r\n$where = !empty($where) ? $modx->fromJSON($where) : array();\r\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\r\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\r\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\r\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\r\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\r\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\r\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\r\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\r\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\r\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\r\nif ($allow_request) {\r\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\r\n}\r\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\r\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\r\nif ($allow_request) {\r\n    $docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\r\n}\r\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\r\n$reverse = $modx->getOption(\'reverse\', $scriptProperties, \'0\');\r\n$sumFields = $modx->getOption(\'sumFields\', $scriptProperties, \'\');\r\n$sumPrefix = $modx->getOption(\'sumPrefix\', $scriptProperties, \'summary_\');\r\n$addfields = $modx->getOption(\'addfields\', $scriptProperties, \'\');\r\n$addfields = !empty($addfields) ? explode(\',\', $addfields) : null;\r\n//split json into parts\r\n$splits = $modx->fromJson($modx->getOption(\'splits\', $scriptProperties, 0));\r\n$splitTpl = $modx->getOption(\'splitTpl\', $scriptProperties, \'\');\r\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\r\n$inheritFrom = $modx->getOption(\'inheritFrom\', $scriptProperties, \'\'); //commaseparated list of resource-ids or/and the keyword \'parents\' where to inherit from\r\n$inheritFrom = !empty($inheritFrom) ? explode(\',\', $inheritFrom) : \'\';\r\n\r\n$modx->setPlaceholder(\'docid\', $docid);\r\n\r\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\r\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\r\n\r\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\nif (!($migx instanceof Migx))\r\n    return \'\';\r\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : \'web\';\r\n\r\nif (!empty($tvname)) {\r\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\r\n\r\n        /*\r\n        *   get inputProperties\r\n        */\r\n\r\n\r\n        $properties = $tv->get(\'input_properties\');\r\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\r\n\r\n        $migx->config[\'configs\'] = $modx->getOption(\'configs\', $properties, \'\');\r\n        if (!empty($migx->config[\'configs\'])) {\r\n            $migx->loadConfigs();\r\n            // get tabs from file or migx-config-table\r\n            $formtabs = $migx->getTabs();\r\n        }\r\n        if (empty($formtabs) && isset($properties[\'formtabs\'])) {\r\n            //try to get formtabs and its fields from properties\r\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\r\n        }\r\n\r\n        if (!empty($properties[\'basePath\'])) {\r\n            if ($properties[\'autoResourceFolders\'] == \'true\') {\r\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'basePath\'] . $docid . \'/\';\r\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'] . $docid . \'/\';\r\n            } else {\r\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'base_path\'];\r\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'];\r\n            }\r\n        }\r\n        if ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\'])) {\r\n            $jsonVarKey = $properties[\'jsonvarkey\'];\r\n            $outputvalue = $allow_request && isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\r\n        }\r\n\r\n        if (empty($outputvalue)) {\r\n            $outputvalue = $tv->renderOutput($docid);\r\n            if (empty($outputvalue) && !empty($inheritFrom)) {\r\n                foreach ($inheritFrom as $from) {\r\n                    if ($from == \'parents\') {\r\n                        if (!empty($inherit_children_tvname)){\r\n                            //try to get items from optional MIGX-TV for children\r\n                            if ($inh_tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inherit_children_tvname))) {\r\n                                $outputvalue = $inh_tv->processInheritBinding(\'\', $docid);    \r\n                            }\r\n                        }\r\n                        $outputvalue = empty($outputvalue) ? $tv->processInheritBinding(\'\', $docid) : $outputvalue;\r\n                    } else {\r\n                        $outputvalue = $tv->renderOutput($from);\r\n                    }\r\n                    if (!empty($outputvalue)) {\r\n                        break;\r\n                    }\r\n                }\r\n            }\r\n        }\r\n\r\n\r\n        /*\r\n        *   get inputTvs \r\n        */\r\n        $inputTvs = array();\r\n        if (is_array($formtabs)) {\r\n\r\n            //multiple different Forms\r\n            // Note: use same field-names and inputTVs in all forms\r\n            $inputTvs = $migx->extractInputTvs($formtabs);\r\n        }\r\n        if ($migx->source = $tv->getSource($migx->working_context, false)) {\r\n            $migx->source->initialize();\r\n        }\r\n\r\n    }\r\n\r\n\r\n}\r\n\r\nif (empty($outputvalue)) {\r\n    $modx->setPlaceholder($totalVar, 0);\r\n    return \'\';\r\n}\r\n\r\n//echo $outputvalue.\'<br/><br/>\';\r\n\r\n$items = $modx->fromJSON($outputvalue);\r\n\r\n// where filter\r\nif (is_array($where) && count($where) > 0) {\r\n    $items = $migx->filterItems($where, $items);\r\n}\r\n$modx->setPlaceholder($totalVar, count($items));\r\n\r\nif (!empty($reverse)) {\r\n    $items = array_reverse($items);\r\n}\r\n\r\n// sort items\r\nif (is_array($sort) && count($sort) > 0) {\r\n    $items = $migx->sortDbResult($items, $sort);\r\n}\r\n\r\n$summaries = array();\r\n$output = \'\';\r\n$items = $offset > 0 ? array_slice($items, $offset) : $items;\r\n$count = count($items);\r\n\r\nif ($count > 0) {\r\n    $limit = $limit == 0 || $limit > $count ? $count : $limit;\r\n    $preselectLimit = $preselectLimit > $count ? $count : $preselectLimit;\r\n    //preselect important items\r\n    $preitems = array();\r\n    if ($randomize && $preselectLimit > 0) {\r\n        for ($i = 0; $i < $preselectLimit; $i++) {\r\n            $preitems[] = $items[$i];\r\n            unset($items[$i]);\r\n        }\r\n        $limit = $limit - count($preitems);\r\n    }\r\n\r\n    //shuffle items\r\n    if ($randomize) {\r\n        shuffle($items);\r\n    }\r\n\r\n    //limit items\r\n    $count = count($items);\r\n    $tempitems = array();\r\n\r\n    for ($i = 0; $i < $limit; $i++) {\r\n        if ($i >= $count) {\r\n            break;\r\n        }\r\n        $tempitems[] = $items[$i];\r\n    }\r\n    $items = $tempitems;\r\n\r\n    //add preselected items and schuffle again\r\n    if ($randomize && $preselectLimit > 0) {\r\n        $items = array_merge($preitems, $items);\r\n        shuffle($items);\r\n    }\r\n\r\n    $properties = array();\r\n    foreach ($scriptProperties as $property => $value) {\r\n        $properties[\'property.\' . $property] = $value;\r\n    }\r\n\r\n    $idx = 0;\r\n    $output = array();\r\n    $template = array();\r\n    $count = count($items);\r\n\r\n    foreach ($items as $key => $item) {\r\n        $formname = isset($item[\'MIGX_formname\']) ? $item[\'MIGX_formname\'] . \'_\' : \'\';\r\n        $fields = array();\r\n        foreach ($item as $field => $value) {\r\n            if (is_array($value)) {\r\n                if (is_array($value[0])) {\r\n                    //nested array - convert to json\r\n                    $value = $modx->toJson($value);\r\n                } else {\r\n                    $value = implode(\'||\', $value); //handle arrays (checkboxes, multiselects)\r\n                }\r\n            }\r\n\r\n\r\n            $inputTVkey = $formname . $field;\r\n\r\n            if ($processTVs && isset($inputTvs[$inputTVkey])) {\r\n                if (isset($inputTvs[$inputTVkey][\'inputTV\']) && $tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$inputTVkey][\'inputTV\']))) {\r\n\r\n                } else {\r\n                    $tv = $modx->newObject(\'modTemplateVar\');\r\n                    $tv->set(\'type\', $inputTvs[$inputTVkey][\'inputTVtype\']);\r\n                }\r\n                $inputTV = $inputTvs[$inputTVkey];\r\n\r\n                $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\r\n                //don\'t manipulate any urls here\r\n                $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\r\n                $tv->set(\'default_text\', $value);\r\n\r\n                // $value = $tv->renderOutput($docid); breaks if the TV used in MIGX is also assigned to this Template,\r\n                // example tv: imageLogo is assigned to the template and imageLogo is assigned to the MIGX TV as a result\r\n                // only the value of the imageLogo is returned for the MIGX TV instance\r\n                // need to override default MODX method: $value = $tv->renderOutput($docid);\r\n                /* process any TV commands in value */\r\n                $tv_value = $tv->processBindings($value, $docid);\r\n                $params = $tv->get(\'output_properties\');\r\n                if (empty($params) || $params === null) {\r\n                    $params = [];\r\n                }\r\n                /* run prepareOutput to allow for custom overriding */\r\n                $tv_value = $tv->prepareOutput($tv_value, $docid);\r\n                /* find the render */\r\n                $outputRenderPaths = $tv->getRenderDirectories(\'OnTVOutputRenderList\',\'output\');\r\n                $value = $tv->getRender($params, $tv_value, $outputRenderPaths, \'output\', $docid, $tv->get(\'display\'));\r\n                // End override of $value = $tv->renderOutput($docid);\r\n				\r\n                //set option back\r\n                $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\r\n                //now manipulate urls\r\n                if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\r\n                    $mTypes = explode(\',\', $mTypes);\r\n                    if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\r\n                        //$value = $mediasource->prepareOutputUrl($value);\r\n                        $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\r\n                    }\r\n                }\r\n\r\n            }\r\n            $fields[$field] = $value;\r\n\r\n        }\r\n\r\n        if (!empty($addfields)) {\r\n            foreach ($addfields as $addfield) {\r\n                $addfield = explode(\':\', $addfield);\r\n                $addname = $addfield[0];\r\n                $adddefault = isset($addfield[1]) ? $addfield[1] : \'\';\r\n                $fields[$addname] = $adddefault;\r\n            }\r\n        }\r\n\r\n        if (!empty($sumFields)) {\r\n            $sumFields = is_array($sumFields) ? $sumFields : explode(\',\', $sumFields);\r\n            foreach ($sumFields as $sumField) {\r\n                if (isset($fields[$sumField])) {\r\n                    $summaries[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField] + $fields[$sumField];\r\n                    $fields[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField];\r\n                }\r\n            }\r\n        }\r\n\r\n\r\n        if ($toJsonPlaceholder) {\r\n            $output[] = $fields;\r\n        } else {\r\n            $fields[\'_alt\'] = $idx % 2;\r\n            $idx++;\r\n            $fields[\'_first\'] = $idx == 1 ? true : \'\';\r\n            $fields[\'_last\'] = $idx == $limit ? true : \'\';\r\n            $fields[\'idx\'] = $idx;\r\n            $rowtpl = \'\';\r\n            //get changing tpls from field\r\n            if (substr($tpl, 0, 7) == \"@FIELD:\") {\r\n                $tplField = substr($tpl, 7);\r\n                $rowtpl = $fields[$tplField];\r\n            }\r\n\r\n            if ($fields[\'_first\'] && !empty($tplFirst)) {\r\n                $rowtpl = $tplFirst;\r\n            }\r\n            if ($fields[\'_last\'] && empty($rowtpl) && !empty($tplLast)) {\r\n                $rowtpl = $tplLast;\r\n            }\r\n            $tplidx = \'tpl_\' . $idx;\r\n            if (empty($rowtpl) && !empty($$tplidx)) {\r\n                $rowtpl = $$tplidx;\r\n            }\r\n            if ($idx > 1 && empty($rowtpl)) {\r\n                $divisors = $migx->getDivisors($idx);\r\n                if (!empty($divisors)) {\r\n                    foreach ($divisors as $divisor) {\r\n                        $tplnth = \'tpl_n\' . $divisor;\r\n                        if (!empty($$tplnth)) {\r\n                            $rowtpl = $$tplnth;\r\n                            if (!empty($rowtpl)) {\r\n                                break;\r\n                            }\r\n                        }\r\n                    }\r\n                }\r\n            }\r\n\r\n            if ($count == 1 && isset($tpl_oneresult)) {\r\n                $rowtpl = $tpl_oneresult;\r\n            }\r\n\r\n            $fields = array_merge($fields, $properties);\r\n\r\n            if (!empty($rowtpl)) {\r\n                $template = $migx->getTemplate($tpl, $template);\r\n                $fields[\'_tpl\'] = $template[$tpl];\r\n            } else {\r\n                $rowtpl = $tpl;\r\n\r\n            }\r\n            $template = $migx->getTemplate($rowtpl, $template);\r\n\r\n\r\n            if ($template[$rowtpl]) {\r\n                $chunk = $modx->newObject(\'modChunk\');\r\n                $chunk->setCacheable(false);\r\n                $chunk->setContent($template[$rowtpl]);\r\n\r\n\r\n                if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField])) {\r\n                    $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\r\n                } else {\r\n                    $output[] = $chunk->process($fields);\r\n                }\r\n            } else {\r\n                if (!empty($placeholdersKeyField)) {\r\n                    $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\r\n                } else {\r\n                    $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\r\n                }\r\n            }\r\n        }\r\n\r\n\r\n    }\r\n}\r\n\r\nif (count($summaries) > 0) {\r\n    $modx->toPlaceholders($summaries);\r\n}\r\n\r\n\r\nif ($toJsonPlaceholder) {\r\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\r\n    return \'\';\r\n}\r\n\r\nif (!empty($toSeparatePlaceholders)) {\r\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\r\n    return \'\';\r\n}\r\n/*\r\nif (!empty($outerTpl))\r\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\r\nelse \r\n*/\r\n\r\nif ($count > 0 && $splits > 0) {\r\n    $size = ceil($count / $splits);\r\n    $chunks = array_chunk($output, $size);\r\n    $output = array();\r\n    foreach ($chunks as $chunk) {\r\n        $o = implode($outputSeparator, $chunk);\r\n        $output[] = $modx->getChunk($splitTpl, array(\'output\' => $o));\r\n    }\r\n    $outputSeparator = $splitSeparator;\r\n}\r\n\r\nif (is_array($output)) {\r\n    $o = implode($outputSeparator, $output);\r\n} else {\r\n    $o = $output;\r\n}\r\n\r\nif (!empty($o) && !empty($wrapperTpl)) {\r\n    $template = $migx->getTemplate($wrapperTpl);\r\n    if ($template[$wrapperTpl]) {\r\n        $chunk = $modx->newObject(\'modChunk\');\r\n        $chunk->setCacheable(false);\r\n        $chunk->setContent($template[$wrapperTpl]);\r\n        $properties[\'output\'] = $o;\r\n        $o = $chunk->process($properties);\r\n    }\r\n}\r\n\r\nif (empty($o) && !empty($emptyTpl)) {\r\n    $template = $migx->getTemplate($emptyTpl);\r\n    if ($template[$emptyTpl]) {\r\n        $chunk = $modx->newObject(\'modChunk\');\r\n        $chunk->setCacheable(false);\r\n        $chunk->setContent($template[$emptyTpl]);\r\n        $o = $chunk->process($properties);\r\n    }\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $o);\r\n    return \'\';\r\n}\r\n\r\nreturn $o;', 0, 'a:0:{}', '', 0, ''),
(12, 0, 0, 'migxGetRelations', '', 0, 4, 0, '$id = $modx->getOption(\'id\', $scriptProperties, $modx->resource->get(\'id\'));\r\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, \'\');\r\n$element = $modx->getOption(\'element\', $scriptProperties, \'getResources\');\r\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \',\');\r\n$sourceWhere = $modx->getOption(\'sourceWhere\', $scriptProperties, \'\');\r\n$ignoreRelationIfEmpty = $modx->getOption(\'ignoreRelationIfEmpty\', $scriptProperties, false);\r\n$inheritFromParents = $modx->getOption(\'inheritFromParents\', $scriptProperties, false);\r\n$parentIDs = $inheritFromParents ? array_merge(array($id), $modx->getParentIds($id)) : array($id);\r\n\r\n$packageName = \'resourcerelations\';\r\n\r\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/\';\r\n$modelpath = $packagepath . \'model/\';\r\n\r\n$modx->addPackage($packageName, $modelpath, $prefix);\r\n$classname = \'rrResourceRelation\';\r\n$output = \'\';\r\n\r\nforeach ($parentIDs as $id) {\r\n    if (!empty($id)) {\r\n        $output = \'\';\r\n                \r\n        $c = $modx->newQuery($classname, array(\'target_id\' => $id, \'published\' => \'1\'));\r\n        $c->select($modx->getSelectColumns($classname, $c->getAlias()));\r\n\r\n        if (!empty($sourceWhere)) {\r\n            $sourceWhere_ar = $modx->fromJson($sourceWhere);\r\n            if (is_array($sourceWhere_ar)) {\r\n                $where = array();\r\n                foreach ($sourceWhere_ar as $key => $value) {\r\n                    $where[\'Source.\' . $key] = $value;\r\n                }\r\n                $joinclass = \'modResource\';\r\n                $joinalias = \'Source\';\r\n                $selectfields = \'id\';\r\n                $selectfields = !empty($selectfields) ? explode(\',\', $selectfields) : null;\r\n                $c->leftjoin($joinclass, $joinalias);\r\n                $c->select($modx->getSelectColumns($joinclass, $joinalias, $joinalias . \'_\', $selectfields));\r\n                $c->where($where);\r\n            }\r\n        }\r\n\r\n        //$c->prepare(); echo $c->toSql();\r\n        if ($c->prepare() && $c->stmt->execute()) {\r\n            $collection = $c->stmt->fetchAll(PDO::FETCH_ASSOC);\r\n        }\r\n        \r\n        foreach ($collection as $row) {\r\n            $ids[] = $row[\'source_id\'];\r\n        }\r\n        $output = implode($outputSeparator, $ids);\r\n    }\r\n    if (!empty($output)){\r\n        break;\r\n    }\r\n}\r\n\r\n\r\nif (!empty($element)) {\r\n    if (empty($output) && $ignoreRelationIfEmpty) {\r\n        return $modx->runSnippet($element, $scriptProperties);\r\n    } else {\r\n        $scriptProperties[\'resources\'] = $output;\r\n        $scriptProperties[\'parents\'] = \'9999999\';\r\n        return $modx->runSnippet($element, $scriptProperties);\r\n    }\r\n\r\n\r\n}\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n    return \'\';\r\n}\r\n\r\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(13, 0, 0, 'migx', '', 0, 4, 0, '$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\r\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\r\n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\r\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\r\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\r\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\r\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\r\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\r\n$where = !empty($where) ? $modx->fromJSON($where) : array();\r\n$sortConfig = $modx->getOption(\'sortConfig\', $scriptProperties, \'\');\r\n$sortConfig = !empty($sortConfig) ? $modx->fromJSON($sortConfig) : array();\r\n$configs = $modx->getOption(\'configs\', $scriptProperties, \'\');\r\n$configs = !empty($configs) ? explode(\',\',$configs):array();\r\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\r\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\r\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\r\n//$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\r\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'id\');\r\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\r\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\r\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\r\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\r\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\r\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\r\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\r\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\r\n\r\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\r\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\r\n\r\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\nif (!($migx instanceof Migx))\r\n    return \'\';\r\n//$modx->migx = &$migx;\r\n$defaultcontext = \'web\';\r\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\r\n\r\nif (!empty($tvname))\r\n{\r\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname)))\r\n    {\r\n\r\n        /*\r\n        *   get inputProperties\r\n        */\r\n\r\n\r\n        $properties = $tv->get(\'input_properties\');\r\n        $properties = isset($properties[\'configs\']) ? $properties : $tv->getProperties();\r\n        $cfgs = $modx->getOption(\'configs\',$properties,\'\');\r\n        if (!empty($cfgs)){\r\n            $cfgs = explode(\',\',$cfgs);\r\n            $configs = array_merge($configs,$cfgs);\r\n           \r\n        }\r\n        \r\n    }\r\n}\r\n\r\n\r\n\r\n//$migx->config[\'configs\'] = implode(\',\',$configs);\r\n$migx->loadConfigs(false,true,array(\'configs\'=>implode(\',\',$configs)));\r\n$migx->customconfigs = array_merge($migx->customconfigs,$scriptProperties);\r\n\r\n\r\n\r\n// get tabs from file or migx-config-table\r\n$formtabs = $migx->getTabs();\r\nif (empty($formtabs))\r\n{\r\n    //try to get formtabs and its fields from properties\r\n    $formtabs = $modx->fromJSON($properties[\'formtabs\']);\r\n}\r\n\r\nif ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\']))\r\n{\r\n    $jsonVarKey = $properties[\'jsonvarkey\'];\r\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\r\n}\r\n\r\n$outputvalue = $tv && empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\r\n/*\r\n*   get inputTvs \r\n*/\r\n$inputTvs = array();\r\nif (is_array($formtabs))\r\n{\r\n\r\n    //multiple different Forms\r\n    // Note: use same field-names and inputTVs in all forms\r\n    $inputTvs = $migx->extractInputTvs($formtabs);\r\n}\r\n\r\nif ($tv)\r\n{\r\n    $migx->source = $tv->getSource($migx->working_context, false);\r\n}\r\n\r\n//$task = $modx->migx->getTask();\r\n$filename = \'getlist.php\';\r\n$processorspath = $migx->config[\'processorsPath\'] . \'mgr/\';\r\n$filenames = array();\r\n$scriptProperties[\'start\'] = $modx->getOption(\'offset\', $scriptProperties, 0);\r\nif ($processor_file = $migx->findProcessor($processorspath, $filename, $filenames))\r\n{\r\n    include ($processor_file);\r\n    //todo: add getlist-processor for default-MIGX-TV\r\n}\r\n\r\n$items = isset($rows) && is_array($rows) ? $rows : array();\r\n$modx->setPlaceholder($totalVar, isset($count) ? $count : 0);\r\n\r\n$properties = array();\r\nforeach ($scriptProperties as $property => $value)\r\n{\r\n    $properties[\'property.\' . $property] = $value;\r\n}\r\n\r\n$idx = 0;\r\n$output = array();\r\nforeach ($items as $key => $item)\r\n{\r\n\r\n    $fields = array();\r\n    foreach ($item as $field => $value)\r\n    {\r\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\r\n        if ($processTVs && isset($inputTvs[$field]))\r\n        {\r\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\'])))\r\n            {\r\n\r\n            } else\r\n            {\r\n                $tv = $modx->newObject(\'modTemplateVar\');\r\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\r\n            }\r\n            $inputTV = $inputTvs[$field];\r\n\r\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\r\n            //don\'t manipulate any urls here\r\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\r\n            $tv->set(\'default_text\', $value);\r\n            $value = $tv->renderOutput($docid);\r\n            //set option back\r\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\r\n            //now manipulate urls\r\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv))\r\n            {\r\n                $mTypes = explode(\',\', $mTypes);\r\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes))\r\n                {\r\n                    //$value = $mediasource->prepareOutputUrl($value);\r\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\r\n                }\r\n            }\r\n\r\n        }\r\n        $fields[$field] = $value;\r\n\r\n    }\r\n    if ($toJsonPlaceholder)\r\n    {\r\n        $output[] = $fields;\r\n    } else\r\n    {\r\n        $fields[\'_alt\'] = $idx % 2;\r\n        $idx++;\r\n        $fields[\'_first\'] = $idx == 1 ? true : \'\';\r\n        $fields[\'_last\'] = $idx == $limit ? true : \'\';\r\n        $fields[\'idx\'] = $idx;\r\n        $rowtpl = $tpl;\r\n        //get changing tpls from field\r\n        if (substr($tpl, 0, 7) == \"@FIELD:\")\r\n        {\r\n            $tplField = substr($tpl, 7);\r\n            $rowtpl = $fields[$tplField];\r\n        }\r\n\r\n        if (!isset($template[$rowtpl]))\r\n        {\r\n            if (substr($rowtpl, 0, 6) == \"@FILE:\")\r\n            {\r\n                $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\r\n            } elseif (substr($rowtpl, 0, 6) == \"@CODE:\")\r\n            {\r\n                $template[$rowtpl] = substr($tpl, 6);\r\n            } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true))\r\n            {\r\n                $template[$rowtpl] = $chunk->getContent();\r\n            } else\r\n            {\r\n                $template[$rowtpl] = false;\r\n            }\r\n        }\r\n\r\n        $fields = array_merge($fields, $properties);\r\n\r\n        if ($template[$rowtpl])\r\n        {\r\n            $chunk = $modx->newObject(\'modChunk\');\r\n            $chunk->setCacheable(false);\r\n            $chunk->setContent($template[$rowtpl]);\r\n            if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField]))\r\n            {\r\n                $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\r\n            } else\r\n            {\r\n                $output[] = $chunk->process($fields);\r\n            }\r\n        } else\r\n        {\r\n            if (!empty($placeholdersKeyField))\r\n            {\r\n                $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\r\n            } else\r\n            {\r\n                $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\r\n            }\r\n        }\r\n    }\r\n\r\n\r\n}\r\n\r\n\r\nif ($toJsonPlaceholder)\r\n{\r\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\r\n    return \'\';\r\n}\r\n\r\nif (!empty($toSeparatePlaceholders))\r\n{\r\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\r\n    return \'\';\r\n}\r\n/*\r\nif (!empty($outerTpl))\r\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\r\nelse \r\n*/\r\nif (is_array($output))\r\n{\r\n    $o = implode($outputSeparator, $output);\r\n} else\r\n{\r\n    $o = $output;\r\n}\r\n\r\nif (!empty($toPlaceholder))\r\n{\r\n    $modx->setPlaceholder($toPlaceholder, $o);\r\n    return \'\';\r\n}\r\n\r\nreturn $o;', 0, 'a:0:{}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(14, 0, 0, 'migxLoopCollection', '', 0, 4, 0, '/*\r\ngetXpdoInstanceAndAddPackage - properties\r\n\r\n$prefix\r\n$usecustomprefix\r\n$packageName\r\n\r\n\r\nprepareQuery - properties:\r\n\r\n$limit\r\n$offset\r\n$totalVar\r\n$where\r\n$queries\r\n$sortConfig\r\n$groupby\r\n$joins\r\n$selectfields\r\n$classname\r\n$debug\r\n\r\nrenderOutput - properties:\r\n\r\n$tpl\r\n$wrapperTpl\r\n$toSeparatePlaceholders\r\n$toPlaceholder\r\n$outputSeparator\r\n$placeholdersKeyField\r\n$toJsonPlaceholder\r\n$jsonVarKey\r\n$addfields\r\n\r\n*/\r\n\r\n\r\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\nif (!($migx instanceof Migx))\r\n    return \'\';\r\n//$modx->migx = &$migx;\r\n\r\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\r\n\r\n$defaultcontext = \'web\';\r\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\r\n\r\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\r\n$rows = $migx->getCollection($c);\r\n\r\n$output = $migx->renderOutput($rows,$scriptProperties);\r\n\r\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(15, 0, 0, 'migxResourceMediaPath', '', 0, 4, 0, '/**\r\n * @name migxResourceMediaPath\r\n * @description Dynamically calculates the upload path for a given resource\r\n * \r\n * This Snippet is meant to dynamically calculate your baseBath attribute\r\n * for custom Media Sources.  This is useful if you wish to shepard uploaded\r\n * images to a folder dedicated to a given resource.  E.g. page 123 would \r\n * have its own images that page 456 could not reference.\r\n *\r\n * USAGE:\r\n * [[migxResourceMediaPath? &pathTpl=`assets/businesses/{id}/`]]\r\n * [[migxResourceMediaPath? &pathTpl=`assets/resourceimages/{id}/` &checkTVs=`mymigxtv`]]\r\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}`]]\r\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}` &breadcrumbdepth=`2`]]\r\n *\r\n * PARAMETERS\r\n * &pathTpl string formatting string specifying the file path. \r\n *		Relative to MODX base_path\r\n *		Available placeholders: {id}, {pagetitle}, {parent}\r\n * &docid (optional) integer page id\r\n * &createFolder (optional) boolean whether or not to create directory\r\n * &checkTVs (optional) commaseperated list of TVs to check, before directory is created \r\n */\r\n$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\r\n$docid = $modx->getOption(\'docid\', $scriptProperties, \'\');\r\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, false);\r\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\r\n$checktvs = $modx->getOption(\'checkTVs\', $scriptProperties, false);\r\n\r\n$path = \'\';\r\n$fullpath = \'\';\r\n$createpath = false;\r\n$fallbackpath = $modx->getOption(\'fallbackPath\', $scriptProperties, \'assets/migxfallback/\');\r\n\r\nif (empty($pathTpl)) {\r\n    $modx->log(MODX_LOG_LEVEL_DEBUG, \'[migxResourceMediaPath]: pathTpl not specified.\');\r\n}\r\n\r\nif (empty($docid) && $modx->getPlaceholder(\'mediasource_docid\')) {\r\n    // placeholder was set by some script\r\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\r\n    $docid = $modx->getPlaceholder(\'mediasource_docid\');\r\n}\r\n\r\nif (empty($docid) && $modx->getPlaceholder(\'docid\')) {\r\n    // placeholder was set by some script\r\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\r\n    $docid = $modx->getPlaceholder(\'docid\');\r\n}\r\nif (empty($docid)) {\r\n\r\n    //on frontend\r\n    if (is_object($modx->resource)) {\r\n        $docid = $modx->resource->get(\'id\');\r\n    }\r\n    //on manager resource/update page\r\n    else {\r\n        $createpath = $createfolder;\r\n        // We do this to read the &id param from an Ajax request\r\n        $parsedUrl = parse_url($_SERVER[\'HTTP_REFERER\']);\r\n        parse_str($parsedUrl[\'query\'], $parsedQuery);\r\n\r\n        $action = $parsedQuery[\'a\'] ?? \'\';\r\n        if ($action == \'resource/update\'){\r\n            $docid = (int)$parsedQuery[\'amp;id\'] ?? (int)$parsedQuery[\'id\'] ?? 0;\r\n        }\r\n    }\r\n}\r\n\r\nif (empty($docid)) {\r\n    $modx->log(MODX_LOG_LEVEL_DEBUG, \'[migxResourceMediaPath]: docid could not be determined.\');\r\n}\r\n\r\nif (empty($docid) || empty($pathTpl)) {\r\n    $path = $fallbackpath;\r\n    $fullpath = $modx->getOption(\'base_path\') . $fallbackpath;\r\n    $createpath = true;\r\n}\r\n\r\nif (empty($fullpath) && $resource = $modx->getObject(\'modResource\', $docid)) {\r\n    $path = $pathTpl;\r\n    $ultimateParent = \'\';\r\n    if (strstr($path, \'{breadcrumb}\') || strstr($path, \'{ultimateparent}\')) {\r\n        $depth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, 10);\r\n        $ctx = $resource->get(\'context_key\');\r\n        $parentids = $modx->getParentIds($docid, $depth, array(\'context\' => $ctx));\r\n        $breadcrumbdepth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, count($parentids));\r\n        $breadcrumbdepth = $breadcrumbdepth > count($parentids) ? count($parentids) : $breadcrumbdepth;\r\n        if (count($parentids) > 1) {\r\n            $parentids = array_reverse($parentids);\r\n            $parentids[] = $docid;\r\n            $ultimateParent = $parentids[1];\r\n        } else {\r\n            $ultimateParent = $docid;\r\n            $parentids = array();\r\n            $parentids[] = $docid;\r\n        }\r\n    }\r\n\r\n    if (strstr($path, \'{breadcrumb}\')) {\r\n        $breadcrumbpath = \'\';\r\n        for ($i = 1; $i <= $breadcrumbdepth; $i++) {\r\n            $breadcrumbpath .= $parentids[$i] . \'/\';\r\n        }\r\n        $path = str_replace(\'{breadcrumb}\', $breadcrumbpath, $path);\r\n    }\r\n    \r\n    if (!empty($tvname)){\r\n        $path = str_replace(\'{tv_value}\', $resource->getTVValue($tvname), $path);    \r\n    }\r\n    $path = str_replace(\'{id}\', $docid, $path);\r\n    $path = str_replace(\'{pagetitle}\', $resource->get(\'pagetitle\'), $path);\r\n    $path = str_replace(\'{alias}\', $resource->get(\'alias\'), $path);\r\n    $path = str_replace(\'{parent}\', $resource->get(\'parent\'), $path);\r\n    $path = str_replace(\'{context_key}\', $resource->get(\'context_key\'), $path);\r\n    $path = str_replace(\'{ultimateparent}\', $ultimateParent, $path);\r\n    if ($template = $resource->getOne(\'Template\')) {\r\n        $path = str_replace(\'{templatename}\', $template->get(\'templatename\'), $path);\r\n    }\r\n    if ($user = $modx->user) {\r\n        $path = str_replace(\'{username}\', $modx->user->get(\'username\'), $path);\r\n        $path = str_replace(\'{userid}\', $modx->user->get(\'id\'), $path);\r\n    }\r\n\r\n    $fullpath = $modx->getOption(\'base_path\') . $path;\r\n\r\n    if ($createpath && $checktvs){\r\n        $createpath = false;\r\n        if ($template) {\r\n            $tvs = explode(\',\',$checktvs);\r\n            foreach ($tvs as $tv){\r\n                if ($template->hasTemplateVar($tv)){\r\n                    $createpath = true;\r\n                }\r\n            }            \r\n        } \r\n\r\n    }\r\n\r\n} else {\r\n    $modx->log(MODX_LOG_LEVEL_DEBUG, sprintf(\'[migxResourceMediaPath]: resource not found (page id %s).\', $docid));\r\n}\r\n\r\nif ($createpath && !file_exists($fullpath)) {\r\n\r\n    $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\r\n    if (!@mkdir($fullpath, $permissions, true)) {\r\n        $modx->log(MODX_LOG_LEVEL_DEBUG, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\r\n    } else {\r\n        chmod($fullpath, $permissions);\r\n    }\r\n}\r\n\r\nreturn $path;', 0, 'a:0:{}', '', 0, ''),
(16, 0, 0, 'migxImageUpload', '', 0, 4, 0, 'return include $modx->getOption(\'core_path\').\'components/migx/model/imageupload/imageupload.php\';', 0, 'a:0:{}', '', 0, ''),
(17, 0, 0, 'migxChunklistToJson', '', 0, 4, 0, '$category = $modx->getOption(\'category\', $scriptProperties, \'\');\r\n$format = $modx->getOption(\'format\', $scriptProperties, \'json\');\r\n\r\n$classname = \'modChunk\';\r\n$rows = array();\r\n$output = \'\';\r\n\r\n$c = $modx->newQuery($classname);\r\n$c->select($modx->getSelectColumns($classname, $c->getAlias(), \'\', array(\'id\', \'name\')));\r\n$c->sortby(\'name\');\r\n\r\nif (!empty($category)) {\r\n    $c->where(array(\'category\' => $category));\r\n}\r\n//$c->prepare();echo $c->toSql();\r\nif ($collection = $modx->getCollection($classname, $c)) {\r\n    $i = 0;\r\n\r\n    switch ($format) {\r\n        case \'json\':\r\n            foreach ($collection as $object) {\r\n                $row[\'MIGX_id\'] = (string )$i;\r\n                $row[\'name\'] = $object->get(\'name\');\r\n                $row[\'selected\'] = \'0\';\r\n                $rows[] = $row;\r\n                $i++;\r\n            }\r\n            $output = $modx->toJson($rows);\r\n            break;\r\n        \r\n        case \'optionlist\':\r\n            foreach ($collection as $object) {\r\n                $rows[] = $object->get(\'name\');\r\n                $i++;\r\n            }\r\n            $output = implode(\'||\',$rows);      \r\n        break;\r\n            \r\n    }\r\n\r\n\r\n}\r\n\r\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(18, 0, 0, 'migxSwitchDetailChunk', '', 0, 4, 0, '//[[migxSwitchDetailChunk? &detailChunk=`detailChunk` &listingChunk=`listingChunk`]]\r\n\r\n\r\n$properties[\'migx_id\'] = $modx->getOption(\'migx_id\',$_GET,\'\');\r\n\r\nif (!empty($properties[\'migx_id\'])){\r\n    $output = $modx->getChunk($detailChunk,$properties);\r\n}\r\nelse{\r\n    $output = $modx->getChunk($listingChunk);\r\n}\r\n\r\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(19, 0, 0, 'getSwitchColumnCol', '', 0, 4, 0, '$scriptProperties = $_REQUEST;\r\n$col = \'\';\r\n// special actions, for example the showSelector - action\r\n$tempParams = $modx->getOption(\'tempParams\', $scriptProperties, \'\');\r\n\r\nif (!empty($tempParams)) {\r\n    $tempParams = $modx->fromJson($tempParams);\r\n    $col = $modx->getOption(\'col\', $tempParams, \'\');\r\n}\r\n\r\nreturn $col;', 0, 'a:0:{}', '', 0, ''),
(20, 0, 0, 'getDayliMIGXrecord', '', 0, 4, 0, '/**\r\n * getDayliMIGXrecord\r\n *\r\n * Copyright 2009-2011 by Bruno Perner <b.perner@gmx.de>\r\n *\r\n * getDayliMIGXrecord is free software; you can redistribute it and/or modify it\r\n * under the terms of the GNU General Public License as published by the Free\r\n * Software Foundation; either version 2 of the License, or (at your option) any\r\n * later version.\r\n *\r\n * getDayliMIGXrecord is distributed in the hope that it will be useful, but WITHOUT ANY\r\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\r\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\r\n *\r\n * You should have received a copy of the GNU General Public License along with\r\n * getDayliMIGXrecord; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\r\n * Suite 330, Boston, MA 02111-1307 USA\r\n *\r\n * @package migx\r\n */\r\n/**\r\n * getDayliMIGXrecord\r\n *\r\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \r\n *\r\n * @version 1.0\r\n * @author Bruno Perner <b.perner@gmx.de>\r\n * @copyright Copyright &copy; 2012\r\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\r\n * version 2 or (at your option) any later version.\r\n * @package migx\r\n */\r\n\r\n/*example: [[!getDayliMIGXrecord? &tvname=`myTV`&tpl=`@CODE:<img src=\"[[+image]]\"/>` &randomize=`1`]]*/\r\n/* get default properties */\r\n\r\n\r\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\r\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\r\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\r\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\r\n$where = !empty($where) ? $modx->fromJSON($where) : array();\r\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\r\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\r\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\r\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\r\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\r\n\r\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\nif (!($migx instanceof Migx))\r\n    return \'\';\r\n$migx->working_context = $modx->resource->get(\'context_key\');\r\n\r\nif (!empty($tvname)) {\r\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\r\n\r\n        /*\r\n        *   get inputProperties\r\n        */\r\n\r\n\r\n        $properties = $tv->get(\'input_properties\');\r\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\r\n\r\n        $migx->config[\'configs\'] = $properties[\'configs\'];\r\n        $migx->loadConfigs();\r\n        // get tabs from file or migx-config-table\r\n        $formtabs = $migx->getTabs();\r\n        if (empty($formtabs)) {\r\n            //try to get formtabs and its fields from properties\r\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\r\n        }\r\n\r\n        //$tv->setCacheable(false);\r\n        //$outputvalue = $tv->renderOutput($docid);\r\n        \r\n        $tvresource = $modx->getObject(\'modTemplateVarResource\', array(\r\n            \'tmplvarid\' => $tv->get(\'id\'),\r\n            \'contentid\' => $docid,\r\n            ));\r\n\r\n\r\n        $outputvalue = $tvresource->get(\'value\');\r\n        \r\n        /*\r\n        *   get inputTvs \r\n        */\r\n        $inputTvs = array();\r\n        if (is_array($formtabs)) {\r\n\r\n            //multiple different Forms\r\n            // Note: use same field-names and inputTVs in all forms\r\n            $inputTvs = $migx->extractInputTvs($formtabs);\r\n        }\r\n        $migx->source = $tv->getSource($migx->working_context, false);\r\n\r\n        if (empty($outputvalue)) {\r\n            return \'\';\r\n        }\r\n\r\n        $items = $modx->fromJSON($outputvalue);\r\n\r\n\r\n        //is there an active item for the current date?\r\n        $activedate = $modx->getOption(\'activedate\', $scriptProperties, strftime(\'%Y/%m/%d\'));\r\n        //$activedate = $modx->getOption(\'activedate\', $_GET, strftime(\'%Y/%m/%d\'));\r\n        $activewhere = array();\r\n        $activewhere[\'activedate\'] = $activedate;\r\n        $activewhere[\'activated\'] = \'1\';\r\n        $activeitems = $migx->filterItems($activewhere, $items);\r\n\r\n        if (count($activeitems) == 0) {\r\n\r\n            $activeitems = array();\r\n            // where filter\r\n            if (is_array($where) && count($where) > 0) {\r\n                $items = $migx->filterItems($where, $items);\r\n            }\r\n\r\n            $tempitems = array();\r\n            $count = count($items);\r\n            $emptycount = 0;\r\n            $latestdate = $activedate;\r\n            $nextdate = strtotime($latestdate);\r\n            foreach ($items as $item) {\r\n                //empty all dates and active-states which are older than today\r\n                if (!empty($item[\'activedate\']) && $item[\'activedate\'] < $activedate) {\r\n                    $item[\'activated\'] = \'0\';\r\n                    $item[\'activedate\'] = \'\';\r\n                }\r\n                if (empty($item[\'activedate\'])) {\r\n                    $emptycount++;\r\n                }\r\n                if ($item[\'activedate\'] > $latestdate) {\r\n                    $latestdate = $item[\'activedate\'];\r\n                    $nextdate = strtotime($latestdate) + (24 * 60 * 60);\r\n                }\r\n                if ($item[\'activedate\'] == $activedate) {\r\n                    $item[\'activated\'] = \'1\';\r\n                    $activeitems[] = $item;\r\n                }\r\n                $tempitems[] = $item;\r\n            }\r\n\r\n            //echo \'<pre>\' . print_r($tempitems, 1) . \'</pre>\';\r\n\r\n            $items = $tempitems;\r\n\r\n\r\n            //are there more than half of all items with empty activedates\r\n\r\n            if ($emptycount >= $count / 2) {\r\n\r\n                // sort items\r\n                if (is_array($sort) && count($sort) > 0) {\r\n                    $items = $migx->sortDbResult($items, $sort);\r\n                }\r\n                if (count($items) > 0) {\r\n                    //shuffle items\r\n                    if ($randomize) {\r\n                        shuffle($items);\r\n                    }\r\n                }\r\n\r\n                $tempitems = array();\r\n                foreach ($items as $item) {\r\n                    if (empty($item[\'activedate\'])) {\r\n                        $item[\'activedate\'] = strftime(\'%Y/%m/%d\', $nextdate);\r\n                        $nextdate = $nextdate + (24 * 60 * 60);\r\n                        if ($item[\'activedate\'] == $activedate) {\r\n                            $item[\'activated\'] = \'1\';\r\n                            $activeitems[] = $item;\r\n                        }\r\n                    }\r\n\r\n                    $tempitems[] = $item;\r\n                }\r\n\r\n                $items = $tempitems;\r\n            }\r\n\r\n            //$resource = $modx->getObject(\'modResource\', $docid);\r\n            //echo $modx->toJson($items);\r\n            $sort = \'[{\"sortby\":\"activedate\"}]\';\r\n            $items = $migx->sortDbResult($items, $modx->fromJson($sort));\r\n\r\n            //echo \'<pre>\' . print_r($items, 1) . \'</pre>\';\r\n\r\n            $tv->setValue($docid, $modx->toJson($items));\r\n            $tv->save();\r\n\r\n        }\r\n    }\r\n\r\n}\r\n\r\n\r\n$properties = array();\r\nforeach ($scriptProperties as $property => $value) {\r\n    $properties[\'property.\' . $property] = $value;\r\n}\r\n\r\n$output = \'\';\r\n\r\nforeach ($activeitems as $key => $item) {\r\n\r\n    $fields = array();\r\n    foreach ($item as $field => $value) {\r\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\r\n        if ($processTVs && isset($inputTvs[$field])) {\r\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\']))) {\r\n\r\n            } else {\r\n                $tv = $modx->newObject(\'modTemplateVar\');\r\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\r\n            }\r\n            $inputTV = $inputTvs[$field];\r\n\r\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\r\n            //don\'t manipulate any urls here\r\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\r\n            $tv->set(\'default_text\', $value);\r\n            $value = $tv->renderOutput($docid);\r\n            //set option back\r\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\r\n            //now manipulate urls\r\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\r\n                $mTypes = explode(\',\', $mTypes);\r\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\r\n                    //$value = $mediasource->prepareOutputUrl($value);\r\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\r\n                }\r\n            }\r\n\r\n        }\r\n        $fields[$field] = $value;\r\n\r\n    }\r\n\r\n    $rowtpl = $tpl;\r\n    //get changing tpls from field\r\n    if (substr($tpl, 0, 7) == \"@FIELD:\") {\r\n        $tplField = substr($tpl, 7);\r\n        $rowtpl = $fields[$tplField];\r\n    }\r\n\r\n    if (!isset($template[$rowtpl])) {\r\n        if (substr($rowtpl, 0, 6) == \"@FILE:\") {\r\n            $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\r\n        } elseif (substr($rowtpl, 0, 6) == \"@CODE:\") {\r\n            $template[$rowtpl] = substr($tpl, 6);\r\n        } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true)) {\r\n            $template[$rowtpl] = $chunk->getContent();\r\n        } else {\r\n            $template[$rowtpl] = false;\r\n        }\r\n    }\r\n\r\n    $fields = array_merge($fields, $properties);\r\n\r\n    if ($template[$rowtpl]) {\r\n        $chunk = $modx->newObject(\'modChunk\');\r\n        $chunk->setCacheable(false);\r\n        $chunk->setContent($template[$rowtpl]);\r\n        $output .= $chunk->process($fields);\r\n\r\n    } else {\r\n        $output .= \'<pre>\' . print_r($fields, 1) . \'</pre>\';\r\n\r\n    }\r\n\r\n\r\n}\r\n\r\n\r\nif (!empty($toPlaceholder)) {\r\n    $modx->setPlaceholder($toPlaceholder, $output);\r\n    return \'\';\r\n}\r\n\r\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(21, 0, 0, 'filterbytag', '', 0, 4, 0, 'if (!is_array($subject)) {\r\n    $subject = explode(\',\',str_replace(array(\'||\',\' \'),array(\',\',\'\'),$subject));\r\n}\r\n\r\nreturn (in_array($operand,$subject));', 0, 'a:0:{}', '', 0, ''),
(22, 0, 0, 'migxObjectMediaPath', '', 0, 4, 0, '$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\r\n$objectid = $modx->getOption(\'objectid\', $scriptProperties, \'\');\r\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, \'1\');\r\n$path = \'\';\r\n$createpath = false;\r\nif (empty($objectid) && $modx->getPlaceholder(\'objectid\')) {\r\n    // placeholder was set by some script on frontend for example\r\n    $objectid = $modx->getPlaceholder(\'objectid\');\r\n}\r\nif (empty($objectid) && isset($_REQUEST[\'object_id\'])) {\r\n    $objectid = $_REQUEST[\'object_id\'];\r\n}\r\n\r\n\r\n\r\nif (empty($objectid)) {\r\n\r\n    //set Session - var in fields.php - processor\r\n    if (isset($_SESSION[\'migxWorkingObjectid\'])) {\r\n        $objectid = $_SESSION[\'migxWorkingObjectid\'];\r\n        $createpath = !empty($createfolder);\r\n    }\r\n\r\n}\r\n\r\n\r\n$path = str_replace(\'{id}\', $objectid, $pathTpl);\r\n\r\n$fullpath = $modx->getOption(\'base_path\') . $path;\r\n\r\nif ($createpath && !file_exists($fullpath)) {\r\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\r\n        if (!@mkdir($fullpath, $permissions, true)) {\r\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\r\n        }\r\n        else{\r\n            chmod($fullpath, $permissions); \r\n        }\r\n}\r\n\r\nreturn $path;', 0, 'a:0:{}', '', 0, ''),
(23, 0, 0, 'exportMIGX2db', '', 0, 4, 0, '/**\r\n * exportMIGX2db\r\n *\r\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\r\n * \r\n * Sponsored by Simon Wurster <info@wurster-medien.de>\r\n *\r\n * exportMIGX2db is free software; you can redistribute it and/or modify it\r\n * under the terms of the GNU General Public License as published by the Free\r\n * Software Foundation; either version 2 of the License, or (at your option) any\r\n * later version.\r\n *\r\n * exportMIGX2db is distributed in the hope that it will be useful, but WITHOUT ANY\r\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\r\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\r\n *\r\n * You should have received a copy of the GNU General Public License along with\r\n * exportMIGX2db; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\r\n * Suite 330, Boston, MA 02111-1307 USA\r\n *\r\n * @package migx\r\n */\r\n/**\r\n * exportMIGX2db\r\n *\r\n * export Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string to db-table \r\n *\r\n * @version 1.0\r\n * @author Bruno Perner <b.perner@gmx.de>\r\n * @copyright Copyright &copy; 2014\r\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\r\n * version 2 or (at your option) any later version.\r\n * @package migx\r\n */\r\n\r\n/*\r\n[[!exportMIGX2db? \r\n&tvname=`references` \r\n&resources=`25` \r\n&packageName=`projekte`\r\n&classname=`Projekt` \r\n&migx_id_field=`migx_id` \r\n&renamed_fields=`{\"Firmen-URL\":\"Firmen_url\",\"Projekt-URL\":\"Projekt_URL\",\"main-image\":\"main_image\"}`\r\n]]\r\n*/\r\n\r\n\r\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\r\n$resources = $modx->getOption(\'resources\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : \'\'));\r\n$resources = explode(\',\', $resources);\r\n$prefix = isset($scriptProperties[\'prefix\']) ? $scriptProperties[\'prefix\'] : null;\r\n$packageName = $modx->getOption(\'packageName\', $scriptProperties, \'\');\r\n$classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\r\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\r\n$migx_id_field = $modx->getOption(\'migx_id_field\', $scriptProperties, \'\');\r\n$pos_field = $modx->getOption(\'pos_field\', $scriptProperties, \'\');\r\n$renamed_fields = $modx->getOption(\'renamed_fields\', $scriptProperties, \'\');\r\n\r\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName .\r\n    \'/\';\r\n$modelpath = $packagepath . \'model/\';\r\n\r\n$modx->addPackage($packageName, $modelpath, $prefix);\r\n$added = 0;\r\n$modified = 0;\r\n\r\nforeach ($resources as $docid) {\r\n    \r\n    $outputvalue = \'\';\r\n    if (count($resources)==1){\r\n        $outputvalue = $value;    \r\n    }\r\n    \r\n    if (!empty($tvname)) {\r\n        if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\r\n\r\n            $outputvalue = empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\r\n        }\r\n    }\r\n\r\n    if (!empty($outputvalue)) {\r\n        $renamed = !empty($renamed_fields) ? $modx->fromJson($renamed_fields) : array();\r\n\r\n        $items = $modx->fromJSON($outputvalue);\r\n        $pos = 1;\r\n        $searchfields = array();\r\n        if (is_array($items)) {\r\n            foreach ($items as $fields) {\r\n                $search = array();\r\n                if (!empty($migx_id_field)) {\r\n                    $search[$migx_id_field] = $fields[\'MIGX_id\'];\r\n                }\r\n                if (!empty($resource_id_field)) {\r\n                    $search[$resource_id_field] = $docid;\r\n                }\r\n                if (!empty($migx_id_field) && $object = $modx->getObject($classname, $search)) {\r\n                    $mode = \'mod\';\r\n                } else {\r\n                    $object = $modx->newObject($classname);\r\n                    $object->fromArray($search);\r\n                    $mode = \'add\';\r\n                }\r\n                foreach ($fields as $field => $value) {\r\n                    $fieldname = array_key_exists($field, $renamed) ? $renamed[$field] : $field;\r\n                    $object->set($fieldname, $value);\r\n                }\r\n                if (!empty($pos_field)) {\r\n                    $object->set($pos_field,$pos) ;\r\n                }                \r\n                if ($object->save()) {\r\n                    if ($mode == \'add\') {\r\n                        $added++;\r\n                    } else {\r\n                        $modified++;\r\n                    }\r\n                }\r\n                $pos++;\r\n            }\r\n            \r\n        }\r\n    }\r\n}\r\n\r\n\r\nreturn $added . \' rows added to db, \' . $modified . \' existing rows actualized\';', 0, 'a:0:{}', '', 0, ''),
(24, 0, 0, 'preparedatewhere', '', 0, 4, 0, '$name = $modx->getOption(\'name\', $scriptProperties, \'\');\r\n$date = $modx->getOption($name . \'_date\', $_REQUEST, \'\');\r\n$dir = str_replace(\'T\', \' \', $modx->getOption($name . \'_dir\', $_REQUEST, \'\'));\r\n\r\nif (!empty($date) && !empty($dir) && $dir != \'all\') {\r\n    switch ($dir) {\r\n        case \'=\':\r\n            $where = array(\r\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date)),\r\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\r\n            );\r\n            break;\r\n        case \'>=\':\r\n            $where = array(\r\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date))\r\n            );\r\n            break;\r\n        case \'<=\':\r\n            $where = array(\r\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\r\n            );            \r\n            break;\r\n\r\n    }\r\n\r\n    return $modx->toJson($where);\r\n}', 0, 'a:0:{}', '', 0, ''),
(25, 0, 0, 'migxJsonToPlaceholders', '', 0, 4, 0, '$value = $modx->getOption(\'value\',$scriptProperties,\'\');\r\n$prefix = $modx->getOption(\'prefix\',$scriptProperties,\'\');\r\n\r\n//$modx->setPlaceholders($modx->fromJson($value),$prefix,\'\',true);\r\n\r\n$values = json_decode($value, true);\r\n\r\n$it = new RecursiveIteratorIterator(new RecursiveArrayIterator($values));\r\n\r\nif (is_array($values)){\r\n    foreach ($it as $key => $value){\r\n        $value = $value == null ? \'\' : $value;\r\n        $modx->setPlaceholder($prefix . $key, $value);\r\n    }\r\n}', 0, 'a:0:{}', '', 0, ''),
(26, 0, 0, 'migxGetCollectionTree', '', 0, 4, 0, '/**\r\n * migxGetCollectionTree\r\n *\r\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\r\n *\r\n * migxGetCollectionTree is free software; you can redistribute it and/or modify it\r\n * under the terms of the GNU General Public License as published by the Free\r\n * Software Foundation; either version 2 of the License, or (at your option) any\r\n * later version.\r\n *\r\n * migxGetCollectionTree is distributed in the hope that it will be useful, but WITHOUT ANY\r\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\r\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\r\n *\r\n * You should have received a copy of the GNU General Public License along with\r\n * migxGetCollectionTree; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\r\n * Suite 330, Boston, MA 02111-1307 USA\r\n *\r\n * @package migx\r\n */\r\n/**\r\n * migxGetCollectionTree\r\n *\r\n *          display nested items from different objects. The tree-schema is defined by a json-property. \r\n *\r\n * @version 1.0.0\r\n * @author Bruno Perner <b.perner@gmx.de>\r\n * @copyright Copyright &copy; 2014\r\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\r\n * version 2 or (at your option) any later version.\r\n * @package migx\r\n */\r\n\r\n$treeSchema = $modx->getOption(\'treeSchema\', $scriptProperties, \'\');\r\n$treeSchema = $modx->fromJson($treeSchema);\r\n\r\n$scriptProperties[\'current\'] = $modx->getOption(\'current\', $scriptProperties, \'\');\r\n$scriptProperties[\'currentClassname\'] = $modx->getOption(\'currentClassname\', $scriptProperties, \'\');\r\n$scriptProperties[\'currentKeyField\'] = $modx->getOption(\'currentKeyField\', $scriptProperties, \'id\');\r\n$return = $modx->getOption(\'return\', $scriptProperties, \'parsed\'); //parsed,json,arrayprint\r\n\r\n/*\r\nExamples:\r\n\r\nGet Resource-Tree, 4 levels deep\r\n\r\n[[!migxGetCollectionTree?\r\n&current=`57`\r\n&currentClassname=`modResource`\r\n&treeSchema=`\r\n{\r\n\"classname\": \"modResource\",\r\n\"debug\": \"1\",\r\n\"tpl\": \"mgctResourceTree\",\r\n\"wrapperTpl\": \"@CODE:<ul>[[+output]]</ul>\",\r\n\"selectfields\": \"id,pagetitle\",\r\n\"where\": {\r\n\"parent\": \"0\",\r\n\"published\": \"1\",\r\n\"deleted\": \"0\"\r\n},\r\n\"_branches\": [{\r\n\"alias\": \"children\",\r\n\"classname\": \"modResource\",\r\n\"local\": \"parent\",\r\n\"foreign\": \"id\",\r\n\"tpl\": \"mgctResourceTree\",\r\n\"debug\": \"1\",\r\n\"selectfields\": \"id,pagetitle,parent\",\r\n\"_branches\": [{\r\n\"alias\": \"children\",\r\n\"classname\": \"modResource\",\r\n\"local\": \"parent\",\r\n\"foreign\": \"id\",\r\n\"tpl\": \"mgctResourceTree\",\r\n\"debug\": \"1\",\r\n\"selectfields\": \"id,pagetitle,parent\",\r\n\"where\": {\r\n\"published\": \"1\",\r\n\"deleted\": \"0\"\r\n},\r\n\"_branches\": [{\r\n\"alias\": \"children\",\r\n\"classname\": \"modResource\",\r\n\"local\": \"parent\",\r\n\"foreign\": \"id\",\r\n\"tpl\": \"mgctResourceTree\",\r\n\"debug\": \"1\",\r\n\"selectfields\": \"id,pagetitle,parent\",\r\n\"where\": {\r\n\"published\": \"1\",\r\n\"deleted\": \"0\"\r\n}\r\n}]\r\n}]\r\n}]\r\n}\r\n`]]\r\n\r\nthe chunk mgctResourceTree:\r\n<li class=\"[[+_activelabel]] [[+_currentlabel]]\" ><a href=\"[[~[[+id]]]]\">[[+pagetitle]]([[+id]])</a></li>\r\n[[+innercounts.children:gt=`0`:then=`\r\n<ul>[[+innerrows.children]]</ul>\r\n`:else=``]]\r\n\r\nget all Templates and its Resources:\r\n\r\n[[!migxGetCollectionTree?\r\n&treeSchema=`\r\n{\r\n\"classname\": \"modTemplate\",\r\n\"debug\": \"1\",\r\n\"tpl\": \"@CODE:<h3>[[+templatename]]</h3><ul>[[+innerrows.resource]]</ul>\",\r\n\"selectfields\": \"id,templatename\",\r\n\"_branches\": [{\r\n\"alias\": \"resource\",\r\n\"classname\": \"modResource\",\r\n\"local\": \"template\",\r\n\"foreign\": \"id\",\r\n\"tpl\": \"@CODE:<li>[[+pagetitle]]([[+id]])</li>\",\r\n\"debug\": \"1\",\r\n\"selectfields\": \"id,pagetitle,template\"\r\n}]\r\n}\r\n`]]\r\n*/\r\n\r\nif (!class_exists(\'MigxGetCollectionTree\')) {\r\n    class MigxGetCollectionTree\r\n    {\r\n        function __construct(modX & $modx, array $config = array())\r\n        {\r\n            $this->modx = &$modx;\r\n            $this->config = $config;\r\n        }\r\n\r\n        function getBranch($branch, $foreigns = array(), $level = 1)\r\n        {\r\n\r\n            $rows = array();\r\n\r\n            if (count($foreigns) > 0) {\r\n                $modx = &$this->modx;\r\n\r\n                $local = $modx->getOption(\'local\', $branch, \'\');\r\n                $where = $modx->getOption(\'where\', $branch, array());\r\n                $where = !empty($where) && !is_array($where) ? $modx->fromJSON($where) : $where;\r\n                $where[] = array($local . \':IN\' => $foreigns);\r\n\r\n                $branch[\'where\'] = $modx->toJson($where);\r\n\r\n                $level++;\r\n                /*\r\n                if ($levelFromCurrent > 0){\r\n                $levelFromCurrent++;    \r\n                }\r\n                */\r\n\r\n                $rows = $this->getRows($branch, $level);\r\n            }\r\n\r\n            return $rows;\r\n        }\r\n\r\n        function getRows($scriptProperties, $level)\r\n        {\r\n            $migx = &$this->migx;\r\n            $modx = &$this->modx;\r\n\r\n            $current = $modx->getOption(\'current\', $this->config, \'\');\r\n            $currentKeyField = $modx->getOption(\'currentKeyField\', $this->config, \'id\');\r\n            $currentlabel = $modx->getOption(\'currentlabel\', $this->config, \'current\');\r\n            $classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\r\n			$sortResult = $modx->getOption(\'sortResult\', $scriptProperties, \'\');\r\n            $currentClassname = !empty($this->config[\'currentClassname\']) ? $this->config[\'currentClassname\'] : $classname;\r\n\r\n            $activelabel = $modx->getOption(\'activelabel\', $this->config, \'active\');\r\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\r\n\r\n            $xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\r\n            $c = $migx->prepareQuery($xpdo, $scriptProperties);\r\n            $rows = $migx->getCollection($c);\r\n\r\n            $branches = $modx->getOption(\'_branches\', $scriptProperties, array());\r\n\r\n            $collectedSubrows = array();\r\n            foreach ($branches as $branch) {\r\n                $foreign = $modx->getOption(\'foreign\', $branch, \'\');\r\n                $local = $modx->getOption(\'local\', $branch, \'\');\r\n                $alias = $modx->getOption(\'alias\', $branch, \'\');\r\n                //$activeonly = $modx->getOption(\'activeonly\', $branch, \'\');\r\n                $foreigns = array();\r\n                foreach ($rows as $row) {\r\n                    $foreigns[] = $row[$foreign];\r\n                }\r\n\r\n                $subrows = $this->getBranch($branch, $foreigns, $level);\r\n                foreach ($subrows as $subrow) {\r\n\r\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\r\n                    $subrow[\'_active\'] = $modx->getOption(\'_active\', $subrow, \'0\');\r\n                    /*\r\n                    if (!empty($activeonly) && $subrow[\'_active\'] != \'1\') {\r\n                    $output = \'\';\r\n                    } else {\r\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\r\n                    }\r\n                    */\r\n                    if ($subrow[\'_active\'] == \'1\') {\r\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\r\n                        $activesubrow[$subrow[$local]] = true;\r\n                    }\r\n                    if ($subrow[\'_current\'] == \'1\') {\r\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\r\n                        $currentsubrow[$subrow[$local]] = true;\r\n                    }\r\n\r\n\r\n                }\r\n                //insert subrows\r\n                $temprows = $rows;\r\n                $rows = array();\r\n                foreach ($temprows as $row) {\r\n                    if (isset($collectedSubrows[$row[$foreign]])) {\r\n                        $row[\'_active\'] = \'0\';\r\n                        $row[\'_currentparent\'] = \'0\';\r\n                        if (isset($activesubrow[$row[$foreign]]) && $activesubrow[$row[$foreign]]) {\r\n                            $row[\'_active\'] = \'1\';\r\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\r\n                        }\r\n                        if (isset($currentsubrow[$row[$foreign]]) && $currentsubrow[$row[$foreign]]) {\r\n                            $row[\'_currentparent\'] = \'1\';\r\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\r\n                        }\r\n\r\n                        //render innerrows\r\n                        //$output = $migx->renderOutput($collectedSubrows[$row[$foreign]],$scriptProperties);\r\n                        //$output = $collectedSubrows[$row[$foreign]];\r\n\r\n                        $row[\'innercounts.\' . $alias] = count($collectedSubrows[$row[$foreign]]);\r\n                        $row[\'_scriptProperties\'][$alias] = $branch;\r\n                        /*\r\n                        switch ($return) {\r\n                        case \'parsed\':\r\n                        $output = $migx->renderOutput($collectedSubrows[$row[$foreign]], $branch);\r\n                        //$subbranches = $modx->getOption(\'_branches\', $branch, array());\r\n                        //if there are any placeholders left with the same alias from subbranch, remove them\r\n                        $output = str_replace(\'[[+innerrows.\' . $alias . \']]\', \'\', $output);\r\n                        break;\r\n                        case \'json\':\r\n                        case \'arrayprint\':\r\n                        $output = $collectedSubrows[$row[$foreign]];\r\n                        break;\r\n                        }\r\n                        */\r\n                        $output = $collectedSubrows[$row[$foreign]];\r\n\r\n                        $row[\'innerrows.\' . $alias] = $output;\r\n\r\n                    }\r\n                    $rows[] = $row;\r\n                }\r\n\r\n            }\r\n\r\n            $temprows = $rows;\r\n            $rows = array();\r\n            foreach ($temprows as $row) {\r\n                //add additional placeholders\r\n                $row[\'_level\'] = $level;\r\n                $row[\'_active\'] = $modx->getOption(\'_active\', $row, \'0\');\r\n                if ($currentClassname == $classname && $row[$currentKeyField] == $current) {\r\n                    $row[\'_current\'] = \'1\';\r\n                    $row[\'_currentlabel\'] = $currentlabel;\r\n                    $row[\'_active\'] = \'1\';\r\n                } else {\r\n                    $row[\'_current\'] = \'0\';\r\n                    $row[\'_currentlabel\'] = \'\';\r\n                }\r\n                if ($row[\'_active\'] == \'1\') {\r\n                    $row[\'_activelabel\'] = $activelabel;\r\n                } else {\r\n                    $row[\'_activelabel\'] = \'\';\r\n                }\r\n                $rows[] = $row;\r\n            }\r\n\r\n            if (!empty($sortResult) && is_array($sortResult)){\r\n                $rows = $migx->sortDbResult($rows, $sortResult);\r\n			}\r\n\r\n            return $rows;\r\n        }\r\n\r\n        function renderRow($row, $levelFromCurrent = 0)\r\n        {\r\n            $migx = &$this->migx;\r\n            $modx = &$this->modx;\r\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\r\n            $branchProperties = $modx->getOption(\'_scriptProperties\', $row, array());\r\n            $current = $modx->getOption(\'_current\', $row, \'0\');\r\n            $currentparent = $modx->getOption(\'_currentparent\', $row, \'0\');\r\n            $levelFromCurrent = $current == \'1\' ? 1 : $levelFromCurrent;\r\n            $row[\'_levelFromCurrent\'] = $levelFromCurrent;\r\n            foreach ($branchProperties as $alias => $properties) {\r\n                $innerrows = $modx->getOption(\'innerrows.\' . $alias, $row, array());\r\n                $subrows = $this->renderRows($innerrows, $properties, $levelFromCurrent, $currentparent);\r\n                if ($return == \'parsed\') {\r\n                    $subrows = $migx->renderOutput($subrows, $properties);\r\n                }\r\n                $row[\'innerrows.\' . $alias] = $subrows;\r\n            }\r\n\r\n            return $row;\r\n        }\r\n\r\n        function renderRows($rows, $scriptProperties, $levelFromCurrent = 0, $siblingOfCurrent = \'0\')\r\n        {\r\n\r\n            $modx = &$this->modx;\r\n            $temprows = $rows;\r\n            $rows = array();\r\n            if ($levelFromCurrent > 0) {\r\n                $levelFromCurrent++;\r\n            }\r\n            foreach ($temprows as $row) {\r\n                $row[\'_siblingOfCurrent\'] = $siblingOfCurrent;\r\n                $row = $this->renderRow($row, $levelFromCurrent);\r\n                $rows[] = $row;\r\n            }\r\n            return $rows;\r\n        }\r\n    }\r\n}\r\n\r\n$instance = new MigxGetCollectionTree($modx, $scriptProperties);\r\n\r\nif (is_array($treeSchema)) {\r\n    $scriptProperties = $treeSchema;\r\n\r\n    $migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\n    if (!($migx instanceof Migx))\r\n        return \'\';\r\n\r\n    $defaultcontext = \'web\';\r\n    $migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\r\n    $instance->migx = &$migx;\r\n\r\n    $level = 1;\r\n    $scriptProperties[\'alias\'] = \'row\';\r\n    $rows = $instance->getRows($scriptProperties, $level);\r\n\r\n    $row = array();\r\n    $row[\'innercounts.row\'] = count($rows);\r\n    $row[\'innerrows.row\'] = $rows;\r\n    $row[\'_scriptProperties\'][\'row\'] = $scriptProperties;\r\n\r\n    $rows = $instance->renderRow($row);\r\n\r\n    $output = \'\';\r\n    switch ($return) {\r\n        case \'parsed\':\r\n            $output = $modx->getOption(\'innerrows.row\', $rows, \'\');\r\n            break;\r\n        case \'json\':\r\n            $output = $modx->toJson($rows);\r\n            break;\r\n        case \'arrayprint\':\r\n            $output = \'<pre>\' . print_r($rows, 1) . \'</pre>\';\r\n            break;\r\n    }\r\n\r\n    return $output;\r\n\r\n}', 0, 'a:0:{}', '', 0, ''),
(27, 0, 0, 'migxIsNewObject', '', 0, 4, 0, 'if (isset($_REQUEST[\'object_id\']) && $_REQUEST[\'object_id\']==\'new\'){\r\n    return 1;\r\n}', 0, 'a:0:{}', '', 0, ''),
(28, 0, 0, 'migx_example_validate', '', 0, 4, 0, '$properties = &$modx->getOption(\'scriptProperties\', $scriptProperties, array());\r\n$object = &$modx->getOption(\'object\', $scriptProperties, null);\r\n$postvalues = &$modx->getOption(\'postvalues\', $scriptProperties, array());\r\n$form_field = $modx->getOption(\'form_field\', $scriptProperties, array());\r\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\r\n$validation_type = $modx->getOption(\'validation_type\', $scriptProperties, \'\');\r\n$result = \'\';\r\nswitch ($validation_type) {\r\n    case \'gt25\':\r\n        if ((int) $value > 25) {\r\n        } else {\r\n            $error_message = $validation_type; // may be custom validation message\r\n            $error[\'caption\'] = $form_field;\r\n            $error[\'validation_type\'] = $error_message;\r\n            $result[\'error\'] = $error;\r\n            $result = $modx->toJson($result);\r\n        }\r\n        break;\r\n}\r\nreturn $result;', 0, 'a:0:{}', '', 0, ''),
(29, 0, 0, 'migxHookAftercollectmigxitems', '', 0, 4, 0, '$configs = $modx->getOption(\'configs\', $_REQUEST, \'\');\r\n\r\n$rows = $modx->getOption(\'rows\', $scriptProperties, array());\r\n$newrows = array();\r\n\r\n\r\nif (is_array($rows)) {\r\n    $max_id = 0;\r\n    $dbfields = array();\r\n    $existing_dbfields = array();\r\n    foreach ($rows as $key => $row) {\r\n        if (isset($row[\'MIGX_id\']) && $row[\'MIGX_id\'] > $max_id) {\r\n            $max_id = $row[\'MIGX_id\'];\r\n        }\r\n        if (isset($row[\'selected_dbfields\']) && isset($row[\'existing_dbfields\'])) {\r\n            $dbfields = is_array($row[\'selected_dbfields\']) ? $row[\'selected_dbfields\'] : array($row[\'selected_dbfields\']);\r\n            \r\n            $existing_dbfields = explode(\'||\', $row[\'existing_dbfields\']);\r\n            //echo \'<pre>\' . print_r($existing_dbfields,1) . \'</pre>\';die();\r\n\r\n        } else {\r\n            $newrows[] = $row;\r\n        }\r\n\r\n    }\r\n\r\n    foreach ($dbfields as $dbfield) {\r\n        if (!empty($dbfield) && !in_array($dbfield, $existing_dbfields)) {\r\n            $max_id++;\r\n            $newrow = array();\r\n            $newrow[\'MIGX_id\'] = $max_id;\r\n\r\n            switch ($configs) {\r\n                case \'migxformtabfields\':\r\n                    $newrow[\'field\'] = $dbfield;\r\n                    $newrow[\'caption\'] = $dbfield;\r\n                    break;\r\n                case \'migxcolumns\':\r\n                    $newrow[\'dataIndex\'] = $dbfield;\r\n                    $newrow[\'header\'] = $dbfield;\r\n                    break;                    \r\n            }\r\n\r\n\r\n            $newrows[] = $newrow;\r\n        }\r\n    }\r\n\r\n\r\n}\r\n\r\n\r\nreturn json_encode($newrows);', 0, 'a:0:{}', '', 0, ''),
(30, 0, 0, 'migxAutoPublish', '', 0, 4, 0, '$classnames = explode(\',\', $modx->getOption(\'classnames\',$scriptProperties,\'\'));\r\n$packageName = $modx->getOption(\'packageName\',$scriptProperties,\'\');\r\n\r\nswitch ($mode) {\r\n    case \'datetime\' :\r\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\r\n        break;\r\n    case \'unixtime\' :\r\n        $timeNow = time();\r\n        break;\r\n    default :\r\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\r\n        break;\r\n}\r\n\r\n$modx->addPackage($packageName, $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/model/\');\r\n\r\nforeach ($classnames as $classname) {\r\n    if (!empty($classname)) {\r\n        $tblResource = $modx->getTableName($classname);\r\n        if (!$result = $modx->exec(\"UPDATE {$tblResource} SET published=1,publishedon=pub_date,pub_date=null WHERE pub_date < \'{$timeNow}\' AND pub_date > 0 AND published=0\")) {\r\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource publishing data: \' . print_r($modx->errorInfo(), true));\r\n        }\r\n        if (!$result = $modx->exec(\"UPDATE $tblResource SET published=0,unpub_date=null WHERE unpub_date < \'{$timeNow}\' AND unpub_date IS NOT NULL AND unpub_date > 0 AND published=1\")) {\r\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource unpublishing data: \' . print_r($modx->errorInfo(), true));\r\n        }\r\n    }\r\n\r\n}\r\n$modx->cacheManager->refresh();', 0, 'a:0:{}', '', 0, '');
INSERT INTO `modx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(31, 0, 0, 'migxGetObject', '', 0, 4, 0, '/*\r\ngetXpdoInstanceAndAddPackage - properties\r\n\r\n$prefix\r\n$usecustomprefix\r\n$packageName\r\n\r\n\r\nprepareQuery - properties:\r\n\r\n$limit\r\n$offset\r\n$totalVar\r\n$where\r\n$queries\r\n$sortConfig\r\n$groupby\r\n$joins\r\n$selectfields\r\n$classname\r\n$debug\r\n\r\nrenderOutput - properties:\r\n\r\n$tpl\r\n$wrapperTpl\r\n$toSeparatePlaceholders\r\n$toPlaceholder\r\n$outputSeparator\r\n$placeholdersKeyField\r\n$toJsonPlaceholder\r\n$jsonVarKey\r\n$addfields\r\n\r\nmigxGetObject - properties\r\n\r\n$id\r\n$toPlaceholders - if not empty, output to placeholders with specified prefix or print the array, if \'print_r\' is the property-value\r\n\r\n*/\r\n\r\n$id = $modx->getOption(\'id\',$scriptProperties,\'\');\r\n$scriptProperties[\'limit\'] = 1;\r\n\r\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\r\nif (!($migx instanceof Migx))\r\n    return \'\';\r\n//$modx->migx = &$migx;\r\n\r\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\r\n\r\n$defaultcontext = \'web\';\r\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\r\n\r\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\r\nif (!empty($id)){\r\n    $c->where(array(\'id\'=>$id));\r\n	$c->prepare();\r\n}	\r\n$rows = $migx->getCollection($c);\r\n\r\n$output = $migx->renderOutput($rows,$scriptProperties);\r\n\r\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(32, 0, 0, 'FormIt', 'A dynamic form processing snippet.', 0, 6, 0, '/**\n * FormIt\n *\n * A dynamic form processing Snippet for MODx Revolution.\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\nuse Sterc\\FormIt;\n\n$fi = new FormIt($modx, $scriptProperties);\n\n$fi->initialize($modx->context->get(\'key\'));\n$fi->loadRequest();\n\n$fields = $fi->request->prepare();\n\nreturn $fi->request->handle($fields);', 0, 'a:61:{s:5:\"hooks\";a:7:{s:4:\"name\";s:5:\"hooks\";s:4:\"desc\";s:22:\"prop_formit.hooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"preHooks\";a:7:{s:4:\"name\";s:8:\"preHooks\";s:4:\"desc\";s:25:\"prop_formit.prehooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"submitVar\";a:7:{s:4:\"name\";s:9:\"submitVar\";s:4:\"desc\";s:26:\"prop_formit.submitvar_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"validate\";a:7:{s:4:\"name\";s:8:\"validate\";s:4:\"desc\";s:25:\"prop_formit.validate_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:6:\"errTpl\";a:7:{s:4:\"name\";s:6:\"errTpl\";s:4:\"desc\";s:23:\"prop_formit.errtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:37:\"<span class=\"error\">[[+error]]</span>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:22:\"validationErrorMessage\";a:7:{s:4:\"name\";s:22:\"validationErrorMessage\";s:4:\"desc\";s:39:\"prop_formit.validationerrormessage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:96:\"<p class=\"error\">A form validation error occurred. Please check the values you have entered.</p>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:22:\"validationErrorBulkTpl\";a:7:{s:4:\"name\";s:22:\"validationErrorBulkTpl\";s:4:\"desc\";s:39:\"prop_formit.validationerrorbulktpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:19:\"<li>[[+error]]</li>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:26:\"trimValuesBeforeValidation\";a:7:{s:4:\"name\";s:26:\"trimValuesBeforeValidation\";s:4:\"desc\";s:43:\"prop_formit.trimvaluesdeforevalidation_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"customValidators\";a:7:{s:4:\"name\";s:16:\"customValidators\";s:4:\"desc\";s:33:\"prop_formit.customvalidators_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"clearFieldsOnSuccess\";a:7:{s:4:\"name\";s:20:\"clearFieldsOnSuccess\";s:4:\"desc\";s:37:\"prop_formit.clearfieldsonsuccess_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"successMessage\";a:7:{s:4:\"name\";s:14:\"successMessage\";s:4:\"desc\";s:31:\"prop_formit.successmessage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:25:\"successMessagePlaceholder\";a:7:{s:4:\"name\";s:25:\"successMessagePlaceholder\";s:4:\"desc\";s:42:\"prop_formit.successmessageplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:17:\"fi.successMessage\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:5:\"store\";a:7:{s:4:\"name\";s:5:\"store\";s:4:\"desc\";s:22:\"prop_formit.store_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:34:\"prop_formit.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"fi.\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"storeTime\";a:7:{s:4:\"name\";s:9:\"storeTime\";s:4:\"desc\";s:26:\"prop_formit.storetime_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"300\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"storeLocation\";a:7:{s:4:\"name\";s:13:\"storeLocation\";s:4:\"desc\";s:30:\"prop_formit.storelocation_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"cache\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"allowFiles\";a:7:{s:4:\"name\";s:10:\"allowFiles\";s:4:\"desc\";s:27:\"prop_formit.allowfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"spamEmailFields\";a:7:{s:4:\"name\";s:15:\"spamEmailFields\";s:4:\"desc\";s:32:\"prop_formit.spamemailfields_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"spamCheckIp\";a:7:{s:4:\"name\";s:11:\"spamCheckIp\";s:4:\"desc\";s:28:\"prop_formit.spamcheckip_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"recaptchaJs\";a:7:{s:4:\"name\";s:11:\"recaptchaJs\";s:4:\"desc\";s:28:\"prop_formit.recaptchajs_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"{}\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"recaptchaTheme\";a:7:{s:4:\"name\";s:14:\"recaptchaTheme\";s:4:\"desc\";s:31:\"prop_formit.recaptchatheme_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"clean\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:27:\"prop_formit.redirectto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"redirectParams\";a:7:{s:4:\"name\";s:14:\"redirectParams\";s:4:\"desc\";s:31:\"prop_formit.redirectparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"emailTo\";a:7:{s:4:\"name\";s:7:\"emailTo\";s:4:\"desc\";s:24:\"prop_formit.emailto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"emailToName\";a:7:{s:4:\"name\";s:11:\"emailToName\";s:4:\"desc\";s:28:\"prop_formit.emailtoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"emailFrom\";a:7:{s:4:\"name\";s:9:\"emailFrom\";s:4:\"desc\";s:26:\"prop_formit.emailfrom_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"emailFromName\";a:7:{s:4:\"name\";s:13:\"emailFromName\";s:4:\"desc\";s:30:\"prop_formit.emailfromname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailReplyTo\";a:7:{s:4:\"name\";s:12:\"emailReplyTo\";s:4:\"desc\";s:29:\"prop_formit.emailreplyto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"emailReplyToName\";a:7:{s:4:\"name\";s:16:\"emailReplyToName\";s:4:\"desc\";s:33:\"prop_formit.emailreplytoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"emailCC\";a:7:{s:4:\"name\";s:7:\"emailCC\";s:4:\"desc\";s:24:\"prop_formit.emailcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"emailCCName\";a:7:{s:4:\"name\";s:11:\"emailCCName\";s:4:\"desc\";s:28:\"prop_formit.emailccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"emailBCC\";a:7:{s:4:\"name\";s:8:\"emailBCC\";s:4:\"desc\";s:25:\"prop_formit.emailbcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailBCCName\";a:7:{s:4:\"name\";s:12:\"emailBCCName\";s:4:\"desc\";s:29:\"prop_formit.emailbccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"emailReturnPath\";a:7:{s:4:\"name\";s:15:\"emailReturnPath\";s:4:\"desc\";s:32:\"prop_formit.emailreturnpath_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailSubject\";a:7:{s:4:\"name\";s:12:\"emailSubject\";s:4:\"desc\";s:29:\"prop_formit.emailsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:23:\"emailUseFieldForSubject\";a:7:{s:4:\"name\";s:23:\"emailUseFieldForSubject\";s:4:\"desc\";s:40:\"prop_formit.emailusefieldforsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"emailHtml\";a:7:{s:4:\"name\";s:9:\"emailHtml\";s:4:\"desc\";s:26:\"prop_formit.emailhtml_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"emailConvertNewlines\";a:7:{s:4:\"name\";s:20:\"emailConvertNewlines\";s:4:\"desc\";s:37:\"prop_formit.emailconvertnewlines_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"emailMultiWrapper\";a:7:{s:4:\"name\";s:17:\"emailMultiWrapper\";s:4:\"desc\";s:34:\"prop_formit.emailmultiwrapper_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"[[+value]]\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:19:\"emailMultiSeparator\";a:7:{s:4:\"name\";s:19:\"emailMultiSeparator\";s:4:\"desc\";s:36:\"prop_formit.emailmultiseparator_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"fiarTpl\";a:7:{s:4:\"name\";s:7:\"fiarTpl\";s:4:\"desc\";s:24:\"prop_formit.fiartpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarToField\";a:7:{s:4:\"name\";s:11:\"fiarToField\";s:4:\"desc\";s:28:\"prop_formit.fiartofield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarSubject\";a:7:{s:4:\"name\";s:11:\"fiarSubject\";s:4:\"desc\";s:28:\"prop_formit.fiarsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:30:\"[[++site_name]] Auto-Responder\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fiarFrom\";a:7:{s:4:\"name\";s:8:\"fiarFrom\";s:4:\"desc\";s:25:\"prop_formit.fiarfrom_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"fiarFromName\";a:7:{s:4:\"name\";s:12:\"fiarFromName\";s:4:\"desc\";s:29:\"prop_formit.fiarfromname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarReplyTo\";a:7:{s:4:\"name\";s:11:\"fiarReplyTo\";s:4:\"desc\";s:28:\"prop_formit.fiarreplyto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"fiarReplyToName\";a:7:{s:4:\"name\";s:15:\"fiarReplyToName\";s:4:\"desc\";s:32:\"prop_formit.fiarreplytoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:6:\"fiarCC\";a:7:{s:4:\"name\";s:6:\"fiarCC\";s:4:\"desc\";s:23:\"prop_formit.fiarcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"fiarCCName\";a:7:{s:4:\"name\";s:10:\"fiarCCName\";s:4:\"desc\";s:25:\"prop_fiar.fiarccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"fiarBCC\";a:7:{s:4:\"name\";s:7:\"fiarBCC\";s:4:\"desc\";s:24:\"prop_formit.fiarbcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarBCCName\";a:7:{s:4:\"name\";s:11:\"fiarBCCName\";s:4:\"desc\";s:28:\"prop_formit.fiarbccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fiarHtml\";a:7:{s:4:\"name\";s:8:\"fiarHtml\";s:4:\"desc\";s:25:\"prop_formit.fiarhtml_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathMinRange\";a:7:{s:4:\"name\";s:12:\"mathMinRange\";s:4:\"desc\";s:29:\"prop_formit.mathminrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"10\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathMaxRange\";a:7:{s:4:\"name\";s:12:\"mathMaxRange\";s:4:\"desc\";s:29:\"prop_formit.mathmaxrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"100\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"mathField\";a:7:{s:4:\"name\";s:9:\"mathField\";s:4:\"desc\";s:26:\"prop_formit.mathfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"math\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathOp1Field\";a:7:{s:4:\"name\";s:12:\"mathOp1Field\";s:4:\"desc\";s:29:\"prop_formit.mathop1field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"op1\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathOp2Field\";a:7:{s:4:\"name\";s:12:\"mathOp2Field\";s:4:\"desc\";s:29:\"prop_formit.mathop2field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"op2\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"mathOperatorField\";a:7:{s:4:\"name\";s:17:\"mathOperatorField\";s:4:\"desc\";s:34:\"prop_formit.mathoperatorfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"operator\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"saveTmpFiles\";a:7:{s:4:\"name\";s:12:\"saveTmpFiles\";s:4:\"desc\";s:29:\"prop_formit.savetmpfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:18:\"attachFilesToEmail\";a:7:{s:4:\"name\";s:18:\"attachFilesToEmail\";s:4:\"desc\";s:28:\"prop_formit.attachfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"storeAttachments\";a:7:{s:4:\"name\";s:16:\"storeAttachments\";s:4:\"desc\";s:34:\"prop_formit.store_attachments_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(33, 0, 0, 'FormItRetriever', 'Fetches a form submission for a user for displaying on a thank you page.', 0, 6, 0, '/**\n * FormItRetriever\n *\n * Retrieves a prior form submission that was stored with the &store property\n * in a FormIt call.\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\n\nuse Sterc\\FormIt;\n\n$fi = new FormIt($modx, $scriptProperties);\n\n/* setup properties */\n$placeholderPrefix    = $modx->getOption(\'placeholderPrefix\', $scriptProperties, \'fi.\');\n$eraseOnLoad          = $modx->getOption(\'eraseOnLoad\', $scriptProperties, false);\n$redirectToOnNotFound = $modx->getOption(\'redirectToOnNotFound\', $scriptProperties, false);\n\n/* fetch data from cache and set to placeholders */\n$fi->loadRequest();\n$fi->request->loadDictionary();\n\n$data = $fi->request->dictionary->retrieve();\nif (!empty($data)) {\n    /* set data to placeholders */\n    foreach ($data as $k => $v) {\n        /*checkboxes & other multi-values are stored as arrays, must be imploded*/\n        if (is_array($v)) {\n            $data[$k] = implode(\',\', $v);\n        }\n    }\n\n    $modx->toPlaceholders($data, $placeholderPrefix, \'\');\n\n    /* if set, erase the data on load, otherwise depend on cache expiry time */\n    if ($eraseOnLoad) {\n        $fi->request->dictionary->erase();\n    }\n/* if the data\'s not found, and we want to redirect somewhere if so, do here */\n} elseif (!empty($redirectToOnNotFound)) {\n    $modx->sendRedirect($modx->makeUrl($redirectToOnNotFound));\n}\n\nreturn \'\';', 0, 'a:4:{s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:31:\"prop_fir.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"fi.\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"redirectToOnNotFound\";a:7:{s:4:\"name\";s:20:\"redirectToOnNotFound\";s:4:\"desc\";s:34:\"prop_fir.redirecttoonnotfound_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"eraseOnLoad\";a:7:{s:4:\"name\";s:11:\"eraseOnLoad\";s:4:\"desc\";s:25:\"prop_fir.eraseonload_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"storeLocation\";a:7:{s:4:\"name\";s:13:\"storeLocation\";s:4:\"desc\";s:27:\"prop_fir.storelocation_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"cache\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(34, 0, 0, 'FormItIsChecked', 'A custom output filter used with checkboxes/radios for checking checked status.', 0, 6, 0, '/**\n * FormItIsChecked\n *\n * Custom output filter that returns checked=\"checked\" if the value is set\n *\n * @var string $input\n * @var string $options\n * @var modX $modx\n *\n * @package formit\n */\n$output = \' \';\nif ($input == $options) {\n    $output = \' checked=\"checked\"\';\n}\n$input = $modx->fromJSON($input);\nif (!empty($input) && is_array($input) && in_array($options,$input)) {\n  $output = \' checked=\"checked\"\';\n}\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(35, 0, 0, 'FormItIsSelected', 'A custom output filter used with dropdowns for checking selected status.', 0, 6, 0, '/**\n * FormItIsChecked\n *\n * Custom output filter that returns checked=\"checked\" if the value is set\n *\n * @var string $input\n * @var string $options\n * @var modX $modx\n *\n * @package formit\n */\n$output = \' \';\nif ($input == $options) {\n    $output = \' selected=\"selected\"\';\n}\n\n$input = $modx->fromJSON($input);\nif (!empty($input) && is_array($input) && in_array($options,$input)) {\n  $output = \' selected=\"selected\"\';\n}\n\nreturn $output;', 0, 'a:0:{}', '', 0, ''),
(36, 0, 0, 'FormItCountryOptions', 'A utility snippet for generating a dropdown list of countries.', 0, 6, 0, '/**\n * FormItCountryOptions\n *\n * Automatically generates and outputs a country list for usage in forms\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\n\nuse Sterc\\FormIt;\n\n$fi = new FormIt($modx, $scriptProperties);\n\n/** @var fiCountryOptions $co */\n$co = $fi->loadModule(\'fiCountryOptions\', \'countryOptions\', $scriptProperties);\n$co->initialize();\n$co->getData();\n$co->loadPrioritized();\n$co->iterate();\n\nreturn $co->output();', 0, 'a:11:{s:8:\"selected\";a:7:{s:4:\"name\";s:8:\"selected\";s:4:\"desc\";s:23:\"prop_fico.selected_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:18:\"prop_fico.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"fiDefaultOptionTpl\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"useIsoCode\";a:7:{s:4:\"name\";s:10:\"useIsoCode\";s:4:\"desc\";s:25:\"prop_fico.useisocode_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"prioritized\";a:7:{s:4:\"name\";s:11:\"prioritized\";s:4:\"desc\";s:26:\"prop_fico.prioritized_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"optGroupTpl\";a:7:{s:4:\"name\";s:11:\"optGroupTpl\";s:4:\"desc\";s:26:\"prop_fico.optgrouptpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"fiDefaultOptGroupTpl\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"prioritizedGroupText\";a:7:{s:4:\"name\";s:20:\"prioritizedGroupText\";s:4:\"desc\";s:35:\"prop_fico.prioritizedgrouptext_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"allGroupText\";a:7:{s:4:\"name\";s:12:\"allGroupText\";s:4:\"desc\";s:27:\"prop_fico.allgrouptext_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"selectedAttribute\";a:7:{s:4:\"name\";s:17:\"selectedAttribute\";s:4:\"desc\";s:32:\"prop_fico.selectedattribute_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\" selected=\"selected\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:28:\"prop_fico.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"country\";a:7:{s:4:\"name\";s:7:\"country\";s:4:\"desc\";s:22:\"prop_fico.country_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:16:\"[[++cultureKey]]\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"limited\";a:7:{s:4:\"name\";s:7:\"limited\";s:4:\"desc\";s:22:\"prop_fico.limited_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(37, 0, 0, 'FormItStateOptions', 'A utility snippet for generating a dropdown list of U.S. states.', 0, 6, 0, '/**\n * FormItStateOptions\n *\n * Automatically generates and outputs a U.S. state list for usage in forms\n *\n * @var modX $modx\n * @var array $scriptProperties\n *\n * @package formit\n */\nuse Sterc\\FormIt;\n\n$fi = new FormIt($modx, $scriptProperties);\n\n/** @var fiStateOptions $so */\n$so = $fi->loadModule(\'fiStateOptions\', \'stateOptions\', $scriptProperties);\n$so->initialize();\n$so->getData();\n$so->iterate();\n\nreturn $so->output();', 0, 'a:6:{s:8:\"selected\";a:7:{s:4:\"name\";s:8:\"selected\";s:4:\"desc\";s:23:\"prop_fiso.selected_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:18:\"prop_fiso.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"fiDefaultOptionTpl\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"useAbbr\";a:7:{s:4:\"name\";s:7:\"useAbbr\";s:4:\"desc\";s:22:\"prop_fiso.useabbr_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"selectedAttribute\";a:7:{s:4:\"name\";s:17:\"selectedAttribute\";s:4:\"desc\";s:32:\"prop_fiso.selectedattribute_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\" selected=\"selected\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:28:\"prop_fiso.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"country\";a:7:{s:4:\"name\";s:7:\"country\";s:4:\"desc\";s:22:\"prop_fiso.country_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:16:\"[[++cultureKey]]\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, ''),
(38, 0, 0, 'FormItLoadSavedForm', 'Prehook to load previously saved form.', 0, 6, 0, 'use FormItForm;\n\n/**\n * A custom FormIt prehook for fetching saved form data. - Based on FormItSaveForm\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @var FormIt $formit\n * @var fiHooks $hook\n *\n * @package formit\n */\n/* setup default properties */\n// If prehook fails do we continue?\n$return          = $modx->getOption(\'returnValueOnFail\', $formit->config, true);\n$formEncrypt     = $modx->getOption(\'formEncrypt\', $formit->config, false);\n$formFields      = $modx->getOption(\'formFields\', $formit->config, false);\n$fieldNames      = $modx->getOption(\'fieldNames\', $formit->config, false);\n$updateSavedForm = $modx->getOption(\'updateSavedForm\', $formit->config, false); // true, false, \'1\', \'0\', or \'values\'\n\n// If FormIt config says don\'t update, don\'t do it\nif (!$updateSavedForm) {\n    return $return;\n}\n\n// In order to load form values, the user must provide the hash key somehow\n// Usually with a $_GET parameter, but a property in $formit->config will override.\n$formHashKeyField = $modx->getOption(\'savedFormHashKeyField\', $formit->config, \'savedFormHashKey\');\n$formHashKey      = \'\';\nif (isset($_GET[$formHashKeyField])) {\n    $formHashKey = (string) $_GET[$formHashKeyField];\n}\n\nif ($hook->getValue($formHashKeyField)) {\n    $formHashKey = (string) $hook->getValue($formHashKeyField);\n}\n\nif (isset($formit->config[$formHashKeyField])) {\n    $formHashKey = $formit->config[$formHashKeyField];\n}\n\n// our hashing methods return 32 chars. if no valid hash key we\'re done here.\nif (strlen($formHashKey) !== 32) {\n    return $return;\n}\n\n// Try to fetch the saved form\n$savedForm = $modx->getObject(FormItForm::class, [\'hash\' => $formHashKey]);\nif (!$savedForm) {\n    return $return;\n}\n\nif ($formFields) {\n    $formFields = explode(\',\', $formFields);\n    foreach($formFields as $k => $v) {\n        $formFields[$k] = trim($v);\n    }\n}\n\n// Initialize the data array\n// Handle encryption\nif ($formEncrypt) {\n    $encrypted_data = $savedForm->get(\'values\');\n    $data           = $savedForm->decrypt($encrypted_data);\n} else {\n    $data = $savedForm->get(\'values\');\n}\n\nif (is_string($data)) {\n    $data = $modx->fromJSON($data);\n}\n\nif (!is_array($data)) {\n    return $return;\n}\n\n//Change the fieldnames\nif ($fieldNames) {\n    $newDataArray   = [];\n    $fieldLabels    = [];\n    $formFieldNames = explode(\',\', $fieldNames);\n    foreach($formFieldNames as $formFieldName){\n        list($name, $label) = explode(\'==\', $formFieldName);\n        // reverse order from FormItSaveForm snippet\n        $fieldLabels[trim($label)] = trim($name);\n    }\n\n    foreach ($data as $key => $value) {\n        if ($fieldLabels[$key]) {\n            $newDataArray[$fieldLabels[$key]] = $value;\n        } else {\n            $newDataArray[$key] = $value;\n        }\n    }\n\n    $data = $newDataArray;\n}\n\n// Always pass back in the provided hash key\n$data[$formHashKeyField] = $formHashKey;\n\n$hook->setValues($data);\n\nreturn true;', 0, 'a:0:{}', '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `template_type` int NOT NULL DEFAULT '0',
  `content` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text COLLATE utf8mb4_general_ci,
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `preview_file` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`, `preview_file`) VALUES
(1, 1, 0, 'Главная', '', 0, 0, '', 0, '{extends \'file:templates/default.tpl\'}\n{block \'content\'}\n	{if $_modx->resource.introtext || $_modx->resource.content}\n		<section class=\"section main main_background\">\n			<div class=\"container\">\n				<div class=\"main__container\">\n					{if $_modx->resource.introtext}\n						<h1 class=\"main__title\">{$_modx->resource.introtext}</h1>\n					{/if}\n					{if $_modx->resource.content}\n						<div class=\"main__text\">{$_modx->resource.content}</div>\n					{/if}\n				</div>\n			</div>\n			{var $media = json_decode(1 | resource : \'media\', true)}\n			{if $media | count}\n				<div class=\"main__media\">\n					{foreach $media as $social}\n						<a class=\"main__social\" href=\"{$social.url}\">\n							<img class=\"main__icon\" src=\"{$social.icon}\" alt=\"icon\">\n						</a>\n					{/foreach}\n				</div>\n			{/if}\n		</section>\n	{/if}\n	<section class=\"section plus\">\n		<div class=\"plus__container\">\n			<div class=\"plus__item\" style=\"background-image: url(\'{$_modx->resource.image_plus_1}\');\"></div>\n			<div class=\"plus__item plus__item_green\" style=\"background-image: url(\'{$_modx->resource.image_plus_2}\');\">\n				{if $_modx->resource.title_plus_2}\n					<div class=\"plus__title\">{$_modx->resource.title_plus_2}</div>\n				{/if}\n				{if $_modx->resource.text_plus_2}\n					<div class=\"plus__text\">{$_modx->resource.text_plus_2}</div>\n				{/if}\n				{var $plus = json_decode($_modx->resource.plus, true)}\n				{if $plus | count}\n					<div class=\"plus__ul\">\n						{foreach $plus as $li}\n							<div class=\"plus__li\">\n								<img class=\"plus__icon\" src=\"{$li.icon}\" alt=\"icon\">\n								<div class=\"plus__info\">\n									<div class=\"plus__count\">{$li.count}</div>\n									{if $li.desc}\n										<div class=\"plus__desc\">{$li.desc}</div>\n									{/if}\n								</div>\n							</div>\n						{/foreach}\n					</div>\n				{/if}\n			</div>\n			<div class=\"plus__item\" style=\"background-image: url(\'{$_modx->resource.image_plus_3}\');\"></div>\n			<div class=\"plus__item plus__item_beige\" style=\"background-image: url(\'{$_modx->resource.image_plus_4}\');\">\n				{if $_modx->resource.text_plus_4}\n					<div class=\"plus__text\">{$_modx->resource.text_plus_4}</div>\n				{/if}\n			</div>\n		</div>\n	</section>\n	<section class=\"section form\" id=\"form\">\n		<div class=\"container\">\n			<div class=\"form__container\">\n				<div class=\"form__text\">\n					<p>Оставьте свои контакты и персональный менеджер свяженся с Вами</p>\n				</div>\n				<form class=\"form__form\" method=\"POST\" action=\"{$_modx->resource.id | url}#form\">\n					<label class=\"form__item\">\n						<input class=\"form__input\" type=\"text\" name=\"name\" placeholder=\"Ваше имя\">\n					</label>\n					<label class=\"form__item\">\n						<input class=\"form__input\" type=\"tel\" name=\"phone\" placeholder=\"Телефон\" required>\n					</label>\n					<label class=\"form__item\">\n						<input class=\"form__input\" type=\"email\" name=\"email\" placeholder=\"E-mail\">\n					</label>\n					<label class=\"form__item form__item_row\">\n						<textarea class=\"form__textarea\" name=\"comment\" placeholder=\"Комментарий\"></textarea>\n					</label>\n					<label class=\"form__item form__item_accept\">\n						<input class=\"form__checkbox\" type=\"checkbox\" name=\"accept\" value=\"1\" checked required>\n						<div class=\"form__flex\">\n							<div class=\"form__span\"></div>\n							<div class=\"form__label\">Я согласен с условиями обработки персональных данных</div>\n						</div>\n					</label>\n					<label class=\"form__item form__item_button\">\n						<input class=\"button form__button\" type=\"submit\" name=\"form\" value=\"Отправить\">\n					</label>\n				</form>\n				{\'!Formit\' | snippet : [\n					\'submitVar\' => \'form\',\n					\'hooks\' => \'email\',\n					\'emailTpl\' => \'form.email.tpl\',\n					\'emailSubject\' => \'Заявка с контактами\',\n					\'emailFrom\' => $_modx->config.emailsender,\n					\'emailFromName\' => $_modx->config.site_name,\n					\'emailTo\' => 1 | resource : \'emailsender\',\n					\'validate\' => \'phone:required,accept:required\',\n					\'validationErrorMessage\' => \'В форме содержатся ошибки\',\n					\'successMessage\' => \'Заявка успешно отправлена\'\n				]}\n			</div>\n		</div>\n	</section>\n{/block}', 0, 'a:0:{}', 1, 'core/elements/templates/home.tpl', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `caption` varchar(80) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `elements` text COLLATE utf8mb4_general_ci,
  `rank` int NOT NULL DEFAULT '0',
  `display` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `default_text` mediumtext COLLATE utf8mb4_general_ci,
  `properties` text COLLATE utf8mb4_general_ci,
  `input_properties` text COLLATE utf8mb4_general_ci,
  `output_properties` text COLLATE utf8mb4_general_ci,
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_site_tmplvars`
--

INSERT INTO `modx_site_tmplvars` (`id`, `source`, `property_preprocess`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'text', 'tag', 'Слоган', '', 0, 3, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:2:\"30\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(2, 1, 0, 'text', 'phone', 'Телефон', '', 0, 3, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:53:\"^(\\+7|8)[-\\s]?\\d{3}[-\\s]?\\d{3}[-\\s]?\\d{2}[-\\s]?\\d{2}$\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(3, 1, 0, 'text', 'email', 'Электронная почта', '', 0, 3, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:14:\"^\\S+@\\S+\\.\\S+$\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(4, 1, 0, 'text', 'address', 'Адрес', '', 0, 3, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(5, 1, 0, 'text', 'ip', 'ИП', '', 0, 3, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(6, 1, 0, 'text', 'inn', 'ИНН', '', 0, 3, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(7, 1, 0, 'migx', 'media', 'Социальные сети', '', 0, 3, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:\"configs\";s:5:\"media\";s:8:\"formtabs\";s:0:\"\";s:7:\"columns\";s:0:\"\";s:7:\"btntext\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(8, 1, 0, 'image', 'migx_icon', 'Иконка', '', 0, 4, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(9, 1, 0, 'url', 'migx_url', 'Ссылка', '', 0, 4, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(10, 1, 0, 'image', 'image_plus_1', 'Изображение (Блок №1)', '', 0, 5, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:5:\"false\";}', 'a:5:{s:7:\"alttext\";s:0:\"\";s:2:\"id\";s:0:\"\";s:5:\"class\";s:0:\"\";s:5:\"style\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}', 0, ''),
(11, 1, 0, 'image', 'image_plus_2', 'Изображение (Блок №2)', '', 0, 5, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(12, 1, 0, 'image', 'image_plus_3', 'Изображение (Блок №3)', '', 0, 5, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(13, 1, 0, 'image', 'image_plus_4', 'Изображение (Блок №4)', '', 0, 5, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(14, 1, 0, 'text', 'title_plus_2', 'Заголовок (Блок №2)', '', 0, 5, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(15, 1, 0, 'richtext', 'text_plus_2', 'Описание (Блок №2)', '', 0, 5, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(16, 1, 0, 'richtext', 'text_plus_4', 'Описание (Блок №4)', '', 0, 5, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:1:{s:10:\"allowBlank\";s:4:\"true\";}', 'a:0:{}', 0, ''),
(18, 1, 0, 'number', 'migx_number', 'Число', '', 0, 4, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:4:{s:10:\"allowBlank\";s:5:\"false\";s:8:\"minValue\";s:0:\"\";s:8:\"maxValue\";s:0:\"\";s:13:\"allowDecimals\";s:1:\"0\";}', 'a:0:{}', 0, ''),
(19, 1, 0, 'text', 'migx_text', 'Описание', '', 0, 4, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:5:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";s:5:\"regex\";s:0:\"\";s:9:\"regexText\";s:0:\"\";}', 'a:0:{}', 0, ''),
(20, 1, 0, 'migx', 'plus', 'Преимущества', '', 0, 5, 0, '', 0, 'default', '', 'a:0:{}', 'a:7:{s:7:\"configs\";s:4:\"plus\";s:8:\"formtabs\";s:0:\"\";s:7:\"columns\";s:0:\"\";s:7:\"btntext\";s:0:\"\";s:10:\"previewurl\";s:0:\"\";s:10:\"jsonvarkey\";s:0:\"\";s:19:\"autoResourceFolders\";s:5:\"false\";}', 'a:0:{}', 0, ''),
(21, 1, 0, 'email', 'emailsender', 'Электронная почта (для заявок)', '', 0, 3, 0, NULL, 0, 'default', '', 'a:0:{}', 'a:3:{s:10:\"allowBlank\";s:5:\"false\";s:9:\"minLength\";s:0:\"\";s:9:\"maxLength\";s:0:\"\";}', 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int UNSIGNED NOT NULL,
  `tmplvarid` int UNSIGNED NOT NULL DEFAULT '0',
  `documentgroup` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int UNSIGNED NOT NULL,
  `tmplvarid` int UNSIGNED NOT NULL DEFAULT '0',
  `contentid` int UNSIGNED NOT NULL DEFAULT '0',
  `value` mediumtext COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_site_tmplvar_contentvalues`
--

INSERT INTO `modx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`) VALUES
(1, 1, 1, 'Система автоматизации'),
(2, 2, 1, '+7 812 493 85 95'),
(3, 3, 1, 'info@maybesmart.ru'),
(4, 4, 1, 'Санкт-Петербург, Ждановская набережная, 7'),
(5, 5, 1, 'Нагайцев Олег Александрович'),
(6, 6, 1, '470379634080'),
(7, 7, 1, '[{\"MIGX_id\":\"1\",\"icon\":\"public\\/image\\/social-vk.svg\",\"url\":\"https:\\/\\/vk.com\"},{\"MIGX_id\":\"2\",\"icon\":\"public\\/image\\/social-youtube.svg\",\"url\":\"https:\\/\\/youtube.com\"},{\"MIGX_id\":\"3\",\"icon\":\"public\\/image\\/social-telegram.svg\",\"url\":\"https:\\/\\/web.telegram.org\"}]'),
(8, 10, 1, 'public/image/plus-1.svg'),
(9, 11, 1, 'public/image/plus-2.svg'),
(10, 12, 1, 'public/image/plus-3.svg'),
(11, 13, 1, 'public/image/plus-4.svg'),
(12, 14, 1, 'Умный дом'),
(13, 15, 1, '<p>это комфорт безопасность безграничные возможности</p>'),
(14, 16, 1, '<p>Мы стремимся создать максимально комфортные условия для вашего дома</p>'),
(15, 20, 1, '[{\"MIGX_id\":\"1\",\"icon\":\"\\/public\\/image\\/plus-icon-calendar.svg\",\"count\":\"2000\",\"desc\":\"\\u0433\\u043e\\u0434 \\u043e\\u0441\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\"},{\"MIGX_id\":\"2\",\"icon\":\"\\/public\\/image\\/plus-icon-house.svg\",\"count\":\"1000\",\"desc\":\"\\u0441\\u0435\\u043c\\u0435\\u0439 \\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430\\u0448\\u0435\\u0439 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u043e\\u0439\"},{\"MIGX_id\":\"3\",\"icon\":\"\\/public\\/image\\/plus-icon-project.svg\",\"count\":\"20\",\"desc\":\"\\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0432 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0435 \\u043f\\u0440\\u044f\\u043c\\u043e \\u0441\\u0435\\u0439\\u0447\\u0430\\u0441\"}]'),
(16, 21, 1, 'admin@example.com');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int UNSIGNED NOT NULL DEFAULT '0',
  `templateid` int UNSIGNED NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_site_tmplvar_templates`
--

INSERT INTO `modx_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(7, 1, 0),
(10, 1, 0),
(11, 1, 0),
(12, 1, 0),
(13, 1, 0),
(14, 1, 0),
(15, 1, 0),
(16, 1, 0),
(20, 1, 0),
(21, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `service` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System'),
('pdoToolsOnFenomInit', 6, 'pdoTools');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_general_ci NOT NULL,
  `xtype` varchar(75) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'core',
  `area` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('ace.fold_widgets', '1', 'combo-boolean', 'ace', 'general', NULL),
('ace.font_size', '14px', 'textfield', 'ace', 'general', '2024-02-02 19:42:56'),
('ace.grow', '', 'textfield', 'ace', 'general', NULL),
('ace.height', '', 'textfield', 'ace', 'general', NULL),
('ace.html_elements_mime', '', 'textfield', 'ace', 'general', NULL),
('ace.show_invisibles', '0', 'combo-boolean', 'ace', 'general', NULL),
('ace.snippets', '', 'textarea', 'ace', 'general', NULL),
('ace.soft_tabs', '0', 'combo-boolean', 'ace', 'general', '2024-02-02 19:43:13'),
('ace.tab_size', '4', 'textfield', 'ace', 'general', NULL),
('ace.theme', 'monokai', 'textfield', 'ace', 'general', '2024-02-02 19:43:22'),
('ace.word_wrap', '1', 'combo-boolean', 'ace', 'general', '2024-02-02 19:43:25'),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'sibling', 'textfield', 'core', 'site', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'numberfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/help/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'numberfield', 'core', 'authentication', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_db_session', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'numberfield', 'core', 'caching', NULL),
('cache_default', '0', 'combo-boolean', 'core', 'caching', '2024-02-02 20:43:45'),
('cache_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_format', '0', 'numberfield', 'core', 'caching', NULL),
('cache_handler', 'xPDO\\Cache\\xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '0', 'combo-boolean', 'core', 'caching', '2024-02-02 20:46:45'),
('cache_resource_clear_partial', '', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'numberfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2024-02-02 19:40:04'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'numberfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'MODX\\Revolution\\Sources\\modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('emailsender', 'admin@example.com', 'textfield', 'core', 'authentication', '2024-02-02 19:40:04'),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '', 'combo-boolean', 'core', 'manager', NULL),
('enable_template_picker_in_tree', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'numberfield', 'core', 'site', NULL),
('failed_login_attempts', '5', 'numberfield', 'core', 'authentication', NULL),
('feed_modx_news', 'https://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'https://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('formit.attachment.mediasource', '1', 'modx-combo-source', 'formit', 'formit', NULL),
('formit.attachment.path', '', 'textfield', 'formit', 'formit', NULL),
('formit.cleanform.days', '30', 'textfield', 'formit', 'formit', NULL),
('formit.exclude_contexts', 'mgr', 'textfield', 'formit', 'formit', NULL),
('formit.form_encryptkey', 'modx65bd450d6237a9.32647711', 'textfield', 'formit', 'formit', '2024-02-05 16:17:23'),
('formit.max_chars_textfield', '125', 'textfield', 'formit', 'formit', NULL),
('formit.recaptcha_private_key', '', 'textfield', 'formit', 'formit_recaptcha', NULL),
('formit.recaptcha_public_key', '', 'textfield', 'formit', 'formit_recaptcha', NULL),
('formit.recaptcha_use_ssl', '0', 'combo-boolean', 'formit', 'formit_recaptcha', NULL),
('formit.user_email', '', 'textfield', 'formit', 'general', NULL),
('formit.user_name', '', 'textfield', 'formit', 'general', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'numberfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '1', 'combo-boolean', 'core', 'furls', '2024-02-02 19:44:05'),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'russian', 'textfield', 'core', 'furls', '2024-02-02 19:44:18'),
('friendly_alias_translit_class', 'modx.translit.modTransliterate', 'textfield', 'core', 'furls', '2024-02-02 19:42:22'),
('friendly_alias_translit_class_path', '{core_path}components/translit/model/', 'textfield', 'core', 'furls', '2024-02-02 19:42:22'),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '1', 'combo-boolean', 'core', 'furls', '2024-02-02 19:44:34'),
('friendly_urls_strict', '1', 'combo-boolean', 'core', 'furls', '2024-02-02 19:44:38'),
('global_duplicate_uri_check', '1', 'combo-boolean', 'core', 'furls', '2024-02-02 19:44:41'),
('hidemenu_default', '', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'numberfield', 'core', 'system', NULL),
('login_background_image', '', 'textfield', 'core', 'authentication', NULL),
('login_help_button', '', 'combo-boolean', 'core', 'authentication', NULL),
('login_logo', '', 'textfield', 'core', 'authentication', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'numberfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_autotls', '1', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'numberfield', 'core', 'mail', NULL),
('mail_smtp_secure', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'numberfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', 'favicon.ico', 'textfield', 'core', 'manager', NULL),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_logo', '', 'textfield', 'core', 'manager', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'H:i', 'textfield', 'core', 'manager', NULL),
('manager_tooltip_delay', '2300', 'numberfield', 'core', 'manager', NULL),
('manager_tooltip_enable', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'numberfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('passwordless_activated', '', 'combo-boolean', 'core', 'authentication', NULL),
('passwordless_expiration', '3600', 'textfield', 'core', 'authentication', NULL),
('password_generated_length', '10', 'numberfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'numberfield', 'core', 'authentication', NULL),
('pdotools_elements_path', '{core_path}elements/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_cache', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_default', '1', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_modx', '1', 'combo-boolean', 'pdotools', 'pdotools_main', '2024-02-02 19:45:19'),
('pdotools_fenom_options', '', 'textarea', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_parser', '1', 'combo-boolean', 'pdotools', 'pdotools_main', '2024-02-02 19:45:32'),
('pdotools_fenom_php', '1', 'combo-boolean', 'pdotools', 'pdotools_main', '2024-02-02 19:45:50'),
('pdotools_fenom_save_on_errors', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_filter_path', '1', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'numberfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'MODX\\Revolution\\modAccessContext,MODX\\Revolution\\modAccessResourceGroup,MODX\\Revolution\\modAccessCategory,MODX\\Revolution\\Sources\\modAccessMediaSource,MODX\\Revolution\\modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'numberfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('quick_search_in_content', '1', 'combo-boolean', 'core', 'manager', NULL),
('quick_search_result_max', '10', 'numberfield', 'core', 'manager', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resource_static_allow_absolute', '0', 'combo-boolean', 'core', 'static_resources', NULL),
('resource_static_path', '{assets_path}', 'textfield', 'core', 'static_resources', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'alias', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '', 'combo-boolean', 'core', 'system', NULL),
('server_offset_time', '0', 'numberfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'numberfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_samesite', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'MODX\\Revolution\\modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '3.0.4-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('site_name', 'MAYBESMART', 'textfield', 'core', 'site', '2024-02-02 19:46:43'),
('site_start', '1', 'numberfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', '[[%site_unavailable_message]]', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'numberfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('static_elements_html_extension', '.tpl', 'textfield', 'core', 'static_elements', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('tinymcerte.alignment_format', '[{\"title\": \"Left\", \"icon\": \"align-left\", \"format\": \"alignleft\"},{\"title\": \"Center\", \"icon\": \"align-center\", \"format\": \"aligncenter\"},{\"title\": \"Right\", \"icon\": \"align-right\", \"format\": \"alignright\"},{\"title\": \"Justify\", \"icon\": \"align-justify\", \"format\": \"alignjustify\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.blocks_format', '[{\"title\": \"Paragraph\", \"format\": \"p\"},{\"title\": \"Blockquote\", \"format\": \"blockquote\"},{\"title\": \"Div\", \"format\": \"div\"},{\"title\": \"Pre\", \"format\": \"pre\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.browser_spellcheck', '', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.content_css', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.enable_link_list', '1', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.external_config', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.headers_format', '[{\"title\": \"Header 1\", \"format\": \"h1\"},{\"title\": \"Header 2\", \"format\": \"h2\"},{\"title\": \"Header 3\", \"format\": \"h3\"},{\"title\": \"Header 4\", \"format\": \"h4\"},{\"title\": \"Header 5\", \"format\": \"h5\"},{\"title\": \"Header 6\", \"format\": \"h6\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.image_advtab', '1', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.image_class_list', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.inline_format', '[{\"title\": \"Bold\", \"icon\": \"bold\", \"format\": \"bold\"},{\"title\": \"Italic\", \"icon\": \"italic\", \"format\": \"italic\"},{\"title\": \"Underline\", \"icon\": \"underline\", \"format\": \"underline\"},{\"title\": \"Strikethrough\", \"icon\": \"strike-through\", \"format\": \"strikethrough\"},{\"title\": \"Superscript\", \"icon\": \"superscript\", \"format\": \"superscript\"},{\"title\": \"Subscript\", \"icon\": \"subscript\", \"format\": \"subscript\"},{\"title\": \"Code\", \"icon\": \"sourcecode\", \"format\": \"code\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.links_across_contexts', '', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.link_class_list', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.max_height', '500', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.menubar', 'file edit insert view format table tools', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.object_resizing', '1', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.paste_as_text', '', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.plugins', 'autoresize advlist autolink lists charmap print preview anchor visualblocks searchreplace code fullscreen insertdatetime media table paste modxlink modximage', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.relative_urls', '1', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.remove_script_host', '1', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.settings', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.skin', 'modx', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.statusbar', '1', 'combo-boolean', 'tinymcerte', 'tinymcerte.default', NULL),
('tinymcerte.style_formats', '[{\"title\": \"Headers\", \"items\": \"headers_format\"},{\"title\": \"Inline\", \"items\": \"inline_format\"},{\"title\": \"Blocks\", \"items\": \"blocks_format\"},{\"title\": \"Alignment\", \"items\": \"alignment_format\"}]', 'textarea', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.style_formats_merge', '', 'combo-boolean', 'tinymcerte', 'tinymcerte.style_formats', NULL),
('tinymcerte.toolbar1', 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image', 'textfield', 'tinymcerte', 'tinymcerte.toolbar', NULL),
('tinymcerte.toolbar2', '', 'textfield', 'tinymcerte', 'tinymcerte.toolbar', NULL),
('tinymcerte.toolbar3', '', 'textfield', 'tinymcerte', 'tinymcerte.toolbar', NULL),
('tinymcerte.valid_elements', '', 'textfield', 'tinymcerte', 'tinymcerte.default', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '', 'combo-boolean', 'core', 'manager', NULL),
('unauthorized_page', '1', 'numberfield', 'core', 'site', NULL),
('upload_files', 'txt,html,htm,xml,js,js.map,css,scss,less,css.map,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,webp,odt,ods,odp,odb,odg,odf,md,ttf,woff,woff2,eot,tpl', 'textfield', 'core', 'file', '2024-02-02 19:48:05'),
('upload_file_exists', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz,webp', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '52428800', 'numberfield', 'core', 'file', '2024-02-02 19:40:04'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('upload_translit', '1', 'combo-boolean', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '1', 'combo-boolean', 'core', 'furls', '2024-02-02 19:44:44'),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '1', 'combo-boolean', 'core', 'furls', '2024-02-02 19:44:46'),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2024-02-02 19:40:04'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2024-02-02 19:40:27'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.30.html ', 'textfield', 'core', 'manager', NULL),
('which_editor', 'TinyMCE RTE', 'modx-combo-rte', 'core', 'editor', '2024-02-02 19:42:17'),
('which_element_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2024-02-02 19:42:00'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int UNSIGNED NOT NULL DEFAULT '0',
  `provider` int UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext COLLATE utf8mb4_general_ci,
  `manifest` text COLLATE utf8mb4_general_ci,
  `attributes` mediumtext COLLATE utf8mb4_general_ci,
  `package_name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_general_ci,
  `version_major` smallint UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `release_index` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_transport_packages`
--

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('ace-1.9.3-pl', '2024-02-02 22:40:50', '2024-02-02 19:42:00', '2024-02-02 22:42:00', 0, 1, 1, 0, 'ace-1.9.3-pl.transport.zip', NULL, 'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:271:\"--------------------\nExtra: Ace\n--------------------\nSince: March 29th, 2012\nAuthor: Danil Kostin <danya.postfactum@gmail.com>\nLicense: GNU GPLv2 (or later at your option)\n\nIntegrates Ace Code Editor into MODx Revolution.\n\nPress Ctrl+Alt+H to see all available shortcuts.\";s:9:\"changelog\";s:4624:\"Changelog for Ace integration into MODx Revolution.\n\nAce 1.9.3 [15.05.2022]\n====================================\n- Updated: Move settings into an own file [#12]\n- Fixed: Ace TV input [#11]\n- Fixed: Prevent PHP warning: Undefined variable $field [#10]\n\nAce 1.9.2\n====================================\n- Updated: Corrected search form [#8]\n- Added: TV input Ace field [#9]\n\nAce 1.9.1\n====================================\n- Fixed: Changed fonts\n- Updated: emmet.js with the support flex css styles and many other combinations\n\nAce 1.9.0\n====================================\n- Added: autodetecting file mode by modelist.js [#7]\n- Added: new modes from ace-builds for version 1.2.0\n\nAce 1.8.0\n====================================\n- Added: autocompletion for php functions.\n\nAce 1.7.0\n====================================\n- Added: new system setting \"ace.grow\".\n- Added: new system setting \"ace.html_elements_mime\".\n\nAce 1.6.5\n====================================\n- Added: \"Twig\" syntax for support of Twig in chunks.\n- Changed: Plugin is not static anymore.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting \"compress_js\".\n\nAce 1.6.0\n====================================\n- Added: \"Smarty\" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: \"GitHub\" theme\n- Added: Support of html5 drag\'n\'drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing \"OnFileEditFormPrerender\" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag\'n\'drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit\";s:9:\"signature\";s:12:\"ace-1.9.3-pl\";s:6:\"action\";s:26:\"Workspace/Packages/Install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:40:\"/workspace/package/install/ace-1.9.3-pl/\";s:14:\"package_action\";i:0;}', 'Ace', 'a:38:{s:2:\"id\";s:36:\"99066886-9dc8-4443-85ae-85953c2cc1b9\";s:7:\"package\";s:36:\"9906673c-127f-4765-ad53-d741a99978c1\";s:12:\"display_name\";s:12:\"ace-1.9.3-pl\";s:4:\"name\";s:3:\"Ace\";s:7:\"version\";s:5:\"1.9.3\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"9\";s:13:\"version_patch\";s:1:\"3\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:16:\"danya_postfactum\";s:11:\"description\";s:376:\"<p>New feature: modx tag code autocompletion! Press Ctrl+Space to get code suggestions with descriptions.</p><p>Works for snippets, chunks, system settings, tvs and resource fields, filters and properties.</p><p>Property sets, lexicon entries are not supported. Unfortunately, I have no idea how to retrieve chunk-specific placeholders, so there is no placeholder support.</p>\";s:12:\"instructions\";s:341:\"<p></p><p>Install via Package Management.</p><p>Set editor theme you wish in system settings (change namespace to \"ace\").</p><p>If you want to use this editor for resources, just set system option <i>use_editor</i> to <b>false</b> (global usage), or <i>richtext</i> setting of certain resource to <b>false</b> (specific usage).</p><p></p>\";s:9:\"changelog\";s:4571:\"Ace 1.9.3 [15.05.2022]\n====================================\n- Updated: Move settings into an own file [#12]\n- Fixed: Ace TV input [#11]\n- Fixed: Prevent PHP warning: Undefined variable $field [#10]\n\nAce 1.9.2\n====================================\n- Updated: Corrected search form [#8]\n- Added: TV input Ace field [#9]\n\nAce 1.9.1\n====================================\n- Fixed: Changed fonts\n- Updated: emmet.js with the support flex css styles and many other combinations\n\nAce 1.9.0\n====================================\n- Added: autodetecting file mode by modelist.js [#7]\n- Added: new modes from ace-builds for version 1.2.0\n\nAce 1.8.0\n====================================\n- Added: autocompletion for php functions.\n\nAce 1.7.0\n====================================\n- Added: new system setting \"ace.grow\".\n- Added: new system setting \"ace.html_elements_mime\".\n\nAce 1.6.5\n====================================\n- Added: \"Twig\" syntax for support of Twig in chunks.\n- Changed: Plugin is not static anymore.\n\nAce 1.6.4\n====================================\n- Fixed: Support of emmet in smarty mode. Again.\n\nAce 1.6.3\n====================================\n- Fixed: Support of emmet in smarty mode.\n\nAce 1.6.2\n====================================\n- Fixed: Editor mode handling.\n- Added: \"Markdown\" syntax for mime type \"text/x-markdown\".\n\nAce 1.6.1\n====================================\n- Fixed : Work with enabled system setting \"compress_js\".\n\nAce 1.6.0\n====================================\n- Added: \"Smarty\" syntax for support of Fenom in chunks.\n- Updated: Ace to version 1.2.0.\n\nAce 1.5.1\n====================================\n- Fixed: Bug with narrowing of the textarea.\n\nAce 1.5.0\n====================================\n- Changed: Assets are moved back to /assets/\n- Fixed: MODx tag completions (was completely broken)\n- Added: Editor height setting\n\nAce 1.4.3\n====================================\n- Added: MODx tag completions (Ctrl+Space)\n- Fixed: Issue caused AjaxManager (MODx Manager speed booster plugin) tree drag\'n\'drop bug\n\nAce 1.4.2\n====================================\n- Added: Undo coalescing\n- Changed: Mac fullscreen command is bound to Command+F12\n- Added: Drag delay (allow to start new selection inside current one) for Mac\n- Fixed: Use file extension of static chunks to detect code syntax\n\n\nAce 1.4.1\n====================================\n- Fixed: Tab handling\n- Fixed: Emmet shortcut listing by Ctr+Alt+H\n- Added: Expandable snippets support (see ace.snippets setting)\n- Added: Emmet wrap_with_abbreviation command (Alt+W)\n\nAce 1.4.0\n====================================\n- Added: Emmet (aka Zen Coding) support\n- Added: Terminal dark theme\n- Added: Hotkey table (Ctrl+Alt+H)\n- Fixed: Resource overview fatal error\n- Changed: Assets are moved to /manager/assets/components/\n\nAce 1.3.3\n====================================\n- Added: PHP live syntax check\n- Added: Chaos dark theme\n- Added: Setting show_invisibles\n\n\nAce 1.3.2\n====================================\n- Fixed: The bug while installing the Ace\n- Fixed: Broken word_wrap setting\n- Added: Tab settings (tab size, soft tab)\n- Added: Now completele compatible with AjaxManager extra\n\n\nAce 1.3.1\n====================================\n- Changed: Plugin content now is stored in static file\n\n\nAce 1.3.0\n====================================\n- Added: German translation\n- Added: MODx tags highlighting\n- Added: Ambiance and xcode themes\n- Added: less/scss syntax highlighting\n- Added: Fullwindow mode (Ctrl + F11)\n- Changed: Editor now ignores `wich_editor` setting. Set `use_editor` to false to use ACE for Resources.\n\n\nAce 1.2.1\n====================================\n- Changed: Assets are moved to manager folder\n- Added: Font size setting\n- Added: \"GitHub\" theme\n- Added: Support of html5 drag\'n\'drop (accepting of dropped text)\n- Added: XML / HTML tag autoclosing\n- Fixed: broken en lexicon and php 5.3 incompatibility\n\n\nAce 1.2.0\n====================================\n- Removed: Some unnecessary options\n- Changed: Editor options are moved to system settings\n- Fixed: Multiple little editor bugs\n- Added: Add missing \"OnFileEditFormPrerender\" event to MODx\n- Added: Multiline editing\n- Added: Advanced find/replace window\n\n\nAce 1.1.0\n====================================\n- Fixed: Fatal error on document create event\n- Fixed: Changing of properties has no effect\n- Added: File edition support\n- Added: MODx tree elements drag\'n\'drop support\n- Added: Auto-assigning which_element_editor to Ace\n\n\nAce 1.0.0\n====================================\n- Added: Plugin properties to adjust how Ace behaves\n- Initial commit\";s:9:\"createdon\";s:25:\"2022-05-15T03:38:35+00:00\";s:9:\"createdby\";s:10:\"ibochkarev\";s:8:\"editedon\";s:25:\"2023-05-04T19:23:53+00:00\";s:10:\"releasedon\";s:25:\"2022-05-15T03:38:35+00:00\";s:9:\"downloads\";s:6:\"361244\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:4:\"true\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:36:\"9861b09b-7176-455b-a9c1-bb7728924ad8\";s:8:\"supports\";s:3:\"2.0\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99066886-9dc8-4443-85ae-85953c2cc1b9&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";s:9:\"signature\";s:12:\"ace-1.9.3-pl\";s:11:\"supports_db\";s:0:\"\";s:16:\"minimum_supports\";s:3:\"2.0\";s:9:\"breaks_at\";s:5:\"100.0\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:36:\"99066886-9dc8-4443-85ae-85953c2cc1b9\";s:7:\"version\";s:36:\"99066886-9dc8-4443-85ae-85953c2cc1b9\";s:8:\"filename\";s:26:\"ace-1.9.3-pl.transport.zip\";s:9:\"downloads\";s:5:\"26619\";s:6:\"lastip\";s:12:\"94.46.148.33\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99066886-9dc8-4443-85ae-85953c2cc1b9&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";}s:17:\"package-signature\";s:12:\"ace-1.9.3-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:0:\"\";}', 1, 9, 3, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('formit-5.0.1-pl', '2024-02-05 19:15:45', '2024-02-05 16:17:27', '2024-02-05 19:17:27', 0, 1, 1, 0, 'formit-5.0.1-pl.transport.zip', NULL, 'a:10:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:9:\"changelog\";s:19622:\"Changelog for FormIt.\n\nFormIt 5.0.1\n====================================\n- Fix Spam hook for MODX3 (PR#268, thanks to byEmma)\n- Fix FormItSaveForm hook (#274)\n- Fix pdoTools/pdoFetch checks, replace getService with modx->services (#271).\n- Fix xpdo class references for MODX3.\n\nFormIt 5.0.0\n====================================\n- MODX3 refactor\n\nFormIt 4.2.7\n====================================\n- Use server_offset_time for grid in manager (PR#219)\n- Fix fatal error when empty responce in cronjob (PR#230)\n- Add RU (PR#245) and IT (PR#257) translation of country list\n- Change stopforumspam API URL (PR#248)\n- Fix property for getTableName in resolver (PR#247)\n\nFormIt 4.2.6\n====================================\n- Add support for UTF-8 when exporting (PR#221)\n- Move limit from foreach to query in migration class (PR#236)\n- Remove unnecessary mail->reset from autoresponder hook (PR#240)\n- Add Ukrainian lexicon + some changes to RU and EN lexicons (PR#242)\n- Update Composer autoloader for newer Composer versions (PR#243)\n\nFormIt 4.2.5\n====================================\n- Added new properties to email hook (#229, thanks to @jako)\n- emailSelectTo, emailSelectToName, emailSelectField\n\nFormIt 4.2.4\n====================================\n- Fix export form select width (#218)\n- Fix limit of form filter (#206)\n- Fix path to clean processor for cronjob (#215, thanks to @bennyb)\n- Fix ability to export all forms (#210, thanks to @JoshuaLuckers)\n- Fix PHP notice \'Only variables should be assigned by reference\' in Hook.php (#212, thanks to @intersel)\n- Updated Russian translation (#208, thanks to @webinmd)\n\nFormIt 4.2.3\n====================================\n- FormIt 4.2.0 release bug - Fix migration of forms with encryption\n\nFormIt 4.2.2\n====================================\n- FormIt 4.2.0 release bug - Altering tables on update (#203)\n\nFormIt 4.2.1\n====================================\n- FormIt 4.2.0 release bug (#202)\n\nFormIt 4.2.0\n====================================\n- Bug on hasHook() fixed (#182, #181, #170, #193)\n- ExtJS refactored for faster and better UI/UX\n- IP number added to the grid (#194)\n- Better form view with textfields and textareas (#136)\n- Remove multiple forms (#143)\n- Search by IP (and context menu option to view all forms from 1 IP)\n- New permissions added\n- formit_encryptions to encrypt/decrypt forms\n- Context awereness, an user can only see the forms with the contexts that the user has access to.\n- Swedish translation updated\n- All other language files checked and filled with English strings\n- Formit deprecation notice in 2.7.0dev bug fixed (#190)\n\nFormIt 4.1.2\n====================================\n- Fix spam hook for better spam prevention thanks to Kristoffer Karlström\n- Fix FormItLoadSavedForm for encrypted forms\n\nFormIt 4.1.1\n====================================\n- Added new hook \"renderHooks\", which triggers just before rendering the form\n\nFormIt 4.1.0\n====================================\n- This release is made possible thanks to Bert Kooij / Census.nl. Thanks!\n- Added new button in Manager page for manually removing forms.\n- Added new system setting for the default amount of days.\n- Added cronjob task for automatically deletion of old forms.\n\nFormIt 4.0.1\n====================================\n- Add option to specify csv delimiter for form export\n- Add GDPR compliant attachment handling (#154) - Thanks to @wax100\n- Allow empty isDate validator (PR#164) - Thanks to JoshuaLuckers\n- Fix bug with multiple forms on one page (#160)\n- Fix modx->log calls in various classes (#161)\n- Fix setting redirectParams variable (#165)\n\nFormIt 4.0.0\n====================================\n- Move formit base classes to /src/ folder and add namespace\n- Update existing classes to extend new classes\n- Update all snippets to use modx getService\n- Move FormItAutoResponder and FormItSaveForm logic to classes\n- Add helper functions for all FormIt properties\n- Set defaultEngine to InnoDB in mysql schema\n- Fix PHP7 error in default email output (PR#156)\n- Updated German lexicons (PR#150)\n- Add \'Form\' column to form export (PR#149)\n\nFormIt 3.0.4\n====================================\n- Fix checkbox values not showing in email\n\nFormIt 3.0.3\n====================================\n- Fix FormItSaveForm to allow multiple fields with same fieldName\n- Add \'saveTmpFiles\' FormIt snippet property to enable/disable saving files to tmp directory\n- Remove list() function from formitsaveform snippet for better PHP version compatibility (#98)\n- Fix PHP7 by-reference errors (#98)\n- Replace ereg() functions with preg_match() for PHP compatibility (#98)\n- Increase precision for FormItForm \'ip\' field to allow for IPV6 addresses (#135)\n- Fix issue where in some cases fields are not correctly saved in FormItForm (#92)\n- Optimize FormItForm export class for better performance (#120)\n- Add \'attachFilesToEmail\' property to control if files are added as attachment to email (#122)\n\nFormIt 3.0.2\n====================================\n- Fix encryption in formitsaveform snippet to save correct encryption_type\n- Fix bug in forms grid when decrypting encrypted forms fail\n- Fix migration to check if decrypted data is correct\n\nFormIt 3.0.1\n====================================\n- Store file uploads in tmp folder to prevent file uploads getting lost in multistep forms\n- Add checks for OpenSSL in classes and encryption CMP tab\n- Add method_exists check to plugin to prevent errors when method not exists\n- Update context-menu in forms-encryption grid to show only encrypt or decrypt\n- Set placeholders for file upload $_FILES array\n- Add option to FormItCountryOptions snippet to limit country list to selected countries only (PR#123) - thanks to gadgetto\n\nFormIt 3.0.0\n====================================\n- PLEASE NOTE: THIS UPDATE CONTAINS A MIGRATION SCRIPT FOR ENCRYPTED FORMS - Read more about it at https://github.com/Sterc/FormIt\n- Mcrypt encryption/decryption methods replaced with openssl due to mcrypt being deprecated in PHP 7.1\n- Add default file-based chunks as objects\n- Add support for pdoTools getChunk method, thanks to soulcreate and bezumkin (PR#89)\n- Add French countries for FormItCountryOptions, thanks to beau-gosse (PR#109)\n- Add Dutch countries for FormItCountryOptions, thanks to visvoer (PR#110)\n- Add extjs stateful parameters to CMP tabs\n\nFormIt 2.2.11\n====================================\n- Added storeLocation property to FormIt and FormItRetriever. (issue #95, PR #105#106#107)\n- Changed default behaviour of emailReplyTo parameter to fallback to email field in form (issue #101)\n- Changed math hook to store values in session, preventing easy bypass of math hook (issue #64)\n- Add GPM config\n- Fix bug with multiple file upload (PR #104)\n- Add \'hash\' field to FormItSaveForm to allow updating of previously saved forms (PR #94)\n- Add FormItLoadSavedForm snippet to retrieve saved forms (PR #94)\n- Fix for export with datefilter (issue #96, PR #97)\n- Add fiarRequired property (PR#83)\n- Update resolver to check for current version to prevent errors on upgrade\n- Add system setting for form_encryptkey, to not rely on site_id (issue #68)\n- Fix saved forms export when using encrypted forms (issue #48)\n\nFormIt 2.2.10\n====================================\n- Merged PR#58: Added BOM for Excel to understand UTF-8 non-latin symbols properly. (thanks to govza)\n- Merged PR#73: JSON output options for errors and hooks\n- Merged PR#79: Create German lexicon for FormIt-CMP (thanks to sebastian-marinescu)\n\nFormIt 2.2.9\n====================================\n- Merging PR#74 from Jako which solves multiple issues.\n- Fix XSS vulnerabilities\n- Javascript code cleanup\n- Fix empty math operator after form submission #d782c29\n\nFormIt 2.2.8\n====================================\n- Fixed export limit and added form dropdown paging #60\n- Fixed typo property lexicons #57\n- Added templates path to config #63\n- Added loading lexicons in ficountryoptions class #21\n- Added ability to dynamically set formName by setting placeholder inside formName equal to an existing form field key #45\n\nFormIt 2.2.7\n====================================\n- Optimised export\n\nFormIt 2.2.6\n====================================\n- Fixed empty placeholder for file field in autoresponder\n\nFormIt 2.2.5\n====================================\n- Fixed creating table on update\n- Added new tab inside CMP for managing encryption\n- Added missing br on auto emailTpl\n\nFormIt 2.2.4\n====================================\n- Fixed bug inside FormItSaveForm and PR #43\n\nFormIt 2.2.3\n====================================\n- Added encryption to saved forms\n- Added formname to grid\n- Saved form is now returned from the hook\n- Export unlimited items\n- Add RU translation\n\nFormIt 2.2.2\n====================================\n- Added CMP for the saved forms\n- Fixed whitespace PR on required checkboxes\n\nFormIt 2.2.1\n====================================\n- Updated numbers generation for math captcha #5\n- German translation #10\n- Added missing formit.not_regexp lexicon #15\n- Specify explicitely return-path fixes #19 #20\n- fix addAttachment() typo #23\n- Fixed typo in adding of the attachments #24\n- Add the possibility of redirectTo=`formfield` #26\n- Added attachments for auto-reply and Added ability to use @CODE as tpl #29\n- Update snippet.formitisselected.php #12\n- Canadian options for FormitStateOptions\n\nFormIt 2.2.0\n====================================\n- [#8382] Prevent issue with checkboxes/radios causing text-parsing problems with required validator\n- Fixed issue with custom error message for vTextPasswordConfirm not respected\n- [#9457] Fixed issue with commas in values causing errors with FormItIsChecked & FormItIsSelected\n- [#9576] Add ability to translate country options\n- Add check for preHook errors before processing postHooks\n- Add option, defaulting true, to trim spaces from sides of values before validation\n- [#8785] Fix E_STRICT error in fiDictionary\n\nFormIt 2.1.2\n====================================\n- Various language updates\n- [#7250] Fix issue with 0 not passing :required filter\n\nFormIt 2.1.1\n====================================\n- [#8204] Fix issue with FormItAutoResponder and processing of MODX tags\n\nFormIt 2.1.0\n====================================\n- [#7620] Allow for MODX tags in email templates, as well as pass-through of snippet properties to tpl\n- [#7502] Add ability to find type of hook by using $hook->type\n- [#8151] More sanity checking for FormItAutoResponder and replyTo addresses\n- Fix useIsoCode issue in FormItCountryOptions\n- Update German translation\n- Enhance validation templating for validationErrorBulkTpl\n- Add &country option to FormItStateOptions to allow loading of non-US states (currently us/de)\n\nFormIt 2.0.3\n====================================\n- Update Czech translation\n- Fix issue with French accents in translation\n- [#6021] Refactor Russian reCaptcha translations\n- [#6618] Standardize XHTML in reCaptcha usage\n\nFormIt 2.0.2\n====================================\n- [#4864] Fix issue with isNumber not allowing blank fields\n- [#5404] Fix issues with checkboxes and array fields in FormItAutoResponder\n- [#5269] Fix issues with checkboxes in various forms in emails\n- [#5792] Update reCaptcha URLs\n\nFormIt 2.0.1\n====================================\n- [#5525] Add &allowFiles property, that when set to 0, prevents file submissions on form\n- [#5484] Fix issue with double validation error spans\n- Fix issue where config was not passed to hooks\n- Update German translation\n\nFormIt 2.0.0\n====================================\n- [#3514] Add ability to customize validator error messages per FormIt form and per field\n- [#4705] Add regexp validator\n- [#5454] Fix issue with customValidators property in 2.0.0-rc2\n- Major reworking of main FormIt script to be OOP\n- Add over 150 unit tests to prevent regression\n- [#5388], [#5240] Fix issue with FormItCountryOptions and &useIsoCode\n- Fix issue with FormItStateOptions and &useAbbr\n- [#5267] Fix issue with FormItRetriever and array fields\n\nFormIt 1.7.0\n====================================\n- Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup\n- Add missing property translations for FormItStateOptions snippet\n- Fix small issue with stored values after validation of fields\n- Add FormItStateOptions snippet for easy U.S. state dropdowns\n- Add FormItCountryOptions snippet for easy country dropdowns\n- [#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values\n- Fix issue with bracketed field names being added as extra fields post-validation with . prefix\n\nFormIt 1.6.0\n====================================\n- [#4708] Add support for bracketed fields, such as contact[name]\n- [#5038] Fix uninitialized variable warnings in reCaptcha service\n- [#4993] Add Italian translation and fix recaptcha links\n- Fix issue where fields could be removed via DOM from form and be bypassed\n- Add &emailMultiSeparator and &emailMultiWrapper for handling display of checkboxes/multi-selects in email hook\n\nFormIt 1.5.6\n====================================\n- [#4564] Fix redirectTo with non-web contexts\n\nFormIt 1.5.5\n====================================\n- [#4168] Add emailConvertNewlines property for handling newlines in HTML emails\n- [#4057] Prevent math hook from generating similar numbers\n- [#4302] Cleanups to FormItAutoResponder snippet\n- [#3991] Fix issue with checkbox values in emails\n\nFormIt 1.5.4\n====================================\n- Fix issue with math hook where error placeholders were incorrect\n- Fix issue where emailHtml property was not respected in email hook\n- Fix issue where hooks were not passed customProperties array\n- [#51] Allow blank fields to be passed with :email validator\n- [#55] Allow all fields to be accessed in custom validators\n\nFormIt 1.5.3\n====================================\n- [#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one\n- [#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails\n- [#53] Fix bug that prevented recaptcha options from working\n- Add a generic validation error placeholder in FormIt to allow for general messages\n- [#50] Trim each hook specification in hooks calls\n- [#49] Ensure reCaptcha service instance is unique for each FormIt instance\n- [#47] Ensure email validator checks for empty string\n- [#42] Can now include field names in error strings via `field` placeholder\n- [#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked\n- [#37] Fix allowTags validator to work, and work with parameters encapsulated by ^\n\nFormIt 1.5.2\n====================================\n- Fixed security vulnerability\n- Added math hook, allowing anti-spam math field measure\n- Added more debugging info to email hook\n\nFormIt 1.5.1\n====================================\n- Fixed issue where &store was not respecting values set in post-hooks\n- Redirect hook now redirects *after* all other hooks execute\n\nFormIt 1.5.0\n====================================\n- Fixed bug with redirectParams not parsing placeholders in the params\n- Added redirectParams property, which allows a JSON object of params to be passed when using redirect hook\n- Added spamCheckIp property, defaults to false, to check IP as well in spam hook\n- Fixed incorrect default param for fiarSender\n- Fixed error reporting for FormItAutoResponder\n- Added sanity checks to form attachments when dealing with missing names\n- Fixed invalid offset error in checkbox validation\n- Added recaptchaJS to allow for custom JS overriding of reCaptcha options var\n\nFormIt 1.4.1\n====================================\n- Added sanity check for emailHtml property on email hook\n- Added sanity check for replyto/cc/bcc emails on email hook\n- Added ability to change language via &language parameter\n\nFormIt 1.4.0\n====================================\n- Fixed bug with recaptcha and other hooks error display messages\n- Introduced &validate parameter for more secure validation parameters to prevent POST injection\n- Added FormItIsChecked and FormItIsSelected custom output filters for easier checkbox/radio/select handling of selected values\n- Added &placeholderPrefix for FormIt snippet, defaults to `fi.`\n\nFormIt 1.3.0\n====================================\n- Fixed issue with isNumber validator\n- Added FormItRetriever snippet to get data from a FormIt submission for thank you pages\n- Added extra API methods for custom hooks for easier data grabbing\n- Added FormItAutoResponder snippet to use as a custom hook for auto-responses\n- Added &successMessage and &successMessagePlaceholder properties for easier success message handling\n- Fixed ordering for &emailFrom property\n- Added width/height for reCaptcha, however, reCaptcha APIs prevent resizing via calls\n\nFormIt 1.2.1\n====================================\n- Added recaptchaTheme property, which allows theming of reCaptcha hook\n\nFormIt 1.2.0\n====================================\n- Added preHooks property to allow for custom snippets to pre-fill fields\n- Added clearFieldsOnSuccess property to clear fields after a successful form submission without a redirect\n- Allow placeholders of fields in all email properties\n- Added customValidators property to FormIt snippet to restrict custom validators to only specified validators to prevent brute force snippet loading\n- Added fiValidator::addError for easier error loading for custom validators\n- Added German translation\n\nFormIt 1.1.7\n====================================\n- Added bcc and cc properties for email hook\n\nFormIt 1.1.6\n====================================\n- i18n of Snippet properties\n- Added emailReplyToName and emailReplyTo properties for email hook\n- Removed SMTP settings as those are now in Revo\n- Fixed bug in html emails where linebreaks were being ignored\n- Added islowercase and isuppercase validators\n- Added multibyte support to validators\n\nFormIt 1.1.5\n====================================\n- Added Russian translation\n- Updated copyright information\n\nFormIt 1.1.4\n====================================\n- Fixed bug with isDate check\n- Migrated FormIt to Git\n- Fixed bug that caused validators to not fire\n- Fixed bug where custom validators were wonky, added \'errors\' references to custom hooks/validators\n- [#ADDON-147] Added support for validation and emailing of file fields\n- Added stripTags to all fields by default (unless \'allowTags\' hook is passed\') to prevent XSS\n- Added in missing settings\n- Added reCaptcha support via the recaptcha hook\n- Adjusted copyright information to reflect current year\n\nFormIt 1.0\n====================================\n- Fixed bug with emailFrom property getting overwritten\n- [#ADDON-122] Fixed incorrect message in spam lexicon item\n- Added \'spam\' hook that utilizes StopForumSpam spam filter. Will filter the fields in the property &spamEmailFields\n- Ensure hooks errors are set as placeholders\n- Aded fi.success placeholder to be set on a successful form submission if no redirect hook is specified\n- Added default to emailTpl property so that it is now no longer required. Will send out email with just field names and values.\n- Added Dutch translation\n- Added missing formit.contains lexicon entry\n- Fixed possible loophole with $this->fields and referencing in multiple hooks\n- Fixed bug on hooks due to !== and != difference\n- Added SMTP support to FormIt email hook\n- Fixed bug with emailFrom in email hook\n- Added emailUseFieldForSubject property to FormIt snippet\n- Fixed bug on email hook where if subject was passed through form, it wouldn\'t set it as email subject\n- Added changelog\n\";s:13:\"setup-options\";s:33:\"formit-5.0.1-pl/setup-options.php\";s:9:\"signature\";s:15:\"formit-5.0.1-pl\";s:6:\"action\";s:26:\"Workspace/Packages/Install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:43:\"/workspace/package/install/formit-5.0.1-pl/\";s:9:\"user_name\";s:0:\"\";s:10:\"user_email\";s:0:\"\";s:14:\"package_action\";i:0;}', 'FormIt', 'a:38:{s:2:\"id\";s:36:\"9906688a-b5c9-4a88-8fc7-31b125f64fd8\";s:7:\"package\";s:36:\"99066728-0897-4fc5-a5ae-5288ca848cbf\";s:12:\"display_name\";s:15:\"formit-5.0.1-pl\";s:4:\"name\";s:6:\"FormIt\";s:7:\"version\";s:5:\"5.0.1\";s:13:\"version_major\";s:1:\"5\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"1\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:5:\"sterc\";s:11:\"description\";s:1367:\"<p>FormIt is a dynamic form processing Snippet for MODX Revolution. It handles form creation, submission, performing validation and followup actions like sending an email and auto replies. Key features:</p><p></p><ul><li>Automatic validation and custom validator options</li><li>Auto reply to visitor + email to owner(s)</li><li>Multiple attachments</li><li>Submitted forms can be automatically saved and encrypted in the Formit component</li><li>Submitted forms can be exported to CSV, based on filters</li><li>Redirect to thank-you pages for optimal tracking in your analytics software (e.g. Google Analytics funnels)</li><li>Add your own hooks as Snippets to handle forms dynamically</li><li>Spam protection</li><li>Dynamic country/state dropdown lists</li><li>GDPR compliant</li></ul><p></p>\n<p>Official documentation here: <a href=\"http://rtfm.modx.com/display/ADDON/FormIt\" style=\"line-height: 1.5;\">http://rtfm.modx.com/display/ADDON/FormIt</a></p>\n\n**Free Extra**  \nThis is a free extra and the code is publicly available for you to change. The extra is being actively maintained and you\'re free to put in pull requests which match our roadmap. Please create an issue if the pull request differs from the roadmap so we can make sure we\'re on the same page.\n\nNeed help? <a href=\"mailto:service@sterc.com\">Approach our support desk for paid premium support.</a>\";s:12:\"instructions\";s:508:\"<p>Install via Package Management.</p><p><b>Updating to 3.0?</b></p><p>We\'ve released FormIt 3.0 in order to avoid issues with Mcrypt in the near future, since it will be deprecated in PHP 7.2. Mcrypt has therefore been replaced by OpenSSL encryption.</p><p>After updating to 3.0.0, you should refresh the page and notice a red bar on the top of your manager. From there, you can initiate the migration process, which will decrypt your saved forms using Mcrypt and immediately encrypt them using OpenSSL.</p>\";s:9:\"changelog\";s:242:\"<ul>\n<li>Fix Spam hook for MODX3 (PR#268, thanks to byEmma)</li>\n<li>Fix FormItSaveForm hook (#274)</li>\n<li>Fix pdoTools/pdoFetch checks, replace getService with modx->services (#271).</li>\n<li>Fix xpdo class references for MODX3.</li>\n</ul>\";s:9:\"createdon\";s:25:\"2022-08-19T12:44:23+00:00\";s:9:\"createdby\";s:5:\"sterc\";s:8:\"editedon\";s:25:\"2023-05-04T19:23:55+00:00\";s:10:\"releasedon\";s:25:\"2022-08-19T12:44:23+00:00\";s:9:\"downloads\";s:6:\"569859\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:4:\"true\";s:8:\"featured\";s:4:\"true\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:36:\"9861b09b-7176-455b-a9c1-bb7728924ad8\";s:8:\"supports\";s:3:\"3.0\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=9906688a-b5c9-4a88-8fc7-31b125f64fd8&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";s:9:\"signature\";s:15:\"formit-5.0.1-pl\";s:11:\"supports_db\";s:0:\"\";s:16:\"minimum_supports\";s:3:\"3.0\";s:9:\"breaks_at\";s:5:\"100.0\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:36:\"9906688a-b5c9-4a88-8fc7-31b125f64fd8\";s:7:\"version\";s:36:\"9906688a-b5c9-4a88-8fc7-31b125f64fd8\";s:8:\"filename\";s:29:\"formit-5.0.1-pl.transport.zip\";s:9:\"downloads\";s:4:\"6252\";s:6:\"lastip\";s:12:\"94.46.148.32\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=9906688a-b5c9-4a88-8fc7-31b125f64fd8&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";}s:17:\"package-signature\";s:15:\"formit-5.0.1-pl\";s:10:\"categories\";s:5:\"forms\";s:4:\"tags\";s:0:\"\";}', 5, 0, 1, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('migx-3.0.2-beta1', '2024-02-05 17:43:44', '2024-02-05 14:43:57', '2024-02-05 17:43:57', 0, 1, 1, 0, 'migx-3.0.2-beta1.transport.zip', NULL, 'a:8:{s:7:\"license\";s:15504:\"GNU GENERAL PUBLIC LICENSE\r\n   Version 2, June 1991\r\n--------------------------\r\n\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\r\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\r\n\r\nEveryone is permitted to copy and distribute verbatim copies\r\nof this license document, but changing it is not allowed.\r\n\r\nPreamble\r\n--------\r\n\r\n  The licenses for most software are designed to take away your\r\nfreedom to share and change it.  By contrast, the GNU General Public\r\nLicense is intended to guarantee your freedom to share and change free\r\nsoftware--to make sure the software is free for all its users.  This\r\nGeneral Public License applies to most of the Free Software\r\nFoundation\'s software and to any other program whose authors commit to\r\nusing it.  (Some other Free Software Foundation software is covered by\r\nthe GNU Library General Public License instead.)  You can apply it to\r\nyour programs, too.\r\n\r\n  When we speak of free software, we are referring to freedom, not\r\nprice.  Our General Public Licenses are designed to make sure that you\r\nhave the freedom to distribute copies of free software (and charge for\r\nthis service if you wish), that you receive source code or can get it\r\nif you want it, that you can change the software or use pieces of it\r\nin new free programs; and that you know you can do these things.\r\n\r\n  To protect your rights, we need to make restrictions that forbid\r\nanyone to deny you these rights or to ask you to surrender the rights.\r\nThese restrictions translate to certain responsibilities for you if you\r\ndistribute copies of the software, or if you modify it.\r\n\r\n  For example, if you distribute copies of such a program, whether\r\ngratis or for a fee, you must give the recipients all the rights that\r\nyou have.  You must make sure that they, too, receive or can get the\r\nsource code.  And you must show them these terms so they know their\r\nrights.\r\n\r\n  We protect your rights with two steps: (1) copyright the software, and\r\n(2) offer you this license which gives you legal permission to copy,\r\ndistribute and/or modify the software.\r\n\r\n  Also, for each author\'s protection and ours, we want to make certain\r\nthat everyone understands that there is no warranty for this free\r\nsoftware.  If the software is modified by someone else and passed on, we\r\nwant its recipients to know that what they have is not the original, so\r\nthat any problems introduced by others will not reflect on the original\r\nauthors\' reputations.\r\n\r\n  Finally, any free program is threatened constantly by software\r\npatents.  We wish to avoid the danger that redistributors of a free\r\nprogram will individually obtain patent licenses, in effect making the\r\nprogram proprietary.  To prevent this, we have made it clear that any\r\npatent must be licensed for everyone\'s free use or not licensed at all.\r\n\r\n  The precise terms and conditions for copying, distribution and\r\nmodification follow.\r\n\r\n\r\nGNU GENERAL PUBLIC LICENSE\r\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\r\n---------------------------------------------------------------\r\n\r\n  0. This License applies to any program or other work which contains\r\na notice placed by the copyright holder saying it may be distributed\r\nunder the terms of this General Public License.  The \"Program\", below,\r\nrefers to any such program or work, and a \"work based on the Program\"\r\nmeans either the Program or any derivative work under copyright law:\r\nthat is to say, a work containing the Program or a portion of it,\r\neither verbatim or with modifications and/or translated into another\r\nlanguage.  (Hereinafter, translation is included without limitation in\r\nthe term \"modification\".)  Each licensee is addressed as \"you\".\r\n\r\nActivities other than copying, distribution and modification are not\r\ncovered by this License; they are outside its scope.  The act of\r\nrunning the Program is not restricted, and the output from the Program\r\nis covered only if its contents constitute a work based on the\r\nProgram (independent of having been made by running the Program).\r\nWhether that is true depends on what the Program does.\r\n\r\n  1. You may copy and distribute verbatim copies of the Program\'s\r\nsource code as you receive it, in any medium, provided that you\r\nconspicuously and appropriately publish on each copy an appropriate\r\ncopyright notice and disclaimer of warranty; keep intact all the\r\nnotices that refer to this License and to the absence of any warranty;\r\nand give any other recipients of the Program a copy of this License\r\nalong with the Program.\r\n\r\nYou may charge a fee for the physical act of transferring a copy, and\r\nyou may at your option offer warranty protection in exchange for a fee.\r\n\r\n  2. You may modify your copy or copies of the Program or any portion\r\nof it, thus forming a work based on the Program, and copy and\r\ndistribute such modifications or work under the terms of Section 1\r\nabove, provided that you also meet all of these conditions:\r\n\r\n    a) You must cause the modified files to carry prominent notices\r\n    stating that you changed the files and the date of any change.\r\n\r\n    b) You must cause any work that you distribute or publish, that in\r\n    whole or in part contains or is derived from the Program or any\r\n    part thereof, to be licensed as a whole at no charge to all third\r\n    parties under the terms of this License.\r\n\r\n    c) If the modified program normally reads commands interactively\r\n    when run, you must cause it, when started running for such\r\n    interactive use in the most ordinary way, to print or display an\r\n    announcement including an appropriate copyright notice and a\r\n    notice that there is no warranty (or else, saying that you provide\r\n    a warranty) and that users may redistribute the program under\r\n    these conditions, and telling the user how to view a copy of this\r\n    License.  (Exception: if the Program itself is interactive but\r\n    does not normally print such an announcement, your work based on\r\n    the Program is not required to print an announcement.)\r\n\r\nThese requirements apply to the modified work as a whole.  If\r\nidentifiable sections of that work are not derived from the Program,\r\nand can be reasonably considered independent and separate works in\r\nthemselves, then this License, and its terms, do not apply to those\r\nsections when you distribute them as separate works.  But when you\r\ndistribute the same sections as part of a whole which is a work based\r\non the Program, the distribution of the whole must be on the terms of\r\nthis License, whose permissions for other licensees extend to the\r\nentire whole, and thus to each and every part regardless of who wrote it.\r\n\r\nThus, it is not the intent of this section to claim rights or contest\r\nyour rights to work written entirely by you; rather, the intent is to\r\nexercise the right to control the distribution of derivative or\r\ncollective works based on the Program.\r\n\r\nIn addition, mere aggregation of another work not based on the Program\r\nwith the Program (or with a work based on the Program) on a volume of\r\na storage or distribution medium does not bring the other work under\r\nthe scope of this License.\r\n\r\n  3. You may copy and distribute the Program (or a work based on it,\r\nunder Section 2) in object code or executable form under the terms of\r\nSections 1 and 2 above provided that you also do one of the following:\r\n\r\n    a) Accompany it with the complete corresponding machine-readable\r\n    source code, which must be distributed under the terms of Sections\r\n    1 and 2 above on a medium customarily used for software interchange; or,\r\n\r\n    b) Accompany it with a written offer, valid for at least three\r\n    years, to give any third party, for a charge no more than your\r\n    cost of physically performing source distribution, a complete\r\n    machine-readable copy of the corresponding source code, to be\r\n    distributed under the terms of Sections 1 and 2 above on a medium\r\n    customarily used for software interchange; or,\r\n\r\n    c) Accompany it with the information you received as to the offer\r\n    to distribute corresponding source code.  (This alternative is\r\n    allowed only for noncommercial distribution and only if you\r\n    received the program in object code or executable form with such\r\n    an offer, in accord with Subsection b above.)\r\n\r\nThe source code for a work means the preferred form of the work for\r\nmaking modifications to it.  For an executable work, complete source\r\ncode means all the source code for all modules it contains, plus any\r\nassociated interface definition files, plus the scripts used to\r\ncontrol compilation and installation of the executable.  However, as a\r\nspecial exception, the source code distributed need not include\r\nanything that is normally distributed (in either source or binary\r\nform) with the major components (compiler, kernel, and so on) of the\r\noperating system on which the executable runs, unless that component\r\nitself accompanies the executable.\r\n\r\nIf distribution of executable or object code is made by offering\r\naccess to copy from a designated place, then offering equivalent\r\naccess to copy the source code from the same place counts as\r\ndistribution of the source code, even though third parties are not\r\ncompelled to copy the source along with the object code.\r\n\r\n  4. You may not copy, modify, sublicense, or distribute the Program\r\nexcept as expressly provided under this License.  Any attempt\r\notherwise to copy, modify, sublicense or distribute the Program is\r\nvoid, and will automatically terminate your rights under this License.\r\nHowever, parties who have received copies, or rights, from you under\r\nthis License will not have their licenses terminated so long as such\r\nparties remain in full compliance.\r\n\r\n  5. You are not required to accept this License, since you have not\r\nsigned it.  However, nothing else grants you permission to modify or\r\ndistribute the Program or its derivative works.  These actions are\r\nprohibited by law if you do not accept this License.  Therefore, by\r\nmodifying or distributing the Program (or any work based on the\r\nProgram), you indicate your acceptance of this License to do so, and\r\nall its terms and conditions for copying, distributing or modifying\r\nthe Program or works based on it.\r\n\r\n  6. Each time you redistribute the Program (or any work based on the\r\nProgram), the recipient automatically receives a license from the\r\noriginal licensor to copy, distribute or modify the Program subject to\r\nthese terms and conditions.  You may not impose any further\r\nrestrictions on the recipients\' exercise of the rights granted herein.\r\nYou are not responsible for enforcing compliance by third parties to\r\nthis License.\r\n\r\n  7. If, as a consequence of a court judgment or allegation of patent\r\ninfringement or for any other reason (not limited to patent issues),\r\nconditions are imposed on you (whether by court order, agreement or\r\notherwise) that contradict the conditions of this License, they do not\r\nexcuse you from the conditions of this License.  If you cannot\r\ndistribute so as to satisfy simultaneously your obligations under this\r\nLicense and any other pertinent obligations, then as a consequence you\r\nmay not distribute the Program at all.  For example, if a patent\r\nlicense would not permit royalty-free redistribution of the Program by\r\nall those who receive copies directly or indirectly through you, then\r\nthe only way you could satisfy both it and this License would be to\r\nrefrain entirely from distribution of the Program.\r\n\r\nIf any portion of this section is held invalid or unenforceable under\r\nany particular circumstance, the balance of the section is intended to\r\napply and the section as a whole is intended to apply in other\r\ncircumstances.\r\n\r\nIt is not the purpose of this section to induce you to infringe any\r\npatents or other property right claims or to contest validity of any\r\nsuch claims; this section has the sole purpose of protecting the\r\nintegrity of the free software distribution system, which is\r\nimplemented by public license practices.  Many people have made\r\ngenerous contributions to the wide range of software distributed\r\nthrough that system in reliance on consistent application of that\r\nsystem; it is up to the author/donor to decide if he or she is willing\r\nto distribute software through any other system and a licensee cannot\r\nimpose that choice.\r\n\r\nThis section is intended to make thoroughly clear what is believed to\r\nbe a consequence of the rest of this License.\r\n\r\n  8. If the distribution and/or use of the Program is restricted in\r\ncertain countries either by patents or by copyrighted interfaces, the\r\noriginal copyright holder who places the Program under this License\r\nmay add an explicit geographical distribution limitation excluding\r\nthose countries, so that distribution is permitted only in or among\r\ncountries not thus excluded.  In such case, this License incorporates\r\nthe limitation as if written in the body of this License.\r\n\r\n  9. The Free Software Foundation may publish revised and/or new versions\r\nof the General Public License from time to time.  Such new versions will\r\nbe similar in spirit to the present version, but may differ in detail to\r\naddress new problems or concerns.\r\n\r\nEach version is given a distinguishing version number.  If the Program\r\nspecifies a version number of this License which applies to it and \"any\r\nlater version\", you have the option of following the terms and conditions\r\neither of that version or of any later version published by the Free\r\nSoftware Foundation.  If the Program does not specify a version number of\r\nthis License, you may choose any version ever published by the Free Software\r\nFoundation.\r\n\r\n  10. If you wish to incorporate parts of the Program into other free\r\nprograms whose distribution conditions are different, write to the author\r\nto ask for permission.  For software which is copyrighted by the Free\r\nSoftware Foundation, write to the Free Software Foundation; we sometimes\r\nmake exceptions for this.  Our decision will be guided by the two goals\r\nof preserving the free status of all derivatives of our free software and\r\nof promoting the sharing and reuse of software generally.\r\n\r\nNO WARRANTY\r\n-----------\r\n\r\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\r\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\r\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\r\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\r\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\r\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\r\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\r\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\r\nREPAIR OR CORRECTION.\r\n\r\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\r\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\r\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\r\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\r\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\r\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\r\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\r\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\r\nPOSSIBILITY OF SUCH DAMAGES.\r\n\r\n---------------------------\r\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:1439:\"--------------------\r\nMIGX\r\n--------------------\r\nVersion: 2.1.0\r\nAuthor: Bruno Perner <b.perner@gmx.de>\r\n--------------------\r\n\r\n* MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.\r\n* It has a configurable grid and a configurable tabbed editor-window to add and edit items.\r\n* Each item can have multiple fields. For each field you can use another tv-input-type.\r\n\r\nFeel free to suggest ideas/improvements/bugs on GitHub:\r\nhttp://github.com/Bruno17/multiItemsGridTV/issues\r\n\r\nInstallation:\r\n\r\ninstall by package-management.\r\nCreate a new menu:\r\nSystem -> Actions \r\n\r\nActions-tree:\r\nmigx -> right-click -> create Acton here\r\ncontroller: index\r\nnamespace: migx\r\nlanguage-topics: migx:default,file\r\n\r\nmenu-tree:\r\nComponents -> right-click -> place action here\r\nlexicon-key: migx\r\naction: migx - index\r\nparameters: &configs=migxconfigs||packagemanager||setup\r\n\r\nclear cache\r\ngo to components -> migx -> setup-tab -> setup\r\n\r\nIf you are upgrading from MIGX - versions before 2.0\r\ngo to tab upgrade. click upgrade.\r\nThis will add a new autoincrementing field MIGX_id to all your MIGX-TV-items\r\nThe getImageList-snippet needs this field to work correctly.\r\n\r\n\r\nAllways after upgrading MIGX of any Version:\r\ngo to components -> migx -> setup-tab -> setup\r\n\r\nthis will upgrade the migx-configs-table and add new fields, if necessary.\r\n\r\n\r\n\";s:9:\"changelog\";s:12265:\"Changelog for MIGX.\r\n\r\nMIGX 3.0.2\r\n==========\r\nfix some MODX 3 and PHP 8 compatibility and more issues\r\n\r\nMIGX 2.13.0\r\n==============\r\nadd snippet migxGetObject and property toPlaceholders\r\nadd property createChunk to create a chunk with all possible placeholders\r\nFix imageupload on PHP7 due to stray break statement\r\nFix for missing custom prefix in some packagemanager tasks\r\nUpdated image paths to use dynamic assets path\r\nFix the export if a join setting exist\r\nFinnish Translation\r\nadd userid to migxResourceMediapath snippet\r\nremove duplicate sort scriptProperty in export.php\r\n[getlist.php] add getcustomconfigs - hook, groupby, selectfields, specialfields\r\nparse MODX-tags in field-configs\r\npackagemanager fix new folder permission\r\nUse a textarea instead of an input in MIGX TV\r\nReduce indexed varchar fields for utf8mb4 support in mysql\r\nfix duplicate entries in csv-export\r\nAdd CSV Import functionality\r\nImprove CSV Export functionality\r\nadd toJson property to migxLoopCollection\r\nFix transparency in .png in renderimage column renderer\r\nOptimize loadfromxource functionality, especially for MIGX within MIGXdb\r\ndeep nested saving when nested windows are open and saving without closing the window\r\nexport/import single MIGX - items\r\n\r\nMIGX 2.12.0\r\n==============\r\nselect db-fields from defined class and its joins for formtabs and columns\r\nadd categories and a category-filter to MIGX Configs\r\nmultiple grouping-levels for &groupingField\r\nhooksnippet getformnames\r\nadd snippet migxAutoPublish for publishing by Cronjobs\r\nadd beforesave - hook to update-processor\r\nallow string in where-property\r\nadd a default schema-template, used at create package\r\nand some bugfixes\r\n\r\nMIGX 2.11.0\r\n==============\r\ngroupingfield, preparesnippet, _total, _count, improve @CODE\r\nhooksnippet beforecreateform\r\n\r\nMIGX 2.10.0\r\n==============\r\nhooksnippet getcustomconfigs for importcsvmigx\r\nsupport layout-rows/columns in formtabs\r\ncontextmenu \'flat formtabs\'\r\nmultiupload to db, resizeOnUpload - plugin\r\n[packagemanager] Add Extension Package - feature\r\nrespect joinalias in export.php and handlepositionselector.php\r\npossible to use TV-value in migxresourcemediapath - snippet\r\n[getImageList] inherit_children_tvname\r\nMIGXdb add item before/after\r\n\r\nMIGX 2.9.7\r\n==============\r\nadd emtpyTpl\r\nfix some MIGX-grid width - issues\r\nimport csv to MIGX\r\n\r\nMIGX 2.9.6\r\n==============\r\nhooksnippet getcustomconfigs for export-processor\r\nfix missing formtabs after saving\r\n\r\nMIGX 2.9.5\r\n==============\r\ncolumn-actionbuttons also for MIGX\r\nexport/import MIGX-items from/into MIGX-TV\r\nget tinymcewrapper working\r\nmore config-options for combo-filter\r\nFix and simplify Redactor implementation to use MODx.loadRTE()\r\n\r\nMIGX 2.9.4\r\n==============\r\n[migxResourcemediapath] add context_key as path option\r\nbutton for \'alter fields from schema\'\r\nfix MIGX-grid width\r\ncustom grid for MIGX-TV\r\nrespect context-default-media-source - setting\r\n\r\nMIGX 2.9.3\r\n==============\r\nbasic support for new TinyMCE RTE\r\nfix assetsUrl/connectorUrl - settings\r\nMIGX-TV MODX multifile-uploader/autocreate items  \r\nMIGX-TV configurable contextmenues\r\n\r\nMIGX 2.9.2\r\n==============\r\nsome smaller fixes\r\n\r\nMIGX 2.9.1\r\n==============\r\nadd hook-snippet setting\r\nsome handleRelated - update - functions\r\ndestroy updatewindow on close\r\n\r\nMIGX 2.9\r\n==============\r\n[migxLoopCollection] allow use of foreign database\r\nSottwell\'s improvements on migxresourcemediapath\r\nnew snippet: migxGetCollectionTree\r\naccess to foreign database from default processors\r\nimprovements on multiple formtabs\r\nmake inline-editing for MIGX - grid possible\r\noption to add MIGX-items directly without modal\r\nlistbox-cell-editor\r\nmovetotop,movetobottom - buttons for MIGX-grid\r\ncell-editing for MIgXdb - grids\r\noption to add MIGXdb-items directly without modal\r\n[getImageList] &inheritFrom - inherit MIGX-items from parents or other resources\r\nsome migxredactor - fixes \r\n\r\nMIGX 2.8.1\r\n==============\r\nlets disable the \'Add Item\' - button\r\nnew configs gridperpage and sortconfig\r\nwrapperTpl for getImageList and migxLoopCollection\r\n\r\nMIGX 2.8.0\r\n==============\r\nresolve tables on install\r\nrender cross, also when empty string\r\nreusable activaterelations - processors\r\n[migxLoopCollection] tpl_nN\r\n[#154] clean TV-value, if no MIGX-items \r\nadditional db-storage of formtabs and fields\r\nget menue working in MODX 2.3\r\nimprove description_is_code \r\n\r\n\r\nMIGX 2.6.8\r\n==============\r\nsome other small fixes\r\nrestrictive condition by processed MIGX-tags for formfields\r\nFilter-Button for Reset all filters to default-value\r\nextend date-filter\r\nmake cmp main caption translatable \r\nMigx::prepareJoins - optional rightjoin \r\n\r\nMIGX 2.6.7\r\n==============\r\nadd date - filter \r\nadd handlepositionselector - processor \r\nadd snippet exportmigx2db\r\n\r\nMIGX 2.6.6\r\n==============\r\nfixes only\r\n\r\nMIGX 2.6.5\r\n==============\r\nfixes only\r\n\r\nMIGX 2.6.4\r\n==============\r\n[redactor-field] get and use file-properties from a redactor-inputTV\r\nadd renderImageFromHtml - renderer\r\n\r\nMIGX 2.6.3\r\n==============\r\nconfigurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP\r\n\r\nMIGX 2.6.2\r\n==============\r\nfix issue with imported configs-field, if not an array \r\n\r\nMIGX 2.6.1\r\n==============\r\nMake Formfields translatable\r\n\r\nMIGX 2.6\r\n==============\r\n[getImageList] output inner arrays as json-string\r\nadded polish translation\r\n[getImageList] splits, build summaries\r\n make grid-columns translatable, let user add custom-lexicons from custom php-config-files \r\n\r\n\r\nMIGX 2.5.11\r\n==============\r\nadd simple MIGXdb - validation (only required for now)\r\nsome fixes\r\n\r\n\r\nMIGX 2.5.9\r\n==============\r\nlet us create new indexes, with altered field-def from schema \r\noptimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240\r\n\r\n\r\nMIGX 2.5.8\r\n\r\n==============\r\nAdded \'showScreenshot\' (big image in popup) \r\nAdded template-field for direct template-input for renderChunk\r\nAdded position - selector for new MIGX - items\r\nFix for not removed rte-editors when using formswitcher\r\nsend current store-params to iframe-window\r\n\r\n\r\nMIGX 2.5.6\r\n\r\n==============\r\n\r\nAdd support for the modmore.com Redactor editor \r\nsome work on multiuploader for MIGXdb\r\nmore eNotice - fixes\r\n\r\n\r\nMIGX 2.5.2\r\n\r\n==============\r\nread input-options into MIGX-TV\r\nrespect filter in default - export.php\r\nfix for empty value in TV - configs not loading renderers etc.\r\nfix changed processaction-param after export2csv \r\nstopEvent() by onClick - event\r\n\r\nMIGX 2.5.1\r\n\r\n==============\r\nfix bug with renderChunk - renderer\r\n\r\nMIGX 2.5\r\n\r\n==============\r\nget different rtes working - support for tinymce, ckeditor \r\nsome settings for MIGXfe\r\ncs - lexicons, \r\nsome eNotice - fixes\r\nfix with to big integers on TV-id (set phptype to string)\r\nlimit MIGX-record-count\r\n\r\n\r\nMIGX 2.4.2\r\n\r\n==============\r\ncolumnButtons for the migx - grid \r\nlittle form-layout-mods\r\nadded the option to have the first formtab outside the other tabs above of them.\r\n\r\nadded the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - \r\nsnippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.\r\n\r\nmigxupdate for MIGXfe\r\ndefault-values for MIGXdb-filters\r\nupdate co_id in iframe-window\r\nadd a searchbox to MIGX-Configurator\r\nread configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs\r\n\r\n\r\nMIGX 2.4.1\r\n\r\n==============\r\nsome new snippets:\r\ngetDayliMIGXrecord\r\nmigxgetrelations\r\n\r\nadded beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree\r\nadd window-title configuration, make window-caption dynamic (its possible to use placeholders now)\r\nhide tabs in form, when only one tab\r\nadded selectposition - renderer\r\n\r\n\r\nMIGX 2.4.0\r\n\r\n==============\r\nnew renderer - switchStatusOptions\r\nnew renderer - renderChunk\r\ngetImageList - added \'contains\' and \'snippet\' - where-filters\r\nadd duplicate-contextmenue to MIGXdb \r\nnew property for getImageList: &reverse\r\ngive TVs in each CMP-tab a unique id\r\nrefresh grid after closing iframe-window\r\nadded tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList\r\nexport jsonarray-fields as separate fields in csv-export\r\nalias, breadcrumb and ultimateparent for migxREsourceMediaPath\r\nAdded TV - description - field to configuration\r\n\r\n\r\nMIGX 2.3.1\r\n\r\n==============\r\nsome eNotice - error - fixes\r\nadd type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41\r\n\r\nMIGX 2.3.0\r\n\r\n==============\r\nadd multifile - uploader, upload to MIGX - mediasource\r\nadd load from mediasource - button to MIGX\r\nadd migxResourcePath - snippet\r\nadd iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.\r\n\r\n\r\nMIGX 2.2.3\r\n\r\n==============\r\nconfirmation before overriding schema-files\r\nsome additions for childresources-management by MIGXdb\r\nswitch between multiple forms - configurations\r\nadd renderDate - renderer , thanks to Jako\r\nadditional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.\r\nadd parent-property for dynamic filter-comboboxes\r\nadd getliste-where for default getlist-processor\r\nexport formtabs as clean json in editraw-mode\r\n\r\n\r\nMIGX 2.2.2\r\n\r\n==============\r\nadd migxLoopCollection-snippet\r\nmove prepareJoins into a migx-method\r\nconfirmation before remove db-record, getcombo did not use idfield \r\nallow empty prefix \r\nadd possibility to use tables without \'deleted\' - field and default-getlist-processor\r\nfix Call-time pass-by-reference errors\r\nget tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs \r\nfix prefix not sended to writeSchema\r\ngrid add cls \'main-wrapper\' to give it a bit padding, thanks to jako\r\n\r\n\r\nMIGX 2.2.0\r\n\r\n==============\r\n\r\nexport/import configuration-objects as json to/from files in custom-package-directories \r\nnew configs: getlist - defaultsort, joins, gridload_mode (by button, auto) \r\ngrid-smarty-template now can be also in custom-package-directories\r\nreworked handling of joined objects in default update-php \r\nadd connected_object_id baseparam to migx-grid\r\nadded snippet migxLoopCollection\r\n\r\n\r\nMIGX 2.1.1\r\n\r\n==============\r\n\r\n  fix for migx-snippet not working with multiple calls on one page\r\n  resource_id as script-property for getlist-processor when used with migx-snippet\r\n\r\nMIGX 2.1.0\r\n\r\n==============\r\n\r\n  add &sort to the getImageList - snippet\r\n  add new snippet \'migx\' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager\r\n  make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages\r\n  more MIGXdb - configurations\r\n\r\n\r\nMIGX 2.0.1\r\n\r\n==============\r\n\r\n  more E_NOTICE - Error - fixes\r\n  Fix Missing Add - Item - Replacement - String \r\n\r\nMIGX 2.0.0\r\n\r\n==============\r\n\r\n- pl\r\n\r\n  fix for Revo 2.2.2\r\n  fix some E_NOTICE - errors\r\n\r\n- new in beta5\r\n\r\n  Configure multiple CMP - tabs\r\n  packagemanager ported to extjs - tab\r\n  added MIGX-setup/upgrade - tab\r\n  added configurable text and combo - filterboxes\r\n\r\n- new in beta3\r\n\r\n  This is a preview-version of MIGXdb\r\n  MIGXdb can now also be used as configurable CMP\r\n  MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP\r\n  Package-manager, create and edit schemas and package-tables\r\n\r\n- new:\r\n  better compatibility with revo 2.2\r\n  working with mediasources\r\n  introduced MIGXdb\r\n\r\n\r\nMIGX 1.2.0\r\n==============\r\n- new:\r\n  merge scriptProperties to Placeholders \r\n  basic compatibility for modx 2.2 \r\n  autoinc-field: MIGX_id\r\n  autoResourceFolders - functionality, autoCreate directory for each resource\r\n  \r\n  \r\n- fixed:\r\n  url-TV support\r\n  context-based base_path issues\r\n  remove remaining []\r\n  remove Tiny-instances when switching form\r\n  enter on textarea closes window\r\n  fireResourceFormChange for drag,remove,duplicate \r\n\r\nMIGX 1.1.0\r\n==============\r\n- new:\r\n  &docidVarKey\r\n  &processTVs\r\n  \r\n- fixed:\r\n  context-filepath-issue\r\n\r\nMIGX 1.0.0\r\n==============\r\n- Initial release.\";s:9:\"signature\";s:16:\"migx-3.0.2-beta1\";s:6:\"action\";s:26:\"Workspace/Packages/Install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:44:\"/workspace/package/install/migx-3.0.2-beta1/\";s:14:\"package_action\";i:0;}', 'MIGX', 'a:38:{s:2:\"id\";s:36:\"99fb17bd-c7e2-459f-a0e5-a02c162cdb87\";s:7:\"package\";s:36:\"9906672f-bf6a-4575-8ed4-b4998222ede6\";s:12:\"display_name\";s:16:\"migx-3.0.2-beta1\";s:4:\"name\";s:4:\"MIGX\";s:7:\"version\";s:5:\"3.0.2\";s:13:\"version_major\";s:1:\"3\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"2\";s:7:\"release\";s:5:\"beta1\";s:8:\"vrelease\";s:4:\"beta\";s:14:\"vrelease_index\";s:1:\"1\";s:6:\"author\";s:7:\"bruno17\";s:11:\"description\";s:672:\"<p>MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.</p><p>It has a cofigurable grid and a configurable tabbed editor-window to add and edit items.</p><p>Each item can have multiple fields. For each field you can use another tv-input-type.</p><p>MIGXdb can manage (resource-related) custom-db-table-items in a TV and can help to create CMPs for custom-db-tables</p><p>See the official documentation here: <a href=\"http://rtfm.modx.com/display/addon/MIGX\" style=\"color: rgb(15, 112, 150); \" title=\"\" target=\"\">http://rtfm.modx.com/display/addon/MIGX</a></p><p></p>\";s:12:\"instructions\";s:5844:\"<p></p><p style=\"margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;\">Installation:Install via Package Management.</p><p style=\"margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;\">For MIGX and MIGXdb - Configuration - Management:</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \">Create a new menu:System -> Actions Actions-tree:migx -> right-click -> create Acton herecontroller: indexnamespace: migxlanguage-topics: migx:default,filemenu-tree:Components -> right-click -> place action herelexicon-key: migxaction: migx - indexparameters: &configs=migxconfigs||packagemanager||setupclear cachego to components -> migx -> setup-tab -> setupIf you are upgrading from MIGX - versions before 2.0go to tab upgrade. click upgrade.This will add a new autoincrementing field MIGX_id to all your MIGX-TV-itemsThe getImageList-snippet needs this field to work correctly.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"><b style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; \">Note:</b> Make sure to remove older versions of multiItemsGridTv and the multiitemsgridTv-namespace, if you had them tried from Github.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"><b style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; \">Note</b>: Input Options for the MIGX only work for Revolution 2.1.0-rc2 and later.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"></p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"></p>\";s:9:\"changelog\";s:135:\"MIGX 3.0.2\n===========\nfix some MODX 3 and PHP 8 compatibility and more issues\n\nMIGX 3.0.0\n============\nBasic Compatibility for MODX 3\n\";s:9:\"createdon\";s:25:\"2023-08-26T08:05:41+00:00\";s:9:\"createdby\";s:7:\"bruno17\";s:8:\"editedon\";s:25:\"2023-08-26T08:06:47+00:00\";s:10:\"releasedon\";s:25:\"2023-08-26T08:06:47+00:00\";s:9:\"downloads\";s:6:\"274843\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:4:\"true\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:36:\"9861b09b-7176-455b-a9c1-bb7728924ad8\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99fb17bd-c7e2-459f-a0e5-a02c162cdb87&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";s:9:\"signature\";s:16:\"migx-3.0.2-beta1\";s:11:\"supports_db\";s:0:\"\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:5:\"100.0\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:36:\"99fb17bd-c7e2-459f-a0e5-a02c162cdb87\";s:7:\"version\";s:36:\"99fb17bd-c7e2-459f-a0e5-a02c162cdb87\";s:8:\"filename\";s:30:\"migx-3.0.2-beta1.transport.zip\";s:9:\"downloads\";s:4:\"6419\";s:6:\"lastip\";s:0:\"\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99fb17bd-c7e2-459f-a0e5-a02c162cdb87&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";}s:17:\"package-signature\";s:16:\"migx-3.0.2-beta1\";s:10:\"categories\";s:15:\"content,gallery\";s:4:\"tags\";s:46:\"migx,multiitems,multitv,migxdb,CMP,MIGX,MIGXdb\";}', 3, 0, 2, 'beta', 1);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('pdotools-3.0.2-pl', '2024-02-02 22:41:11', '2024-02-02 19:42:11', '2024-02-02 22:42:11', 0, 1, 1, 0, 'pdotools-3.0.2-pl.transport.zip', NULL, 'a:9:{s:9:\"changelog\";s:31368:\"Changelog for pdoTools.\r\n\r\n3.0.2-pl (11.04.2023)\r\n==============\r\n- Support for file snippets in the pdoPage class.\r\n- Security fix for the pdoPage snippet.\r\n\r\n3.0.1-pl (01.08.2022)\r\n==============\r\n- Fixed incorrect next and prev canonical URLs (#318).\r\n- Fixed bug in the Fenom parser (#331).\r\n- Fixed bug when clearing cache (#347).\r\n- Added aliases \"pdoTools\" and \"pdoFetch\" for the service container.\r\n\r\n3.0.0-pl (25.07.2022)\r\n==============\r\n- Fixed bug in the App::makeUrl function (#322).\r\n- Replaced the simple class name with FQN (#326).\r\n- Fixed incorrect functioning of the pdoNeighbors snippet (#327).\r\n- Changed $_SERVER[\'DOCUMENT_ROOT\'] to dirname function in the connector.php (#332).\r\n- Fixed bug with inaccessible property Fetch::config (#334).\r\n- Fixed bug with prepareTVs and processTVs parameters of the pdoTools snippets (#335).\r\n- Fixed fatal error in connector.php (#336).\r\n- Fixed a typo in the connector ($this on $modx) (338).\r\n- Fixed fatal error caused by loop (#341).\r\n- Fixed checking TV before adding to the query (#343).\r\n\r\n3.0.0-beta (06.12.2021)\r\n==============\r\n- Requires MODX 3.\r\n- Requires PHP 7.2+.\r\n- Refactored to use PSR-4 autoload.\r\n- pdoTools snippet logs are stored now in the corresponding placeholder (#316).\r\n- Added system setting \"pdotools_filter_path\".\r\n- Removed anchor links in skip/empty templates (#303).\r\n- Removed \"nestedChunkPrefix\" parameter.\r\n- Removed the system settings \"pdoTools.class\", \"pdotools_class_path\", \"pdoFetch.class\" and \"pdofetch_class_path\".\r\n- Removed the \"setOption\" Fenom modifier.\r\n- Removed the snippet parameters \"tplPath\" and \"elementsPath\".\r\n\r\n2.13.2-pl (02.09.2021)\r\n==============\r\n- Fixed some snippets.\r\n\r\n2.13.1-pl (01.09.2021)\r\n==============\r\n- Installed composer packages.\r\n\r\n2.13.0-pl (01.09.2021)\r\n==============\r\n- Some security fixes.\r\n- The \"setOption\" modifier is marked as deprecated.\r\n- The snippet parameters \"tplPath\" and \"elementsPath\" are marked as deprecated.\r\n- Added the ability for snippets to return an array of raw data (it is necessary when using the Fenom template engine).\r\n- The settings \"parser_class\" and \"parser_class_path\" will be registered in the core namespace.\r\n- Update the ajax connector.\r\n\r\n2.12.10 pl\r\n==============\r\n- [#308] [pdoPage] Fixed the type of snippet property \"field\"\r\n\r\n2.12.9 pl\r\n==============\r\n- [Fenom] Update to version 2.12.0\r\n\r\n2.12.8 pl\r\n==============\r\n- [pdoPage] Fix reflected XSS in generated meta links\r\n\r\n2.12.7 pl\r\n==============\r\n- Make pdoTools canonical url work with Babel #304\r\n\r\n2.12.6 pl\r\n==============\r\n- [pdoPage] Reverted back #287\r\n\r\n2.12.5 pl\r\n==============\r\n- [Fenom] Added caching dinamic properties to prevent speed degradation.\r\n\r\n2.12.4 pl\r\n==============\r\n- [#290] Improved running snippet via @FILE binding.\r\n- [#296] Fix adding quotes to numeric values.\r\n- [#297] Make cross context weblink url possible.\r\n- [#274] [Fenom] User, resource and context properties are now dinamic.\r\n- [#287] [pdoPage] Remove prev & next meta tags\r\n- [#294] [#298] Improved pdopage.js and updated minified js files\r\n\r\n2.12.3 pl\r\n==============\r\n- Fixed E_NOTICE introduced in #285.\r\n\r\n2.12.2 pl\r\n==============\r\n- Updated chunks for Bootstrap 4.\r\n\r\n2.12.1 pl\r\n==============\r\n- [pdoMenu] Reverted back #283 and fixed docs for &tplCategoryFolder.\r\n- [#284] [Fenom] Fixed properties of $_modx->context variable.\r\n- [#275] [Fenom] Added \"reset\" and \"end\" modifiers.\r\n\r\n2.12.0 pl\r\n==============\r\n- [Fenom] More security fixes from Sergey Shlokov.\r\n- [#278] [pdoPage] Fixed caching.\r\n- [pdoPage] Show internal log on &showLog=`1`.\r\n- [#283] [pdoMenu] Fixed use of &tplCategoryFolder according to docs.\r\n- [#281] [pdoTools] Fixed load of models from case sensitive paths.\r\n- [#277] [pdoCrumbs] Ability to specify &customParents.\r\n- [#265] [pdoFetch] Fixed return of \"Array\" on SQL errors.\r\n\r\n2.11.3 pl\r\n==============\r\n- Added French lexicon entries.\r\n\r\n2.11.2 pl\r\n==============\r\n- Fix detection of element names starting with a number.\r\n\r\n2.11.1 pl\r\n==============\r\n- Faster processing of static files.\r\n\r\n2.11.0 pl\r\n==============\r\n- [pdoFetch] Added \"setTotal\" option to enable calculating all rows (\"SQL_CALC_FOUND_ROWS\"), which will also result in the \"totalVar\" placeholder is being set.\r\n- [pdoFetch] Option \"setTotal\" disabled by default.\r\n- [pdoPage] Forces \"setTotal\" to provide pagination.\r\n\r\n2.10.6 pl\r\n==============\r\n- Improved German lexicons.\r\n\r\n2.10.5 pl\r\n==============\r\n- [pdoTools] Ability to return array from \"prepareSnippet\" for more performance.\r\n- [FenomX] Fixed method \"getStore\".\r\n\r\n2.10.4 pl\r\n==============\r\n- [Fenom] Do not output raw tags if there was a compile errors.\r\n- [#266] [pdoMenu] Fixed the setting of \"here\" and \"self\" classes.\r\n- [#261] [Fenom] Fixed unexpected behavior of the fenom tag \"ignore\".\r\n\r\n2.10.3 pl\r\n==============\r\n- Improved compatibility with PHP 7.2\r\n- [pdoFetch] Ability to use arrays in \"&sortby\".\r\n\r\n2.10.2 pl\r\n==============\r\n- [Fenom] Improved processing of caching snippets inside uncached.\r\n\r\n2.10.1 pl\r\n==============\r\n- [#256] [Fenom] Fixed bug with caching of scripts and styles.\r\n- [pdoPage] \"&setMeta\" now works when \"&cache=`1`\".\r\n- [Fenom] Improved regular expression to detect Fenom syntax.\r\n\r\n2.10.0 pl\r\n==============\r\n- [#259] [pdoFetch] Fixed error when passed pure SQL into \"having\" parameter.\r\n- [#258] [pdoPage] Canonical urls always must be \"full\".\r\n- [#245] [pdoMenu] Ability to use conditional tpls instead of regular \"tpl\".\r\n- [#121] [pdoMenu] Improved work of specified chunks with weblinks.\r\n\r\n2.9.3 pl\r\n==============\r\n- [#255] [Fenom] New system setting \"pdotools_fenom_save_on_errors\" to save code on compilation errors in the cache directory for later debugging.\r\n\r\n2.9.2 pl\r\n==============\r\n- [pdoParser] Proper traversal trough arrays fields of resources in fast tags.\r\n\r\n2.9.1 pl\r\n==============\r\n- [Fenom] Updated to version 2.11.8.\r\n\r\n2.9.0 pl\r\n==============\r\n- [pdoPage] Improved \"&pageLinkScheme\" logic.\r\n- [#249] A little improvement for resource modifier.\r\n- [#251] [pdoFetch] More compatibility with PHP 7.1.\r\n- [#253] [pdoPage] Fixing a missing pagination in Ajax mode.\r\n- [#254] [Fenom] Options of json modifiers must check version of PHP to proper work.\r\n\r\n2.8.6 pl\r\n==============\r\n- [pdoArchive] Ability to specify fields with regular dates in the \"&dateField\" parameter.\r\n- [Fenom] Added all options to json modifiers.\r\n\r\n2.8.5 pl\r\n==============\r\n- [#248] [pdoPage] Fixed E_WARNING with array values in GET parameters.\r\n\r\n2.8.4 pl\r\n==============\r\n- Ability to use file elements in core path outside base path.\r\n- Fixed bug with the caching of elements.\r\n\r\n2.8.3 pl\r\n==============\r\n- [Fenom] Fixed rare bug with the caching of scripts and styles that was registered via Fenom.\r\n- [pdoPage] Fixed the \"?page=1\" in the url when ajaxMode is enabled.\r\n- [pdoPage] Snippet will register \"canonical\" link if \"&setMeta\" is enabled.\r\n- [pdoPage] Fix processing of request with rawurldecode on some servers.\r\n- [pdoTools] Added passing of \"scriptProperties\" values into a \"&prepareSnippet\".\r\n\r\n2.8.2 pl\r\n==============\r\n- [pdoMenu] Fixed the checking of permissions for containers.\r\n- [pdoPage] Added the ability to run files as &element.\r\n- [pdoTools] The method runSnippet will return boolean false if snippet was not found.\r\n- [Fenom] Fixed the possible bugs of caching of scripts and styles.\r\n\r\n2.8.1 pl\r\n==============\r\n- [#244] Fixed possible duplicate of a container in the jquery.pdopage.js.\r\n- Added fallback class for the enable modParser.\r\n\r\n2.8.0 pl\r\n==============\r\n- Ability to use an arrays in the parameters of the snippets.\r\n- Replaced modX::toJSON and modX::fromJSON to native php functions.\r\n\r\n2.7.5 pl\r\n==============\r\n- Fenom is now managed via composer.\r\n- [Fenom] Modifier \"resource\" no longer checks fields of resources in their schema.\r\n- [Fenom] Modifier \"strrev\" now can work with arrays.\r\n- [Fenom] Improved modifier \"ismember\".\r\n\r\n2.7.4 pl\r\n==============\r\n- [#242] Added jquery.pdopage.js plugin and minified versions.\r\n- [#241] [Fenom] Improved the retrieving of TVs for a current resource.\r\n- [pdoFetch] Restored the checking of possible SQL injections in the &sortby with xPDO 2.5.1.\r\n\r\n2.7.3 pl\r\n==============\r\n- Improved compatibility with MODX 2.5.2.\r\n\r\n2.7.2 pl\r\n==============\r\n- [pdoFetch] Some security improvements.\r\n\r\n2.7.1 pl\r\n==============\r\n- Some security improvements in the connector.php.\r\n- Fixed bug with registering scripts in styles via Fenom introduced in version 2.7.0.\r\n\r\n2.7.0 pl\r\n==============\r\n- [Fenom] Updated to the version 2.11.4.\r\n- [Fenom] Fixed resource cache for scripts and styles registered by Fenom.\r\n- [Fenom] Added rand() and number_format() to an allowed PHP functions.\r\n- [Fenom] New output filter \"number\" (or \"number_format\").\r\n\r\n2.6.5 pl\r\n==============\r\n- Fixed undeclared variable (PHP 7.1)\r\n\r\n2.6.4 pl\r\n==============\r\n- Added escaping of a MODX tags that being processed in the &prepareSnippet.\r\n- [#239] Improved work of the &decodeJSON option.\r\n\r\n2.6.3 pl\r\n==============\r\n- Fixed possible E_NOTICE on line 305 pdofetch.class.php.\r\n- Fixed possible E_NOTICE when \"snippet\" and \"chunk\" Fenom modifiers was called.\r\n\r\n2.6.2 pl\r\n==============\r\n- Fixed possible E_NOTICE on line 1317 pdotools.class.php.\r\n\r\n2.6.1 pl\r\n==============\r\n- Improved compatibility with PHP 5.3.\r\n\r\n2.6.0 pl\r\n==============\r\n- [Fenom] The ability to extend Fenom via system event \"pdoToolsOnFenomInit\".\r\n\r\n2.5.6 pl\r\n==============\r\n- [pdoFetch] Ability to join TVs not only to the query main class.\r\n\r\n2.5.5 pl\r\n==============\r\n- Fixed parse of INLINE chunks with \"@\" symbols.\r\n\r\n2.5.4 pl\r\n==============\r\n- [#224] Added microMODX::cleanAlias().\r\n- [#226] [Fenom] Added \"declension\" modifier.\r\n\r\n2.5.3 pl\r\n==============\r\n- [#221] Fixed typo in month name.\r\n- [Fenom] Fixed path to compile dir.\r\n\r\n2.5.2 pl\r\n==============\r\n- [#220] Cache code of snippet with respect to property set.\r\n\r\n2.5.1 pl\r\n==============\r\n- Fixed cache of snippets in pdoTools::runSnippet().\r\n\r\n2.5.0 pl\r\n==============\r\n- Improved support of debugParser.\r\n- [#209] Improved loading of the models.\r\n- [Fenom] New modifiers: \"snippet\" and \"chunk\".\r\n- [Fenom] New elements provider: \"file\".\r\n- New method pdoTools::runSnippet().\r\n\r\n2.4.0 pl\r\n==============\r\n- Added snippet pdoArchive.\r\n- [pdoResources] Faster processing of additional snippet parameters to placeholders.\r\n- [#123] [pdoMenu] Fixed bug with &displayStart and unpublished root nodes.\r\n- [#207] [pdoMenu] Fixed &webLinkClass option.\r\n- [#193] [pdoNeighbors] Added parameter &wrapIfEmpty.\r\n- [#203] [Fenom] Added more PCRE modifiers.\r\n\r\n2.3.5 pl\r\n==============\r\n- [pdoFetch] Added escaping of columns names in query.\r\n\r\n2.3.4 pl\r\n==============\r\n- [#200] [pdoFetch] Fixed &sortbyTV with dot in name.\r\n\r\n2.3.3 pl\r\n==============\r\n- Added system plugin for \"autoload\" of main classes with respect to their paths in system settings.\r\n\r\n2.3.2 pl\r\n==============\r\n- [#196] [pdoPage] Added workaround to support ClientConfig tags in ajax mode.\r\n- [Fenom] Added general MODX output filters as Fenom modifiers.\r\n- [Fenom] Implemented autoload of modifiers from snippets.\r\n- [Fenom] Removed system setting \"pdotools_fenom_modifiers\".\r\n\r\n2.3.1 pl\r\n==============\r\n- [pdoSitemap] Lightning fast work chunks processing with &scheme=`uri`.\r\n- [Fenom] Improved check of syntax before processing.\r\n\r\n2.3.0 pl\r\n==============\r\n- Removed shortcuts from system core.\r\n- PSR-2.\r\n- [Fenom] Added default modifiers: \"url\" and \"lexicon\".\r\n- [pdoCrumbs] Changed default chunks to ul -> li.\r\n- [#190] [pdoSitemap] Changed date format to ISO 8601.\r\n\r\n2.2.8 pl\r\n==============\r\n- [Fenom] Use modResource::getContent() method to get content of current resource in {$_modx->resource}.\r\n\r\n2.2.7 pl\r\n==============\r\n- [pdoPage] Ability to get access to a javascript configs from 3rd party scripts.\r\n\r\n2.2.6 pl\r\n==============\r\n- [#184] [Fenom] Updated to version 2.8.2.\r\n\r\n2.2.5 pl\r\n==============\r\n- [#182] [pdoTitle] Added passing a parameters into nested pdoCrumbs.\r\n- [pdoSitemap] Added processing of MODX tags if needed.\r\n- Added method pdoTools::makeUrl().\r\n- [#181] New url schema type - \"uri\".\r\n\r\n2.2.4 pl\r\n==============\r\n- [Fenom] Fixed speed issues when MODX snippets are run as Fenom modifiers.\r\n- [pdoUsers] Fixed overwrite modUser.id by modUserProfile.id.\r\n\r\n2.2.3 pl\r\n==============\r\n- [pdoPage] Fixed processing of uncached conditions in chunks when ajax mode is enabled.\r\n\r\n2.2.2 pl\r\n==============\r\n- [pdoPage] Added new parameter &pageLinkScheme.\r\n\r\n2.2.1 pl\r\n==============\r\n- [#155] [pdoPage] Added new parameter &ajaxHistory.\r\n- [pdoPage] Added connector for requests in ajax mode.\r\n\r\n2.2.0 pl\r\n==============\r\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\r\n- [#174] [Fenom] Ability to add Fenom modifiers into pdoParser.\r\n\r\n2.1.21 pl\r\n==============\r\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\r\n- [#176] [pdoUsers] Fixed &toPlaceholders with &returnIds.\r\n\r\n2.1.20 pl\r\n==============\r\n- [pdoSitemap] Fixed default &cacheKey.\r\n\r\n2.1.19 pl\r\n==============\r\n- [Fenom] Disabled $options in cacheManager::set() due to security reasons.\r\n\r\n2.1.18 pl\r\n==============\r\n- [Fenom] Fixed ability to access to the modX object from {$_modx} variable.\r\n- [Fenom] Improved method {$_modx->runProcessor()}.\r\n\r\n2.1.17 pl\r\n==============\r\n- [Fenom] Added {$_modx->getResource($id, $options)}.\r\n- [Fenom] Added {$_modx->getResources($where, $options)}.\r\n- [Fenom] Improved support of debugParser.\r\n\r\n2.1.16 pl\r\n==============\r\n- [Fenom] Added {$_modx->isMember($groups, $matchAll)}.\r\n- [Fenom] Added {$_modx->getPlaceholders()}.\r\n\r\n2.1.15 pl\r\n==============\r\n- [pdoPage] Added parameter &strictMode.\r\n\r\n2.1.14 pl\r\n==============\r\n- [pdoSitemap] Added options for cache snippets results.\r\n- [pdoSitemap] Cache enabled by default.\r\n\r\n2.1.13 pl\r\n==============\r\n- [#163] Fixed ignoring of &idx in pdoResources and pdoUsers.\r\n\r\n2.1.12 pl\r\n==============\r\n- [pdoPage] [#161] Fixed support of arrays in hash when &ajaxMode is enabled.\r\n\r\n2.1.11 pl\r\n==============\r\n- [#150] [Fenom] Fixed processing of TVs values in a {$_modx->resource}.\r\n- [#147] [pdoSitemap] Fixed possible duplicates in sitemap.\r\n- [pdoPage] Support of arrays in hash when &ajaxMode is enabled.\r\n\r\n2.1.10 pl\r\n==============\r\n- [#157] [Fenom] Fixed pre-processing of Fenom tags in extending templates and chunks.\r\n- [#145] [pdoPage] Rolled back #81 due to issues with complicate forms.\r\n\r\n2.1.9 pl\r\n==============\r\n- [#144] [pdoParser] Leave unprocessed FastField tags so other components could parse them.\r\n- [pdoFetch] Updated syntax for \"SET SQL_BIG_SELECTS = 1\".\r\n\r\n2.1.8 pl\r\n==============\r\n- [Fenom] Ability to use id of chunks and templates in {include} and {extends}.\r\n- [Fenom] Added support of debugParser.\r\n- [Fenom] Added {$_modx->getChildIds()} and {$_modx->getParentIds()}.\r\n\r\n2.1.7 pl\r\n==============\r\n- Fixed work with integer values from system setting \"link_tag_scheme\".\r\n\r\n2.1.6 pl\r\n==============\r\n- [Fenom] Updated to version 2.8.0.\r\n- [Fenom] Improved check of syntax to process content of chunks.\r\n- [pdoParser] Fixed E_WARNING on line 50 introduced in previous version.\r\n\r\n2.1.5 pl\r\n==============\r\n- [Fenom] Fixed register of scripts and styles by cached snippets.\r\n\r\n2.1.4 pl\r\n==============\r\n- [Fenom] Fixed TVs in {$_modx->resource}\r\n- [Fenom] Added new method {$_modx->getInfo()}\r\n\r\n2.1.3 pl\r\n==============\r\n- Improved work of system setting \"pdotools_fenom_php\".\r\n\r\n2.1.2 pl\r\n==============\r\n- [Fenom] Replaced {$_modx->placeholders} to functions.\r\n\r\n2.1.1 pl\r\n==============\r\n- pdoParser enabled by default.\r\n- [Fenom] Fixed return content in {$_modx->getChunk}.\r\n- [Fenom] Added cache for snippets called through {$_modx->runSnippet}.\r\n- [pdoTools] Added processing of property sets for chunks.\r\n- [pdoResources] Set additionalPlaceholders in &tplWrapper\r\n\r\n2.1.0 pl\r\n==============\r\n- [Fenom] Updated Fenom to version 2.7.1.\r\n- [Fenom] Added safe system variable {$_modx}.\r\n- [Fenom] Added MODX template provider for chunks and templates.\r\n\r\n2.0.5 pl\r\n==============\r\n- [#132] Fixed possible E_WARNING on empty chunks.\r\n- [#122] Ability to use 3rd party pdoPage and pdoMenu classes.\r\n- [#118] [pdoPage] Fixed parameter &offset.\r\n- [pdoPage] Fixed default CSS classes in \"empty\" chunks.\r\n\r\n2.0.4 pl\r\n==============\r\n- Fixed processing of \"pdotools_fenom_cache\" system setting.\r\n\r\n2.0.3 pl\r\n==============\r\n- [#125] [pdoTitle] Fixed parameter &id.\r\n\r\n2.0.2 pl\r\n==============\r\n- Improved processing of @FILE binding.\r\n\r\n2.0.1 pl\r\n==============\r\n- Fixed possible E_WARNING on line 319 and 349 of pdoTools class.\r\n- Disabled system option \"pdotools_fenom_modx\" by default due to security issues.\r\n\r\n2.0.0 pl\r\n==============\r\n- New system settings to control the Fenom.\r\n- Ability to enable caching of Fenom compiled chunks.\r\n- Improved handling of parameter \"cache_key\".\r\n- [pdoMenu] Improved work when &cache is enabled.\r\n\r\n2.0.0 rc2\r\n==============\r\n- Compiled Fenom templates cached to RAM instead of HDD.\r\n- Removed plugin pdoTools.\r\n\r\n2.0.0 rc1\r\n==============\r\n- Added Fenom template engine.\r\n- Fenom enabled by default.\r\n- pdoParser uses Fenom to process pages.\r\n\r\n1.11.2 pl\r\n==============\r\n- [#116] [pdoTitle] Disabled &register_js by default.\r\n\r\n1.11.1 pl\r\n==============\r\n- [pdoSitemap] Fixed default url scheme after last update.\r\n\r\n1.11.0 pl1\r\n==============\r\n- [pdoTitle] Added new snippet.\r\n- [pdoPage] Added support of snippet pdoTitle when &ajaxMode is enabled.\r\n- [pdoPage] Prevent overwriting of scripts and styles of nested &element by default parameters.\r\n- [pdoPage] Added triggering javascript event \"pdopage_load\".\r\n\r\n1.10.2 pl1\r\n==============\r\n- [#112] Parameter &scheme was set to system default in all snippets.\r\n- [#111] [pdoPage] Added ability to set \"prev\" & \"next\" meta tags.\r\n- [#107] [pdoNeighbors] Added ability to specify &parents for work.\r\n- [#106] [pdoMenu] Fixed \"hereClass\" and \"selfClass\" enabled &useWeblinkUrl parameter.\r\n- [#104] [pdoMenu] Snippet now using \"pagetitle\" for link titles if \"titleOfLinks\" is empty.\r\n\r\n1.10.1 pl\r\n==============\r\n- [#108] [pdoFetch] Fixed E_ERROR when using &sortbyTV.\r\n- [pdoFetch] Added new parameter &sortbyTVType.\r\n- [pdoFetch] If &sortdirTV is not set it will be equal to &sortdir.\r\n\r\n1.10.0 pl\r\n==============\r\n- [pdoMenu] Returned and fixed parameter &showDeleted.\r\n- [pdoPage] Improved default javascript.\r\n- [pdoPage] Fixed overwriting &frontend_js and &frontend_css parameters when &ajax is disabled.\r\n- [pdoFetch] Ability to specify functions in select fields.\r\n- [pdoTools] Ability to use compound quick placeholders.\r\n\r\n1.10.0 beta4\r\n==============\r\n- [pdoPage] Ajax pagination out from the box.\r\n- [pdoFetch] Improved log of getCollection.\r\n- [pdoTools] Added tplOperator \"contains\".\r\n\r\n1.9.7 pl\r\n==============\r\n- [#99] [pdoFetch] Fixed returning of primary key in \"ids\" mode.\r\n- [#97] [pdoTools] Fixed default tplPath for @FILE chunks.\r\n- [#85] [pdoFetch] Added function getChildIds().\r\n- [pdoFetch] Disabled \"total\" placeholder for &return=`ids`.\r\n\r\n1.9.6 pl2\r\n==============\r\n- [pdoFetch] Fixed exclusion of field \"id\" in custom classes.\r\n- [pdoMenu] Improved parameter &countChildren.\r\n- [#100] [pdoMenu] Removed parameter &showDeleted because it not working.\r\n\r\n1.9.6 rc\r\n==============\r\n- Added execution of SQL_BIG_SELECTS = 1 before query.\r\n- [pdoPage] Added parameter &ajax for supporting of ajax requests.\r\n\r\n1.9.5 pl1\r\n==============\r\n- Rolled back #72 due to issues in pdoMenu.\r\n\r\n1.9.5 pl\r\n==============\r\n- Added ability to return JSON or serialized string from pdoFetch::run().\r\n- [#83] [pdoMenu] Added level placeholder to outer templates.\r\n- [#82] [pdoFetch] Added support for complex &where parameter.\r\n- [#81] [pdoPage] Improved handling of arrays in url.\r\n- [#77] Fixed making of url for modWebLink to another context.\r\n- [#72] [pdoTools] Fixed order for children of excluded parents in buildTree.\r\n- [#60] [pdoMenu] Fixed parameter &tplCategoryFolder.\r\n- [#57] [pdoMenu] Improved placeholder [[+children]].\r\n- [#57] [pdoMenu] Added parameter &countChildren.\r\n\r\n1.9.4 pl1\r\n==============\r\n- [#78] [pdoNeighbors] Added parameter &loop=`1` for looping links.\r\n- [pdoSitemap] Fixed possible E_FATAL php-apc.\r\n\r\n1.9.3 pl1\r\n==============\r\n- [pdoTools] Ability to specify value for empty quick placeholders.\r\n- [pdoTools] Ability to use INLINE snippets and filters.\r\n- [pdoFetch] Improved loading of 3rd party models.\r\n- [pdoPage] Fixed E_WARNING when &limit=`0`.\r\n\r\n1.9.2 pl2\r\n==============\r\n- [#56] [pdoParser] Fixed wrong links processing.\r\n- [#53] Improved loading of classes.\r\n- [pdoField] Rolled back to original logic of \"top\" and \"topLevel\" parameters due to issues.\r\n- [pdoField] Added parameter \"ultimate\" to emulate logic of UltimateParent.\r\n\r\n1.9.1 pl6\r\n==============\r\n- [pdoFetch] Adding alias of main class of query to \"sortby\" if no alias exists.\r\n- [pdoFetch] Improved selecting of all fields of class with specified alias.\r\n- [pdoField] Parameter \"topLevel\" works exactly as in UltimateParent.\r\n- [pdoField] Parameter \"top\" without \"topLevel\" returns parent on \"top\" level.\r\n\r\n1.9.1 pl\r\n==============\r\n- [#47] [pdoMenu] Fixed processing &tplOuter when output is empty.\r\n- [#46] [pdoParser] Fixed processing of TVs with dots in name.\r\n- [#44] [pdoMenu] Improved handling of Wayfinder parameters \"includeDocs\" and \"excludeDocs\".\r\n- [#37] [pdoField] get the default, only if the field was empty.\r\n- [#34] Fixed processing of \"modSymLink\" documents.\r\n- [#32] Improved cache methods.\r\n- [#26] Replaced FIND_IN_SET() to FIELD().\r\n- [pdoFetch] Ability to work with objects, that has multiple primary keys.\r\n- [pdoPage] New parameter &cacheAnonymous.\r\n- [pdoMenu] New parameter &cacheAnonymous.\r\n- Added aliases for sort query in order of specified &resources: \"ids\" or \"resources\".\r\n- Removed unnecessary query in pdoFetch::getCollection().\r\n- Improved pdoFetch::getCollection().\r\n- Renamed pdoFetch::getObject() to getArray(). Now it uses getCollection for retrieve results.\r\n- pdoTools::setCache() now returns cacheKey.\r\n- pdoFetch::getObject() is now alias of pdoFetch::getArray().\r\n\r\n1.9.0 pl2\r\n==============\r\n- [pdoMenu] Chunks of parents and categories are now depends on the descendants and ignores parameter isfolder.\r\n- [pdoNeighbors] Speed improvements.\r\n- [#27] Ability to specify custom pdoFetch and pdoTools classes through FQN system settings.\r\n- [pdoParser] Handles TVs in resource tags.\r\n- [pdoParser] Handles output filters.\r\n- [pdoFetch] Improved method \"addTVFilters\", that used by \"tvFilters\" parameter in pdoResources.\r\n- [pdoSitemap] Pass the whole row so we can use more columns.\r\n\r\n1.9.0 rc\r\n==============\r\n- Improved method pdoTools::getChunk().\r\n- Improved method pdoTools::parseChunk().\r\n- Improved method pdoTools::fastProcess().\r\n- Improved method pdoTools::makePlaceholders().\r\n- Accelerated snippet pdoNeighbors.\r\n- Fixed bug in pdoUsers when usersgroups was specified by names.\r\n- getObject and getCollection() runs in separate instance.\r\n- Added pdoParser with FastField tags.\r\n- [pdoPage] Changed default value of parameter \"totalVar\" due to issues.\r\n- [#24] Fixed prepareTVs and empty tvPrefix.\r\n- [#23] [pdoResources] Ability to return ids to placeholder.\r\n- Fixed warning when getObject returns false.\r\n- Fixed placeholders prefix in recursive makePlaceholders.\r\n\r\n1.8.9 pl4\r\n==============\r\n- Added german lexicon.\r\n- [#20] Ability to specify not JSON string in &where=``.\r\n- [pdoPage] Added parameter \"pageCountVar\" for specifying name of variable with number of pages.\r\n- [pdoPage] Support Bootstrap3.\r\n- [pdoField] Ability to specify class for fetching field.\r\n- Improved joining of tables in pdoFetch.\r\n- Added preparing and processing TVs in getObject and getCollection methods.\r\n- Improved load of 3rd party models.\r\n\r\n1.8.8 pl2\r\n==============\r\n- Rewrited cache of snippets \"pdoMenu\" and \"pdoPage\".\r\n- New methods pdoTools::getCache() and pdoTools::setCache().\r\n- [pdoMenu] Fixed parameter \"tplParentRowActive\".\r\n- [#18] Fixed \"idx\" in pdoTools::defineChunk().\r\n\r\n1.8.7 pl\r\n==============\r\n- Added boolean parameter \"decodeJSON\" to specify whether or not decode JSON in results rows.\r\n- Removed default \"sortby\" and \"sortdir\" from class pdoFetch for better work of getCollection() method.\r\n\r\n1.8.6 pl2\r\n==============\r\n- Fixed possibly E_NOTICE when site has no extension packages installed.\r\n- [#17] [pdoMenu] Added placeholder [[+wf.menutitle]].\r\n- [#16] [pdoMenu] Disabled status verification of specified parents.\r\n- [#13] [pdoMenu] Improved work with root of multiple contexts.\r\n- [pdoMenu] Fixed bug when specified parent has only the one child.\r\n- [pdoResources] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\". It is disabled by default.\r\n\r\n1.8.5 pl\r\n==============\r\n- [#15] [pdoPage] Improved generation of links to pages.\r\n- [pdoMenu] Improved processing of classes \"modSymlink\" and \"modWeblink\".\r\n- [pdoBreadcrumbs] Improved processing of classes \"modSymlink\" and \"modWeblink\". Added parameter \"&useWeblink\".\r\n- [pdoNeighbors] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\".\r\n- [pdoSitemap] Added parameter \"&useWeblink\" and proper processing of classes \"modSymlink\" and \"modWeblink\".\r\n\r\n1.8.4 pl\r\n==============\r\n- [pdoCrumbs] Added ability to specify the crumbs root (defaulting to site_start)\r\n- [pdoCrumbs] Added ability to specify class_key (ie. to generate crumbs only for derivative classes)\r\n- More accuracy when try to decode json in fetch results.\r\n\r\n1.8.3 pl3\r\n==============\r\n- Improved preparation of template variables.\r\n- Improved transfer of additional parameters from snippet to results.\r\n- [pdoMenu] Added lexicon entries for parameters.\r\n- [pdoMenu] Allow to specify \"limit\" and \"offset\".\r\n- [#12] Added parameter \"toPlaceholder\".\r\n- Increased accuracy of timings log.\r\n\r\n1.8.1 pl2\r\n==============\r\n- Accelerated method pdoTools::getChunk().\r\n- Added snippet pdoMenu.\r\n- Added support for tags [^qt^] and [^q^].\r\n\r\n1.8.0 pl\r\n==============\r\n- [#10] [pdoPage] Added placeholder \"page\".\r\n- [#9] [pdoPage] Added placeholder \"pageCount\".\r\n- [#8] Improved support of big numbers when sorting by TVs.\r\n- Fixed work of pdoPage when it called multiple times on page.\r\n- Fixed mistype in pdoFetch::getCollection().\r\n\r\n1.8.0 rc5\r\n==============\r\n- Added processing of JSON fields. For example, you can use [[+extended.keyname]] in chunks of pdoUsers.\r\n- pdoTools was removed from system extension packages, but you can still use \"$modx->getService(\'pdoFetch\');\".\r\n- Fixed getting chunk without any parameters.\r\n- Added snippet pdoPage.\r\n\r\n1.8.0 beta1\r\n==============\r\n- Improved handling of \"default_text\" parameter in TVs.\r\n- Fixed and improved method pdoTools::buildTree().\r\n- The logic of build the conditions of the query moved into new method pdoFetch::additionalConditions().\r\n- Improved method pdoFetch::addSelects().\r\n- Improved method pdoFetch::addSort().\r\n- Improved some snippets in accordance to new abilities of pdoFetch: pdoResources, pdoNeighbors and pdoSitemap.\r\n\r\n1.7.4 pl\r\n==============\r\n- [#7] [pdoSitemap] Fixed hidden parameters \"&sortBy\" and \"&sortDir\" that used for compatibility with GoogleSiteMap.\r\n\r\n1.7.3 pl1\r\n==============\r\n- [pdoCrumbs] Fixed possible E_NOTICE on line 157.\r\n- [pdoCrumbs] Fixed generation of link to site start in relative mode.\r\n- [#6] pdoCrumbs and pdoNeighbors are now uses \"menutitle\" by default. If it is empty, will be used \"pagetitle\".\r\n\r\n1.7.2 pl1\r\n==============\r\n- [pdoField] Added new parameters: \"default=``\" and \"&field=``\".\r\n- [pdoField] Improved logic of \"&top=``\" and \"&topLevel=``\".\r\n- Added 2 new methods: pdoFetch::getObject() and pdoFetch::getCollection().\r\n- Ability to send arrays into common config parameters. JSON is still supported.\r\n- Improved select of default values in TVs.\r\n\r\n1.7.1 pl\r\n==============\r\n- [pdoCrumbs] Fixed work with \"modSymLink\" and \"modWebLink\" resources.\r\n\r\n1.7.0 pl1\r\n==============\r\n- New snippet pdoCrumbs.\r\n- New snippet pdoField.\r\n- New snippet pdoSitemap.\r\n- New snippet pdoNeighbors.\r\n- Ability to specify snippet for preparation of fetched rows by parameter \"&prepareSnippet=``\".\r\n- Added method pdoTools::checkPermissions() for checking user privileges to view the results.\r\n- Added @TEMPLATE binding. You can use name or id of any template. If empty - will use template of each row.\r\n- [pdoResources] Improved parameter \"&context\".\r\n- [pdoResources] Script properties are now passed to chunks. You can send any placeholders to it.\r\n\r\n1.6.0 pl1\r\n==============\r\n- Fixed compatibility issues in PHP < 5.3.\r\n\r\n1.6.0 pl\r\n==============\r\n- Added parameter \"&loadModels\" for comma-separated list of 3rd party components that needed for query.\r\n- Added parameters \"&prepareTVs\" and \"&processTVs\".\r\n- Added parameters \"&tvFilters\", \"&tvFiltersAndDelimiter\" and \"&tvFiltersAndDelimiter\".\r\n- Added support of parameters \"&sortbyTV\" and \"&sortdirTV\" for compatibility with getResources.\r\n- Added ability to use @INLINE and @FILE bindings in all template parameters.\r\n- Removed method pdoTools::getPlaceholders.\r\n\r\n1.5.0 pl2\r\n==============\r\n- Fixed sort of decimals in TVs.\r\n\r\n1.5.0 pl1\r\n==============\r\n- Added processing of simple [[~id]] placeholders in fastMode.\r\n- Added support of default value for TVs.\r\n- Improved sort by TVs of types \"number\" and \"date\".\r\n\r\n1.5.0 rc\r\n==============\r\n- [pdoUsers] Added new snippet \"pdoUsers\".\r\n- [pdoResources] Fixed \"toSeparatePlaceholders\".\r\n- [pdoResources] Parameter \"parents\" now supports dash prefix for excluding resources from query by parent.\r\n- [pdoResources] Fixed issue when snippet runs multiple times at one page.\r\n\r\n1.4.1 pl1\r\n==============\r\n- Improved \"context\" processing.\r\n- Fixed \"idx\" when multiple snippets called at one page.\r\n- Fixed default sortby when joined tables exists.\r\n\r\n1.4.1 beta3\r\n==============\r\n- Added parameters \"tplCondition\", \"tplOperator\" and \"conditionalTpls\".\r\n- Added parameter \"select\" for specifying needed columns of selected tables. Can be a JSON string with array.\r\n- Added parameter \"toSeparatePlaceholders\".\r\n- Improved \"pdoResources\" snippet.\r\n\r\n1.4.0 beta1\r\n==============\r\n- Ability to specify JSON string in \"sortby\", for example \"&sortby=`{\"pagetitle\":\"asc\",\"createdon\":\"desc\"}`\"\r\n- Added automatic replacement of tvs in \"where\" and \"having\" parameters.\r\n- Added automatic replacement of tvs in \"sortby\" parameter.\r\n- Removed example snippet\r\n- Added snippet \"pdoResources\", that could replace \"getResources\".\r\n- Added method pdoTools::defineChunk() for chunk of given idx.\r\n- Added \"memory usage\" in log.\r\n\r\n1.3.0\r\n==============\r\n- Improved placeholders processing when fastMode is enabled.\r\n- Added support of \"having\" conditions.\r\n\r\n1.2.1\r\n==============\r\n- Fixed not working \"includeTVs\" when \"leftJoin\" is empty.\r\n\r\n1.2.0\r\n==============\r\n- Native render of quick placeholders, such as \"<!--pdotools_introtext <blockquote>[[+introtext]]</blockquote>-->\".\r\n- Added joining of TVs in pdoFetch. Use parameter \"includeTVs\" with comma-separated list of template variables.\r\n- Added method pdoFetch::setConfig() for proper setting options when you run multiple pdoTools snippets at the one page.\r\n- Method pdoTools::makeArray is now recursive, for processing a multidimensional arrays of values.\r\n\r\n1.1.0\r\n==============\r\n- Improved getChunk function.\r\n\r\n1.0.1\r\n==============\r\n- Fixed setting total in \"chunks\" mode.\r\n- Improved displaying \"where\" condition in log.\r\n\r\n1.0.0\r\n==============\r\n- Initial release.\r\n\";s:7:\"license\";s:1121:\" The MIT License (MIT)\r\n\r\nCopyright © 2021 MODX RSC (Russian Speaking Community)\r\n\r\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\r\n\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\r\n\r\nTHE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.\r\n\";s:6:\"readme\";s:666:\"--------------------\r\npdoTools\r\n--------------------\r\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\r\n--------------------\r\n\r\nSmall library for creating fast snippets for MODX Revolution that works through PDO.\r\n\r\nRequired by Tickets and miniShop2.\r\n\r\nMain features\r\n- Builds queries with xPDO.\r\n- Retrieve results with PDO.\r\n- Improved pdoTools::getChunk() function, that processing placeholders faster, than original modX::getChunk().\r\n\r\npdoTools snippets will work so faster, than more fields you will retrieve from database at one query.\r\n\r\n--------------------\r\nFeel free to suggest ideas/improvements/bugs on GitHub:\r\nhttp://github.com/modx-pro/pdoTools/issues\r\n\";s:8:\"requires\";a:2:{s:3:\"php\";s:7:\">=7.2.0\";s:4:\"modx\";s:12:\">=3.0.0-beta\";}s:9:\"signature\";s:17:\"pdotools-3.0.2-pl\";s:6:\"action\";s:26:\"Workspace/Packages/Install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:45:\"/workspace/package/install/pdotools-3.0.2-pl/\";s:14:\"package_action\";i:0;}', 'pdoTools', 'a:38:{s:2:\"id\";s:36:\"99066891-d1c9-480a-a135-3187b5a15b34\";s:7:\"package\";s:36:\"99066742-e84b-454a-b849-ccf686744af4\";s:12:\"display_name\";s:17:\"pdotools-3.0.2-pl\";s:4:\"name\";s:8:\"pdoTools\";s:7:\"version\";s:5:\"3.0.2\";s:13:\"version_major\";s:1:\"3\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"2\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:9:\"bezumkin2\";s:11:\"description\";s:25:\"<p>pdoTools for MODX3</p>\";s:12:\"instructions\";s:77:\"<p></p><p>For example just run:</p><p></p><p></p><p></p><p></p><p></p><p></p>\";s:9:\"changelog\";s:162:\"<a href=\"https://raw.githubusercontent.com/bezumkin/pdoTools/master/core/components/pdotools/docs/changelog.txt\" title=\"\" target=\"_blank\">See on GitHub</a><p></p>\";s:9:\"createdon\";s:25:\"2023-04-11T11:41:05+00:00\";s:9:\"createdby\";s:10:\"sergant210\";s:8:\"editedon\";s:25:\"2023-05-04T19:23:58+00:00\";s:10:\"releasedon\";s:25:\"2023-04-11T11:41:05+00:00\";s:9:\"downloads\";s:6:\"416933\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:4:\"true\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:21:\"The MIT License (MIT)\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:36:\"9861b09b-7176-455b-a9c1-bb7728924ad8\";s:8:\"supports\";s:3:\"3.0\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99066891-d1c9-480a-a135-3187b5a15b34&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";s:9:\"signature\";s:17:\"pdotools-3.0.2-pl\";s:11:\"supports_db\";s:0:\"\";s:16:\"minimum_supports\";s:3:\"3.0\";s:9:\"breaks_at\";s:5:\"100.0\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:36:\"99066891-d1c9-480a-a135-3187b5a15b34\";s:7:\"version\";s:36:\"99066891-d1c9-480a-a135-3187b5a15b34\";s:8:\"filename\";s:31:\"pdotools-3.0.2-pl.transport.zip\";s:9:\"downloads\";s:4:\"5255\";s:6:\"lastip\";s:12:\"94.46.148.35\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99066891-d1c9-480a-a135-3187b5a15b34&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";}s:17:\"package-signature\";s:17:\"pdotools-3.0.2-pl\";s:10:\"categories\";s:14:\"administration\";s:4:\"tags\";s:0:\"\";}', 3, 0, 2, 'pl', 0);
INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('tinymcerte-2.0.9-pl', '2024-02-02 22:41:41', '2024-02-02 19:42:17', '2024-02-02 22:42:17', 0, 1, 1, 0, 'tinymcerte-2.0.9-pl.transport.zip', NULL, 'a:9:{s:7:\"license\";s:15215:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\n\";s:6:\"readme\";s:639:\"# TinyMCE Rich Text Editor\n\nTinyMCE 5 for MODX Revolution.\n\n- Author: John Peca <john@modx.com>\n- Upgrade to TinyMCE 5: Thomas Jakobi <office@treehillstudio.com>\n- License: GNU GPLv2\n\n## Features\n\nTinyMCE is a platform independent web based Javascript HTML WYSIWYG editor. It\nallows non-technical users to format content without knowing how to code. This\nrelease was done as a companion project for the https://a11y.modx.com to provide\nan accessible RTE. It is based on the TinyMCE 5 code base.\n\n## Installation\n\nMODX Package Management\n\n## Usage\n\nInstall via package manager.\n\n## GitHub Repository\n\nhttps://github.com/modxcms/tinymce-rte\n\";s:9:\"changelog\";s:4857:\"# Changelog\n\nAll notable changes to this project will be documented in this file.\n\nThe format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),\nand this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).\n\n## [2.0.9] - 2022-09-28\n\n### Fixed\n\n- Fix `max_height` system setting not casted right\n\n## [2.0.8] - 2022-08-01\n\n### Added\n\n- Add a default `max_height` system setting to restrict the height of the editor with an enabled `autoresize` plugin\n\n### Fixed\n\n- Fill the TinyMCE `document_base_url` with the `site_url` context setting instead of the `site_url` system setting [#121]\n\n## [2.0.7] - 2022-03-18\n\n### Fixed\n\n- Avoid and log an invalid TinyMCE configuration\n- Get the right manager language in MODX 3.x\n\n## [2.0.6] - 2022-02-16\n\n### Added\n\n- Change `lightgray` skin system setting to `modx` during an update\n- Add `autoresize` plugin per default\n\n## [2.0.5] - 2021-12-27\n\n### Added\n\n- Unescape escaped regex strings (i.e. to allow javascript regex filters in an external config) [#117] \n\n### Fix\n\n- Escape MySQL reserved word rank [#119]\n\n## [2.0.4] - 2021-12-03\n\n### Added\n\n- Load the TinyMCE configuration even if the resource is not using a rich text editor\n- Allow drop of MODX elements to the editor content in richtext template variables\n\n### Fix\n\n- Fix an uncaught type error when the current resource has richtext disabled and uses ContentBlocks\n\n## [2.0.3] - 2021-10-01\n\n### Fix\n\n- Fix setting the link text after selecting a resource\n\n## [2.0.2] - 2021-09-30\n\n### Changed\n\n- Update TinyMCE to 5.9.2\n- Restored compatibility for PHP 7.1 and less\n\n## [2.0.1] - 2021-05-14\n\n### Changed\n\n- Update TinyMCE to 5.8.0\n- Improve the configuration output in the manager html code\n\n### Fixed\n\n- Compatibility with moregallery and Collections\n\n## [2.0.0] - 2021-03-19\n\n### Added\n\n- MODX skintool.json for http://skin.tiny.cloud/t5/\n- MODX 3 compatibility\n- link_list_enable system setting\n\n### Changed\n\n- Upgrade TinyMCE to 5\n- Refactored modxlink TinyMCE plugin to use the nested link_list option\n- Refactored modximage TinyMCE plugin\n- Recursive merge the external config with the config\n- Remove the deprecated file_browser_callback and use the file_picker_callback \n- Allow direct JSON based style_formats items\n\n## [1.4.0] - 2020-09-11\n\n### Added\n\n- Build the modx skin with the internal tinymce grunt workflow\n\n### Changed\n\n- Extend/Fix the modx skin styles\n- Fix an issue with the table tool buttons\n\n## [1.3.4] - 2020-08-12\n\n### Added\n\n- The modx skin extends the lightgray skin, that way the css changes in the lightgray skin are available after a TinyMCE update\n\n### Changed\n\n- Some lexicon changes/improvements\n- Upgrade TinyMCE to 4.9.11\n\n### Removed\n\n- Removed some unnecessary files\n\n## [1.3.3] - 2020-02-04\n\n### Changed\n\n- Bugfix for not using full width when the editor is moved to a new tab [#86]\n- Upgrade TinyMCE to 4.9.7\n\n## [1.3.2] - 2019-06-13\n\n### Changed\n\n- Bugfix for showing only an english user interface\n\n## [1.3.1] - 2019-06-05\n\n### Added\n\n- Added field displaying resource pagetitle of MODX link [#83]\n- Added image_caption option for TinyMCE [#60]\n\n### Changed\n\n- Expanding the locale list [#82]\n- Get settings from a JSON encoded array in tinymcerte.settings system setting\n- Make the entity_encoding configurable [#79]\n- Upgrade TinyMCE to 4.9.4\n\n## [1.3.0] - 2019-05-22\n\n### Added\n\n- Manage TinyMCE release download by npm\n- Add Gruntfile.js that copies the current release of TinyMCE to the corresponding folders\n- Add version info to the registered assets\n- Adding Russian translation\n\n### Changed\n\n- Upgrade TinyMCE to 4.8.3\n\n## [1.2.1] - 2017-12-16\n\n### Added\n\n- Added language strings for the system settings added in 1.2.0\n\n### Changed\n\n- Escaped special HTML chars in the modxlink plugin\n- Fixing \'Media browser does not close when clicking on close\'\n\n## [1.2.0] - 2017-05-21\n\n### Added\n\n- Added `relative_urls` & `remove_script_host` settings\n- Added system setting to define \'valid_elements\'\n- Added \'links_across_contexts\' setting to limit links to the current context resources\n- Added support for configured default Media Source in context settings\n- CMPs can now pass any TinyMCE configuration property using the `OnRichTextEditorInit` system event\n\n### Changed\n\n- Plugin now makes use of `modManagerController::addJavascript` instead of `modX::regClientStartupScript`\n- Upgraded to TinyMCE 4.5.7\n\n## [1.1.1] - 2016-01-20\n\n### Added\n\n- Add tel: prefix\n- Add modximage - left/right image positioning\n- Add modx skin (Credits goes to fourroses666)\n- Add skin system setting\n\n### Changed\n\n- Allow base path parsing in the external_config system setting\n- Sync tinymce and textarea\n\n## [1.1.0] - 2015-07-13\n\n### Added\n\n- Add autocomplete search for links\n- Add external config\n- Support for link classes\n\n## [1.0.0] - 2015-02-23\n\n### Added\n\n- Initial release\n\";s:8:\"requires\";a:2:{s:3:\"php\";s:5:\">=5.6\";s:4:\"modx\";s:5:\">=2.7\";}s:9:\"signature\";s:19:\"tinymcerte-2.0.9-pl\";s:6:\"action\";s:26:\"Workspace/Packages/Install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/tinymcerte-2.0.9-pl/\";s:14:\"package_action\";i:0;}', 'TinyMCE Rich Text Editor', 'a:38:{s:2:\"id\";s:36:\"9906688b-915c-4ad8-aabe-fb7fda61755d\";s:7:\"package\";s:36:\"9906674e-a7e9-483d-b149-86bece97cae2\";s:12:\"display_name\";s:19:\"tinymcerte-2.0.9-pl\";s:4:\"name\";s:24:\"TinyMCE Rich Text Editor\";s:7:\"version\";s:5:\"2.0.9\";s:13:\"version_major\";s:1:\"2\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"9\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:8:\"theboxer\";s:11:\"description\";s:340:\"<p>TinyMCE is a platform independent web based Javascript HTML WYSIWYG editor. It allows non-technical users to format content without knowing how to code. This release was done as a companion project for the <a href=\"https://a11y.modx.com\">https://a11y.modx.com</a> to provide an accessible RTE. It is based on the TinyMCE 5 code base.</p>\";s:12:\"instructions\";s:46:\"Download and install via MODX package manager.\";s:9:\"changelog\";s:50:\"- Fix `max_height` system setting not casted right\";s:9:\"createdon\";s:25:\"2022-09-28T10:15:29+00:00\";s:9:\"createdby\";s:4:\"jako\";s:8:\"editedon\";s:25:\"2023-05-04T19:23:56+00:00\";s:10:\"releasedon\";s:25:\"2022-09-28T10:15:29+00:00\";s:9:\"downloads\";s:6:\"146548\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:4:\"true\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:36:\"9861b09b-7176-455b-a9c1-bb7728924ad8\";s:8:\"supports\";s:3:\"2.7\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=9906688b-915c-4ad8-aabe-fb7fda61755d&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";s:9:\"signature\";s:19:\"tinymcerte-2.0.9-pl\";s:11:\"supports_db\";s:0:\"\";s:16:\"minimum_supports\";s:3:\"2.7\";s:9:\"breaks_at\";s:5:\"100.0\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:36:\"9906688b-915c-4ad8-aabe-fb7fda61755d\";s:7:\"version\";s:36:\"9906688b-915c-4ad8-aabe-fb7fda61755d\";s:8:\"filename\";s:33:\"tinymcerte-2.0.9-pl.transport.zip\";s:9:\"downloads\";s:5:\"10050\";s:6:\"lastip\";s:0:\"\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=9906688b-915c-4ad8-aabe-fb7fda61755d&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";}s:17:\"package-signature\";s:19:\"tinymcerte-2.0.9-pl\";s:10:\"categories\";s:15:\"richtexteditors\";s:4:\"tags\";s:0:\"\";}', 2, 0, 9, 'pl', 0),
('translit-1.0.0-beta', '2024-02-02 22:41:25', '2024-02-02 19:42:22', '2024-02-02 22:42:22', 0, 1, 1, 0, 'translit-1.0.0-beta.transport.zip', NULL, 'a:7:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:453:\"--------------------\nExtension: translit\n--------------------\nVersion: 1.0.0-beta\nReleased: October 20, 2010\nSince: October 20, 2010\nAuthor: Jason Coward <jason@modx.com>\n\nA MODx Revolution Core Extension, the translit package provides a custom transliteration service class. When installed,\nthis is automatically available for the core Friendly URL alias transliteration process for Resources. You can also use\nthe service in your plugins and snippets.\";s:9:\"signature\";s:19:\"translit-1.0.0-beta\";s:6:\"action\";s:26:\"Workspace/Packages/Install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/translit-1.0.0-beta/\";s:14:\"package_action\";i:0;}', 'translit', 'a:38:{s:2:\"id\";s:36:\"99066779-e494-4d6a-b6d9-98937c2b7ed8\";s:7:\"package\";s:36:\"9906672b-1666-4b4d-9324-bfe3ccd1ec0c\";s:12:\"display_name\";s:19:\"translit-1.0.0-beta\";s:4:\"name\";s:8:\"translit\";s:7:\"version\";s:5:\"1.0.0\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"0\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:4:\"beta\";s:8:\"vrelease\";s:4:\"beta\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:8:\"opengeek\";s:11:\"description\";s:585:\"<p>A service class that allows custom transliteration tables to be used when auto-creating or sanitizing friendly URL aliases in MODx Revolution. This initial beta release includes three tables that can be specified as the friendly_alias_translit System Setting:</p>\n<p><ol>\n<li>noaccents</li>\n<li>russian</li>\n<li>german</li>\n</ol>\nCustom named transliteration tables can be manually added to the {core_path}components/translit/model/modx/translit/tables/ directory and configured. Additional contributed transliteration tables will be included in future releases of the package.\n</p>\";s:12:\"instructions\";s:37:\"<p>Install via Package Management</p>\";s:9:\"changelog\";s:0:\"\";s:9:\"createdon\";s:25:\"2010-10-20T11:53:35+00:00\";s:9:\"createdby\";s:8:\"opengeek\";s:8:\"editedon\";s:25:\"2023-05-04T19:22:07+00:00\";s:10:\"releasedon\";s:25:\"2010-10-20T11:57:11+00:00\";s:9:\"downloads\";s:6:\"218575\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:4:\"true\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:36:\"9861b09b-7176-455b-a9c1-bb7728924ad8\";s:8:\"supports\";s:3:\"2.0\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99066779-e494-4d6a-b6d9-98937c2b7ed8&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";s:9:\"signature\";s:19:\"translit-1.0.0-beta\";s:11:\"supports_db\";s:0:\"\";s:16:\"minimum_supports\";s:3:\"2.0\";s:9:\"breaks_at\";s:5:\"100.0\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:36:\"99066779-e494-4d6a-b6d9-98937c2b7ed8\";s:7:\"version\";s:36:\"99066779-e494-4d6a-b6d9-98937c2b7ed8\";s:8:\"filename\";s:33:\"translit-1.0.0-beta.transport.zip\";s:9:\"downloads\";s:6:\"218720\";s:6:\"lastip\";s:12:\"94.46.148.31\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:120:\"https://rest.modx.com/extras/download/?id=99066779-e494-4d6a-b6d9-98937c2b7ed8&uuid=dbffb57b-ea3d-4caf-a406-a2cd22a84a7c\";}s:17:\"package-signature\";s:19:\"translit-1.0.0-beta\";s:10:\"categories\";s:36:\"internationalization,core-extensions\";s:4:\"tags\";s:15:\"transliteration\";}', 1, 0, 0, 'beta', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci,
  `service_url` tinytext COLLATE utf8mb4_general_ci,
  `username` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `api_key` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint NOT NULL DEFAULT '10',
  `properties` mediumtext COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2023-10-03 14:14:08', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `cachepwd` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `class_key` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\modUser',
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remote_data` text COLLATE utf8mb4_general_ci,
  `hash_class` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MODX\\Revolution\\Hashing\\modNative',
  `salt` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `primary_group` int UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text COLLATE utf8mb4_general_ci,
  `sudo` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', '$2y$10$0OZQkV6BuidvrrB/BWOCte3p/qRF0D1KELVQ7JK2Yblp1b8Oe4G3W', '', 'MODX\\Revolution\\modUser', 1, NULL, NULL, 'MODX\\Revolution\\Hashing\\modNative', 'b51468c7987ad1b3dcc3ce14d24496a1', 1, NULL, 1, 1706902804);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int UNSIGNED NOT NULL,
  `internalKey` int UNSIGNED NOT NULL,
  `fullname` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `phone` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `mobilephone` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `blocked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int NOT NULL DEFAULT '0',
  `blockedafter` int NOT NULL DEFAULT '0',
  `logincount` int NOT NULL DEFAULT '0',
  `lastlogin` int NOT NULL DEFAULT '0',
  `thislogin` int NOT NULL DEFAULT '0',
  `failedlogincount` int NOT NULL DEFAULT '0',
  `sessionid` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `dob` int NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `state` varchar(25) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `zip` varchar(25) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `fax` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `comment` text COLLATE utf8mb4_general_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `extended` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Администратор по умолчанию', 'admin@example.com', '', '', 0, 0, 0, 4, 1706960991, 1707135328, 0, '9haqfhsq67s437lg39mumft66vkbnplf', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci,
  `authority` int UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `value` text COLLATE utf8mb4_general_ci,
  `xtype` varchar(75) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'core',
  `area` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(15) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `sender` int UNSIGNED NOT NULL DEFAULT '0',
  `recipient` int UNSIGNED NOT NULL DEFAULT '0',
  `private` tinyint NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_general_ci,
  `xtype` varchar(75) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'core',
  `area` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `path` varchar(191) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2024-02-02 22:39:59', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`user`,`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_deprecated_call`
--
ALTER TABLE `modx_deprecated_call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `method` (`method`),
  ADD KEY `call_count` (`call_count`),
  ADD KEY `caller` (`caller`),
  ADD KEY `caller_file` (`caller_file`),
  ADD KEY `caller_line` (`caller_line`);

--
-- Индексы таблицы `modx_deprecated_method`
--
ALTER TABLE `modx_deprecated_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `definition` (`definition`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_formit_forms`
--
ALTER TABLE `modx_formit_forms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Индексы таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `modx_migx_configs`
--
ALTER TABLE `modx_migx_configs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_migx_config_elements`
--
ALTER TABLE `modx_migx_config_elements`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_migx_elements`
--
ALTER TABLE `modx_migx_elements`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_migx_formtabs`
--
ALTER TABLE `modx_migx_formtabs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_migx_formtab_fields`
--
ALTER TABLE `modx_migx_formtab_fields`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT для таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_deprecated_call`
--
ALTER TABLE `modx_deprecated_call`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `modx_deprecated_method`
--
ALTER TABLE `modx_deprecated_method`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_formit_forms`
--
ALTER TABLE `modx_formit_forms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT для таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_migx_configs`
--
ALTER TABLE `modx_migx_configs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_migx_config_elements`
--
ALTER TABLE `modx_migx_config_elements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_migx_elements`
--
ALTER TABLE `modx_migx_elements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_migx_formtabs`
--
ALTER TABLE `modx_migx_formtabs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_migx_formtab_fields`
--
ALTER TABLE `modx_migx_formtab_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
