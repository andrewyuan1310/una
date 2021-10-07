SET @sName = 'bx_artificer';


-- page: service blocks
SET @iBlockOrder = (SELECT `order` FROM `sys_pages_blocks` WHERE `object` = 'sys_home' AND `cell_id` = 0 ORDER BY `order` DESC LIMIT 1);
INSERT INTO `sys_pages_blocks`(`object`, `cell_id`, `module`, `title_system` , `title`, `designbox_id`, `visible_for_levels`, `type`, `content`, `deletable`, `copyable`, `order`) VALUES 
('sys_home', 0, @sName, '', '_bx_artificer_page_block_title_splash_lite', 0, 1, 'raw', '<style>\r\n.bx-artificer-splash .bx-form-element .bx-btn.bx-btn-primary {\r\n    width: 100%;\r\n}\r\n</style>\r\n<div class="bx-artificer-splash max-w-7xl ring-1 ring-gray-200 dark:ring-gray-800 bg-gray-50 dark:bg-gray-900 shadow-sm rounded divide-y divide-gray-200 dark:divide-gray-800 my-2 lg:my-3 mx-2 lg:mx-3 xl:mx-auto overflow-hidden">\r\n    <div class="relative pb-8">\r\n        <main class="mt-6">\r\n            <div class="mx-auto max-w-7xl">\r\n                <div class="lg:grid lg:grid-cols-12 lg:gap-8">\r\n                    <div class="px-6 lg:px-8 text-center md:max-w-2xl md:mx-auto lg:col-span-6 lg:text-left lg:flex lg:items-center">\r\n                      <div>\r\n                        <h1 class="text-5xl tracking-tight font-bold text-gray-800 dark:text-white xl:text-6xl">\r\n                            <span class="block"><bx_text:_bx_artificer_txt_splash_welcome_l1 /></span>\r\n                            <span class="block pb-3 bg-clip-text text-transparent bg-gradient-to-r from-green-500 to-blue-500 sm:pb-5"><bx_text:_bx_artificer_txt_splash_welcome_l2 /></span>\r\n                        </h1>\r\n                        <p class="mt-3 text-base font-normal text-gray-700 dark:text-gray-300 sm:mt-5 sm:text-xl lg:text-lg xl:text-xl">\r\n                            <span class="block"><bx_text:_bx_artificer_txt_splash_welcome_l3 /></span>\r\n                        </p>\r\n                      </div>\r\n                    </div>\r\n                    <div class="relative mt-16 px-6 lg:mt-0 lg:px-8 lg:col-span-6 lg:ml-4">\r\n                        <div class="absolute top-0 -left-4 w-96 h-96 bg-purple-700 rounded-full  filter blur-3xl z-0 opacity-60 animate-goo"></div>\r\n                        <div class="absolute top-12 -right-4 w-96 h-96 bg-red-700 rounded-full filter blur-3xl z-0 opacity-60 animate-goo animation-delay-2000"></div>  \r\n                        <div class="absolute -bottom-16 left-1/4 w-96 h-96 bg-green-700 rounded-full filter blur-3xl z-0 opacity-60 animate-goo animation-delay-4000"></div> \r\n                        <div class="opacity-80 relative max-w-lg ring-1 ring-white dark:ring-gray-700 sm:overflow-hidden bg-gray-50 dark:bg-gray-800 shadow-2xl rounded divide-y divide-gray-300 dark:divide-gray-700 m-2 lg:m-3  mx-auto bg-opacity-80">\r\n                            <div class="p-8">\r\n                                <div>\r\n                                    <h2 class="text-2xl font-semibold text-gray-800 dark:text-gray-200"><bx_text:_bx_artificer_txt_splash_login_title /></h2>\r\n                                    <div class="mt-6">{{~system:login_form:TemplServiceLogin["no_join_text no_auth_buttons"]~}}</div>\r\n                                    <div class="mt-6 relative">\r\n                                        <div class="absolute inset-0 flex items-center" aria-hidden="true">\r\n                                            <div class="w-full border-t border-gray-300 dark:border-gray-700"></div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class="pt-6">\r\n                                        <a class="bx-btn w-full flex justify-center py-2 px-4 border border-transparent rounded shadow-sm text-sm font-medium text-white bg-green-600 hover:bg-green-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500" href="__join_link__"><bx_text:_bx_artificer_txt_splash_login_join /></a>\r\n                                    </div>\r\n                                    <div class="mt-4">{{~system:member_auth_code:TemplServiceLogin~}}</div>\r\n                                </div>\r\n                            </div>\r\n                            <div class="px-4 py-6 bg-white dark:bg-gray-900 bg-opacity-50 sm:px-10">\r\n                                <p class="text-xs leading-5 text-gray-500">{{~bx_artificer:get_splash_marker["login_agreement"]~}}</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </main>\r\n    </div>\r\n</div>', 0, 1, IFNULL(@iBlockOrder, 0) + 1), 
('sys_home', 0, @sName, '', '_bx_artificer_page_block_title_splash', 0, 1, 'raw', '<style>\r\n.bx-artificer-splash .bx-form-element .bx-btn.bx-btn-primary {\r\n    width: 100%;\r\n}\r\n</style>\r\n<div class="bx-artificer-splash relative bg-gradient-to-br from-gray-100 to-blue-100 dark:bg-gradient-to-r dark:from-gray-900 dark:to-black overflow-hidden">\r\n    {{~bx_artificer:get_splash_marker["header"]~}}\r\n    <div class="relative pt-6 pb-16 sm:pb-24">\r\n        <main class="mt-16">\r\n            <div class="mx-auto max-w-7xl">\r\n                <div class="lg:grid lg:grid-cols-12 lg:gap-8">\r\n                    <div class="px-6 lg:px-8 text-center md:max-w-2xl md:mx-auto lg:col-span-6 lg:text-left lg:flex lg:items-center">\r\n                        <div>\r\n                            <h1 class="text-5xl tracking-tight font-bold text-gray-800 dark:text-white xl:text-6xl">\r\n                                <span class="block"><bx_text:_bx_artificer_txt_splash_welcome_l1 /></span>                      \r\n                                <span class="block pb-3 bg-clip-text text-transparent bg-gradient-to-r from-green-500 to-blue-500 sm:pb-5"><bx_text:_bx_artificer_txt_splash_welcome_l2 /></span>\r\n                            </h1>\r\n                            <p class="mt-3 text-base font-normal text-gray-700 dark:text-gray-300 sm:mt-5 sm:text-xl lg:text-lg xl:text-xl">\r\n                                <span class="block"><bx_text:_bx_artificer_txt_splash_welcome_l3 /></span>\r\n                            </p>\r\n                        </div>\r\n                    </div>\r\n                    <div class="relative mt-16 px-6 sm:mt-24 lg:mt-0 lg:px-8 lg:col-span-6">\r\n                        <div class="absolute top-0 -left-4 w-96 h-96 bg-purple-700 rounded-full  filter blur-3xl z-0 opacity-60 animate-goo"></div>\r\n                        <div class="absolute top-12 -right-4 w-96 h-96 bg-red-700 rounded-full filter blur-3xl z-0 opacity-60 animate-goo animation-delay-2000"></div>  \r\n                        <div class="absolute -bottom-16 left-1/4 w-96 h-96 bg-green-700 rounded-full filter blur-3xl z-0 opacity-60 animate-goo animation-delay-4000"></div> \r\n                        <div class="opacity-80 relative max-w-lg ring-1 ring-white dark:ring-gray-700 sm:overflow-hidden bg-gray-50 dark:bg-gray-800 shadow-2xl rounded divide-y divide-gray-300 dark:divide-gray-700 m-2 lg:m-3  mx-auto bg-opacity-80">\r\n                            <div class="p-8">\r\n                                <div>\r\n                                    <h2 class="text-2xl font-semibold text-gray-800 dark:text-gray-200"><bx_text:_bx_artificer_txt_splash_login_title /></h2>\r\n                                    <div class="mt-6">{{~system:login_form:TemplServiceLogin["no_join_text no_auth_buttons"]~}}</div>\r\n                                    <div class="mt-6 relative">\r\n                                        <div class="absolute inset-0 flex items-center" aria-hidden="true">\r\n                                            <div class="w-full border-t border-gray-300 dark:border-gray-700"></div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class="pt-6">\r\n                                        <a class="bx-btn w-full flex justify-center py-2 px-4 border border-transparent rounded shadow-sm text-sm font-medium text-white bg-green-600 hover:bg-green-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500" href="__join_link__"><bx_text:_bx_artificer_txt_splash_login_join /></a>\r\n                                    </div>\r\n                                    <div class="mt-4">{{~system:member_auth_code:TemplServiceLogin~}}</div>\r\n                                </div>\r\n                            </div>\r\n                            <div class="px-4 py-6 bg-white dark:bg-gray-900 bg-opacity-50 sm:px-10">\r\n                                <p class="text-xs leading-5 text-gray-500">{{~bx_artificer:get_splash_marker["login_agreement"]~}}</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </main>\r\n    </div>\r\n</div>\r\n<div class="bg-gray-100 dark:bg-gray-900 pt-12 sm:pt-16">\r\n    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">\r\n        <div class="max-w-4xl mx-auto text-center">\r\n            <h2 class="text-3xl font-semibold text-gray-900 dark:text-gray-100 sm:text-4xl"><bx_text:_bx_artificer_txt_splash_stats_l1 /></h2>\r\n            <p class="mt-3 text-xl font-light text-gray-500 sm:mt-4"><bx_text:_bx_artificer_txt_splash_stats_l2 /></p>\r\n        </div>\r\n    </div>\r\n    <div class="mt-10 pb-12 bg-white dark:bg-black sm:pb-16">\r\n        <div class="relative">\r\n            <div class="absolute inset-0 h-1/2 bg-gray-100 dark:bg-gray-900 "></div>\r\n            <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">\r\n                <div class="max-w-7xl mx-auto">\r\n                    <dl class="rounded-lg bg-white dark:bg-gray-800 shadow-lg sm:grid sm:grid-cols-3">\r\n                        <div class="flex flex-col border-b border-gray-100 dark:border-gray-700 p-4 pt-5 text-center sm:border-0 sm:border-r">\r\n                            <dt class="order-2 mt-2 text-lg leading-6 font-light text-gray-500"><bx_text:_bx_artificer_txt_splash_stats_c1 /></dt>\r\n                            <dd class="order-1 text-3xl font-bold text-blue-600">{{~bx_artificer:get_splash_marker["members"]~}}</dd>\r\n                        </div>\r\n                        <div class="flex flex-col border-t border-b border-gray-100 dark:border-gray-900 p-4 pt-5  text-center sm:border-0 sm:border-l sm:border-r">\r\n                            <dt class="order-2 mt-2 text-lg leading-6 font-light text-gray-500"><bx_text:_bx_artificer_txt_splash_stats_c2 /></dt>\r\n                            <dd class="order-1 text-3xl font-bold text-blue-600">{{~bx_artificer:get_splash_marker["posts"]~}}</dd>\r\n                        </div>\r\n                        <div class="flex flex-col border-t border-gray-100  dark:border-gray-700 p-4 pt-5 text-center sm:border-0 sm:border-l">\r\n                            <dt class="order-2 mt-2 text-lg leading-6 font-light text-gray-500"><bx_text:_bx_artificer_txt_splash_stats_c3 /></dt>\r\n                            <dd class="order-1 text-3xl font-bold text-blue-600">{{~bx_artificer:get_splash_marker["comments"]~}}</dd>\r\n                        </div>\r\n                    </dl>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 0, 1, IFNULL(@iBlockOrder, 0) + 2);


-- menu: sidebar menu
INSERT INTO `sys_menu_templates` (`id`, `template`, `title`, `visible`) VALUES
(ROUND(RAND()*(9999 - 1000) + 1000), 'menu_sidebar_site.html', '_bx_artificer_menu_template_title_sidebar_site', 1);
SET @iTemplId = (SELECT `id` FROM `sys_menu_templates` WHERE `template`='menu_sidebar_site.html' AND `title`='_bx_artificer_menu_template_title_sidebar_site' LIMIT 1);

INSERT INTO `sys_objects_menu`(`object`, `title`, `set_name`, `module`, `template_id`, `deletable`, `active`, `override_class_name`, `override_class_file`) VALUES 
('bx_artificer_sidebar_site', '_bx_artificer_menu_title_sidebar_site', 'sys_site', @sName, @iTemplId, 0, 1, 'BxTemplMenuSidebarSite', '');


-- alerts
INSERT INTO `sys_alerts_handlers` (`name`, `class`, `file`, `service_call`) VALUES 
(@sName, 'BxArtificerAlertsResponse', 'modules/boonex/artificer/classes/BxArtificerAlertsResponse.php', '');
SET @iHandler := LAST_INSERT_ID();

INSERT INTO `sys_alerts` (`unit`, `action`, `handler_id`) VALUES
('system', 'get_object', @iHandler),
('profile', 'unit', @iHandler);


-- injections
INSERT INTO `sys_injections` (`name`, `page_index`, `key`, `type`, `data`, `replace`, `active`) VALUES
(@sName, 0, 'injection_head', 'service', 'a:2:{s:6:"module";s:12:"bx_artificer";s:6:"method";s:14:"include_css_js";}', 0, 1);