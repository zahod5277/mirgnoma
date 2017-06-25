Office.Auth = {

	initialize: function(selector) {
		var elem = $(selector);
		if (!elem.length) {return false;}

		$(document).on('submit', selector, function(e) {
			e.preventDefault();

			$(this).ajaxSubmit({
				url: OfficeConfig.actionUrl,
				dataType: 'json',
				type: 'post',
				data: {
					pageId: OfficeConfig.pageId
				},
				beforeSubmit: function(formData, $form) {
					// Additional check for old version of form
					var found = false;
					for (var i in formData) {
						if (formData.hasOwnProperty(i) && formData[i]['name'] == 'action') {
							found = true;
						}
					}
					if (!found) {
						formData.push({name: 'action', value: 'auth/sendLink'});
					}
					// --
					$form.find('input, button, a').attr('disabled', true);
					return true;
				},
				success: function(response, status, xhr, $form) {
					$form.find('input, button, a').attr('disabled', false);
					if (response.success) {
						Office.Message.success(response.message);
						$form.resetForm();
					}
					else {
						Office.Message.error(response.message, false);
					}
					if (response.data.refresh) {
						document.location.href = response.data.refresh;
					}
				}
			});
			return false;
		});

		return true;
	}

};

Office.Auth.initialize('#office-auth-form form');