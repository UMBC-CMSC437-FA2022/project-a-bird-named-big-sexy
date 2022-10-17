/*
 * This file is part of budgie-desktop
 *
 * Copyright © 2015-2022 Budgie Desktop Developers
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 */

public class SoundRavenPlugin : Budgie.RavenPlugin, Peas.ExtensionBase {
	public Budgie.RavenWidget new_widget_instance(string uuid, GLib.Settings settings) {
		return new SoundRavenWidget(uuid, settings);
	}
}

public class SoundRavenWidget : Budgie.RavenWidget {
	public SoundRavenWidget(string uuid, GLib.Settings settings) {
		initialize(uuid, settings);
	}
}

[ModuleInit]
public void peas_register_types(TypeModule module) {
	// boilerplate - all modules need this
	var objmodule = module as Peas.ObjectModule;
	objmodule.register_extension_type(typeof(Budgie.RavenPlugin), typeof(SoundRavenPlugin));
}