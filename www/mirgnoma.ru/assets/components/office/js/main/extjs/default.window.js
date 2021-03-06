OfficeExt.window.Default = function(config) {
	config = config || {};

	Ext.applyIf(config, {
		title: '',
		url: OfficeExt.config.connector_url,
		cls: 'modx-window ' + (OfficeExt.config.modx23 ? 'modx23 ' : ' ') + config.cls,
		width: 600,
		autoHeight: true,
		allowDrop: false,
		record: {},
		baseParams: {},
		fields: this.getFields(config),
		keys: this.getKeys(config),
		buttons: this.getButtons(config),
		listeners: this.getListeners(config),
	});
	OfficeExt.window.Default.superclass.constructor.call(this, config);

	this.on('hide', function() {
		var w = this;
		window.setTimeout(function() {
			w.close();
		}, 200);
	});
};
Ext.extend(OfficeExt.window.Default, MODx.Window, {

	getFields: function(config) {
		return [];
	},

	getButtons: function(config) {
		return [{
			text: config.cancelBtnText || _('cancel'),
			scope: this,
			handler: function() {
				config.closeAction !== 'close'
					? this.hide()
					: this.close();
			}
		}, {
			text: config.saveBtnText || _('save'),
			cls: 'primary-button',
			scope: this,
			handler: this.submit,
		}];
	},

	getKeys: function(config) {
		return [{
			key: Ext.EventObject.ENTER,
			shift: true,
			fn: function() {
				this.submit();
			}, scope: this
		}];
	},

	getListeners: function() {
		return {};
	},

	loadDropZones: function() {
	}

});
Ext.reg('office-window-default', OfficeExt.window.Default);
