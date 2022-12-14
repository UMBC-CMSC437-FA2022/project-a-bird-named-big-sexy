# This build ships the icon files for budgie desktop

# Leveraged in budgie-control-center
version_data = configuration_data()
version_data.set('version', meson.project_version())

version_file = configure_file(
    input: 'budgie-version.xml.in',
    output: 'budgie-version.xml',
    configuration: version_data
)

actions_icons = [
    join_paths('.', 'icons', 'actions', 'notification-alert-symbolic.svg'),
    join_paths('.', 'icons', 'actions', 'notification-disabled-symbolic.svg'),
    join_paths('.', 'icons', 'actions', 'pane-hide-symbolic.svg'),
    join_paths('.', 'icons', 'actions', 'pane-show-symbolic.svg'),
    join_paths('.', 'icons', 'actions', 'system-log-out-symbolic.svg'),
    join_paths('.', 'icons', 'actions', 'system-restart-symbolic.svg'),
    join_paths('.', 'icons', 'actions', 'system-suspend-symbolic.svg'),
    join_paths('.', 'icons', 'actions', 'system-hibernate-symbolic.svg'),
]

app_icons = [
    join_paths('.', 'icons', 'apps', 'budgie-desktop-symbolic.svg'),
    join_paths('.', 'icons', 'apps', 'system-tray-symbolic.svg'),
    join_paths('.', 'icons', 'apps', 'icon-task-list-symbolic.svg'),
    join_paths('.', 'icons', 'apps', 'spacer-symbolic.svg'),
    join_paths('.', 'icons', 'apps', 'clock-applet-symbolic.svg'),
    join_paths('.', 'icons', 'apps', 'workspace-switcher-symbolic.svg'),
    join_paths('.', 'icons', 'apps', 'notifications-applet-symbolic.svg'),
    join_paths('.', 'icons', 'apps', 'separator-symbolic.svg'),
    join_paths('.', 'icons', 'apps', 'task-list-symbolic.svg'),
    join_paths('.', 'icons', 'apps', 'my-caffeine-on-symbolic.svg'),
]

status_icons = [
    join_paths('.', 'icons', 'status', 'num-lock-symbolic.svg'),
    join_paths('.', 'icons', 'status', 'caps-lock-symbolic.svg'),
    join_paths('.', 'icons', 'status', 'budgie-caffeine-cup-full.svg'),
    join_paths('.', 'icons', 'status', 'budgie-caffeine-cup-empty.svg'),
]

install_data(
    join_paths('.', 'backgrounds', 'default.jpg'),
    install_dir: join_paths(datadir, 'backgrounds', 'budgie')
)

install_data(
    version_file,
    install_dir: join_paths(datadir, 'budgie')
)

install_data(
    actions_icons,
    install_dir: join_paths(datadir, 'icons', 'hicolor', 'scalable', 'actions'),
)

install_data(
    app_icons,
    install_dir: join_paths(datadir, 'icons', 'hicolor', 'scalable', 'apps'),
)

install_data(
    status_icons,
    install_dir: join_paths(datadir, 'icons', 'hicolor', 'scalable', 'status'),
)

install_man('budgie-desktop.1')
install_man('budgie-panel.1')
install_man('budgie-run-dialog.1')
install_man('budgie-daemon.1')
install_man('budgie-desktop-settings.1')
install_man('budgie-polkit-dialog.1')
install_man('budgie-wm.1')
