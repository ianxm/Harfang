// Harfang - A Web development framework
// Copyright (C) 2011  Nicolas Juneau
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

package server.demo.controllers;

import php.Lib;

import harfang.server.Controller;

import server.components.views.ViewComposite;

/**
 * Index controller of the application - show the demo's index
 */
class IndexController extends Controller {

    /**
     * Handler for the index page, renders the index view
     */
    public function handleARequest() : Void {
        // Output the result
        var indexView : ViewComposite = new ViewComposite("blog_view_index");
        Lib.print(indexView.render({param:""}));
    }
}