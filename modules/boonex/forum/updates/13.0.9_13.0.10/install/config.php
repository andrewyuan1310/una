<?php
/**
 * Copyright (c) UNA, Inc - https://una.io
 * MIT License - https://opensource.org/licenses/MIT
 */

$aConfig = array(
    /**
     * Main Section.
     */
    'title' => 'Discussions',
    'version_from' => '13.0.9',
    'version_to' => '13.0.10',
    'vendor' => 'BoonEx',

    'compatible_with' => array(
        '13.0.0-RC4'
    ),

    /**
     * 'home_dir' and 'home_uri' - should be unique. Don't use spaces in 'home_uri' and the other special chars.
     */
    'home_dir' => 'boonex/forum/updates/update_13.0.9_13.0.10/',
    'home_uri' => 'forum_update_1309_13010',

    'module_dir' => 'boonex/forum/',
    'module_uri' => 'forum',

    'db_prefix' => 'bx_forum_',
    'class_prefix' => 'BxForum',

    /**
     * Installation/Uninstallation Section.
     */
    'install' => array(
        'execute_sql' => 1,
        'update_files' => 1,
        'update_languages' => 0,
        'clear_db_cache' => 1,
    ),

    /**
     * Category for language keys.
     */
    'language_category' => 'Discussions',

    /**
     * Files Section
     */
    'delete_files' => array(),
);
