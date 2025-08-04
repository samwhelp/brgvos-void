/* extension.js
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * SPDX-License-Identifier: GPL-2.0-or-later
 */
import { Extension } from 'resource:///org/gnome/shell/extensions/extension.js';
import Gio from 'gi://Gio';
const GLib = imports.gi.GLib;

export default class AccentColorGtkThemeExtension extends Extension {
    _settings;
    _preferences;
    _accentColorChangedId = 0;
    _colorSchemeChangedId = 0;
    _customThemeChangedId = 0;
    _stateSwitchChangedId = 0;
    _pathThemeChangedId = 0;
    gtkThemesLight = Object.values({});
    gtkThemesDark = Object.values({});

    // Next method is run when the extension is enabled
    enable() {
        // Get the interface settings
        this._settings = new Gio.Settings({
            schema: "org.gnome.desktop.interface",
        });
        // Initializing gtk themes
        this.gtkThemesDark = Object.values({
            blue: "Fluent-round-Dark",
            teal: "Fluent-round-teal-Dark",
            green: "Fluent-round-green-Dark",
            yellow: "Fluent-round-yellow-Dark",
            orange: "Fluent-round-orange-Dark",
            red: "Fluent-round-red-Dark",
            pink: "Fluent-round-pink-Dark",
            purple: "Fluent-round-purple-Dark",
            slate: "Fluent-round-grey-Dark",
        });
        this.gtkThemesLight = Object.values({
            blue: "Fluent-round-Light",
            teal: "Fluent-round-teal-Light",
            green: "Fluent-round-green-Light",
            yellow: "Fluent-round-yellow-Light",
            orange: "Fluent-round-orange-Light",
            red: "Fluent-round-red-Light",
            pink: "Fluent-round-pink-Light",
            purple: "Fluent-round-purple-Light",
            slate: "Fluent-round-grey-Light",
        });
        // Get Preferences
        this._preferences = this.getSettings();
        // Connect to accent color changes
        this._accentColorChangedId = this._settings.connect("changed::accent-color", this._onSomethingChanged.bind(this));
        // Connect to color scheme changes
        this._colorSchemeChangedId = this._settings.connect("changed::color-scheme", this._onSomethingChanged.bind(this));
        // Connect to switch Create link to gtk4 local config
        this._stateSwitchChangedId = this._preferences.connect("changed::set-link-gtk4", this._onSomethingChanged.bind(this));        
        // Connect to editable Path Theme 
        this._pathThemeChangedId = this._preferences.connect("changed::set-theme-path", this._onSomethingChanged.bind(this)); 
        // Initial theme update
        this._onSomethingChanged();
    }

    // Next metod is run when the estension is disabled    
    disable() {
        // Disconnect the signal handler
        if (this._settings && this._accentColorChangedId) {
            this._settings.disconnect(this._accentColorChangedId);
            this._accentColorChangedId = 0;
        }
        if (this._preferences && this._stateSwitchChangedId) {
            this._preferences.disconnect(this._stateSwitchChangedId);
            this._stateSwitchChangedId = 0;
        }
        // Clear the gtkThemes array
        this.gtkThemesDark = [];
        this.gtkThemesLight = [];
        // Optionally reset to default gtk theme - Adwaita
        this._setGtkTheme("Adwaita");
        // Null out settings
        this._settings = null;
        this._preferences = null;
    }

    // Next metod is called when extension is enabled, color accent, edit a new path to the themes, or the switch for set link gtk4 local is changed
    _onSomethingChanged() {
        // Get the state of the switch Create link to gtk4 local config
        const changeSetLinkGTK4 = this._preferences?.get_boolean("set-link-gtk4");
        // Check color scheme and set the user theme
        if(this._settings?.get_string("color-scheme") === 'prefer-dark') {
            // Get the current accent color
            const accentColor = this._settings?.get_string("accent-color") ?? "blue";
            // Get custom theme from preferences
            const customTheme = this._preferences?.get_string(`${accentColor}-theme-dark`);
            // Get the corresponding gtk theme or default to Adwaita
            const gtkTheme = customTheme || "Adwaita";
            // Set the gtk theme
            this._setGtkTheme(gtkTheme);
            // Set link for libadwaita
            if(changeSetLinkGTK4) {
                // If the swith is ON first delete actual symlinks
                this._remSymlinkLocalGtk4();
                // Then create new symlink to the light user theme
                this._createSymlinkLocalGtk4(gtkTheme);
            } else {
                // Else if the switch is OFF delete actual symlinks
                this._remSymlinkLocalGtk4();
            }
        }
        else {
            // Get the current accent color
            const accentColor = this._settings?.get_string("accent-color") ?? "blue";
            // Get custom theme from preferences
            const customTheme = this._preferences?.get_string(`${accentColor}-theme-light`);
            // Get the corresponding gtk theme or default to Adwaita
            const gtkTheme = customTheme || "Adwaita";
            // Set the gtk theme
            this._setGtkTheme(gtkTheme);
            // Set link for libadwaita
            if(changeSetLinkGTK4) {
                // If the swith is ON first delete actual symlinks
                this._remSymlinkLocalGtk4();
                // Then create new symlink to the dark user theme
                this._createSymlinkLocalGtk4(gtkTheme);
            } else {
                // Else if the switch is OFF delete actual symlinks
                this._remSymlinkLocalGtk4();
            }
        }
    }

    // Next method create symlinks to local gtk 4 config
    _createSymlinkLocalGtk4(themeName) {
        const command_0 = 'mkdir -p $HOME/.config/gtk-4.0';
        GLib.spawn_async(null, ['sh', '-c', command_0], null, GLib.SpawnFlags.SEARCH_PATH, null);        
        const setPathTheme = this._preferences?.get_string(`set-theme-path`);
        const command_1 = `ln -sf ${setPathTheme}/${themeName}/gtk-4.0/assets $HOME/.config/gtk-4.0/assets`;
        GLib.spawn_async(null, ['sh', '-c', command_1], null, GLib.SpawnFlags.SEARCH_PATH, null);
        const command_2 = `ln -sf ${setPathTheme}/${themeName}/gtk-4.0/gtk-dark.css $HOME/.config/gtk-4.0/gtk-dark.css`;
        GLib.spawn_async(null, ['sh', '-c', command_2], null, GLib.SpawnFlags.SEARCH_PATH, null);
        const command_3 = `ln -sf ${setPathTheme}/${themeName}/gtk-4.0/gtk.css $HOME/.config/gtk-4.0/gtk.css`;
        GLib.spawn_async(null, ['sh', '-c', command_3], null, GLib.SpawnFlags.SEARCH_PATH, null);
    }

    // Next method remove symlinks from local gtk 4 config
    _remSymlinkLocalGtk4() {
        const command_rm_1 = `rm -rf $HOME/.config/gtk-4.0/assets`;
        GLib.spawn_async(null, ['sh', '-c', command_rm_1], null, GLib.SpawnFlags.SEARCH_PATH, null);
        const command_rm_2 = `rm -f $HOME/.config/gtk-4.0/gtk-dark.css`;
        GLib.spawn_async(null, ['sh', '-c', command_rm_2], null, GLib.SpawnFlags.SEARCH_PATH, null);
        const command_rm_3 = `rm -f $HOME/.config/gtk-4.0/gtk.css`;
        GLib.spawn_async(null, ['sh', '-c', command_rm_3], null, GLib.SpawnFlags.SEARCH_PATH, null);
    }
    
    // Next method set the theme
    _setGtkTheme(themeName) {
        // Set the gtk theme
        this._settings?.set_string("gtk-theme", themeName);
    }
}
