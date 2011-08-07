// Harfang - A Web development framework
// Copyright (C) 2011  Nicolas Juneau <n.juneau@gmail.com>
// Full copyright notice can be found in the project root's "COPYRIGHT" file
//
// This file is part of Harfang.
//
// Harfang is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Harfang is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Harfang.  If not, see <http://www.gnu.org/licenses/>.

package harfang.controller;

import harfang.configuration.ServerConfiguration;

/**
 * Provides a default implementation for the Controller interface. In this
 * implementation, the init method memorises the configuration and handleRequest
 * always return true, always providing access to the controller functions.
 */
class AbstractController implements Controller {

    private var configuration : ServerConfiguration;

    /**
     * Called by the URL dispatcher, just after constructing the controller.
     * In this implementation, we memorise the server configuration in an attribute.
     *
     * @param configuration The server configuration
     */
    public function init(configuration : ServerConfiguration) : Void {
        this.configuration = configuration;
    }

    /**
     * Handles the HTTP request - called when the URL dispatcher calls the
     * controller, just before dispatching the call to the controller function
     *
     * @return True if you want the dispatcher to call the controller function
     * associated with it in the URL mapping. False if you want to prevent it
     * from calling the controller function. By default, it returns true.
     */
    public function handleRequest() : Bool {
        return true;
    }

    /**
     * Returns the server configuration
     * @return The server configuration
     */
    private function getConfiguration() : ServerConfiguration {
        return this.configuration;
    }

}