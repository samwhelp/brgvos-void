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
export default class SchemeColorCursorThemeExtension extends Extension {
    _settings;
    _preferences;
    _accentColorChangedId = 0;
    _colorSchemeChangedId = 0;
    _customThemeChangedId = 0;
    cursorThemes = Object.values({});
    enable() {
        // Get the interface settings
        this._settings = new Gio.Settings({
            schema: "org.gnome.desktop.interface",
        });
        // Initializing cursor themes
        this.cursorThemes = Object.values({
            'default': "Fluent-cursors",
            'prefer-dark': "Fluent-dark-cursors"
        });
        // Get Preferences
        this._preferences = this.getSettings();
        // Connect to color scheme changes
        this._colorSchemeChangedId = this._settings.connect("changed::color-scheme", this._onSchemeColorChanged.bind(this));
        // Initial theme update
        this._onSchemeColorChanged();
    }
    disable() {
        // Disconnect the signal handler
        if (this._settings && this._accentColorChangedId) {
            this._settings.disconnect(this._accentColorChangedId);
            this._accentColorChangedId = 0;
        }
        if (this._preferences && this._customThemeChangedId) {
            this._preferences.disconnect(this._customThemeChangedId);
            this._customThemeChangedId = 0;
        }
        // Clear the cursorThemes array
        this.cursorThemes = [];
        // Optionally reset to default cursor theme
        this._setCursorTheme("Adwaita");
        // Null out settings
        this._settings = null;
        this._preferences = null;
    }
    _onSchemeColorChanged() {
        if(this._settings?.get_string("color-scheme") === 'prefer-dark')
        {
            // Get custom theme from preferences
            const customTheme = this._preferences?.get_string(`prefer-dark`);
            // Get the corresponding cursor theme or default to Adwaita
            const cursorTheme = customTheme || "Adwaita";
            // Reset cursor theme
            this._settings?.reset("cursor-theme");
            // Set the cursor theme
            this._setCursorTheme(cursorTheme);
        }
        else
        {
            // Get custom theme from preferences
            const customTheme = this._preferences?.get_string(`default`);
            // Get the corresponding cursor theme or default to Adwaita
            const cursorTheme = customTheme || "Adwaita";
            // Reset cursor theme
            this._settings?.reset("cursor-theme");
            // Set the cursor theme
            this._setCursorTheme(cursorTheme);
        }
    }
    _setCursorTheme(themeName) {
        // Set the cursor theme
        this._settings?.set_string("cursor-theme", themeName);
    }
}
