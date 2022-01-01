/* main.vala
 *
 * Copyright 2022 Otoniel Reyes Galay
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace LibrePOS {
    public class Application : Gtk.Application {
        public Application () {
            Object (
                application_id: "com.github.librepos.librepos",
                flags: ApplicationFlags.FLAGS_NONE
            );
        }

        protected override void activate () {
            var window = active_window;

            if (active_window == null) {
    			window = new LibrePOS.Window (this);
	    	}

	    	window.present ();
        }

        public static int main (string[] args) {
            return (new LibrePOS.Application ()).run (args);
        }
    }
}

