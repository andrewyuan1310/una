<?php
/**
 * Copyright (c) UNA, Inc - https://una.io
 * MIT License - https://opensource.org/licenses/MIT
 */

$aConfig = array(
    /**
     * Main Section.
     */
    'title' => 'Wiki',
    'version_from' => '11.0.0',
    'version_to' => '12.0.0',
    'vendor' => 'BoonEx',

    'compatible_with' => array(
        '12.0.0-B1'
    ),

    /**
     * 'home_dir' and 'home_uri' - should be unique. Don't use spaces in 'home_uri' and the other special chars.
     */
    'home_dir' => 'boonex/wiki/updates/update_11.0.0_12.0.0/',
    'home_uri' => 'wiki_update_1100_1200',

    'module_dir' => 'boonex/wiki/',
    'module_uri' => 'wiki',

    'db_prefix' => 'bx_wiki_',
    'class_prefix' => 'BxWiki',

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
    'language_category' => 'Wiki',

    /**
     * Files Section
     */
    'delete_files' => array(),
);
