Ext.namespace('miniShop2.utils');

// https://code.google.com/p/strftime-js/
Date.ext={};Date.ext.util={};Date.ext.util.xPad=function(x,pad,r){if(typeof (r)=="undefined"){r=10}for(;parseInt(x,10)<r&&r>1;r/=10){x=pad.toString()+x}return x.toString()};Date.prototype.locale="en-GB";if(document.getElementsByTagName("html")&&document.getElementsByTagName("html")[0].lang){Date.prototype.locale=document.getElementsByTagName("html")[0].lang}Date.ext.locales={};Date.ext.locales.en={a:["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],A:["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],b:["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],B:["January","February","March","April","May","June","July","August","September","October","November","December"],c:"%a %d %b %Y %T %Z",p:["AM","PM"],P:["am","pm"],x:"%d/%m/%y",X:"%T"};Date.ext.locales["en-US"]=Date.ext.locales.en;Date.ext.locales["en-US"].c="%a %d %b %Y %r %Z";Date.ext.locales["en-US"].x="%D";Date.ext.locales["en-US"].X="%r";Date.ext.locales["en-GB"]=Date.ext.locales.en;Date.ext.locales["en-AU"]=Date.ext.locales["en-GB"];Date.ext.formats={a:function(d){return Date.ext.locales[d.locale].a[d.getDay()]},A:function(d){return Date.ext.locales[d.locale].A[d.getDay()]},b:function(d){return Date.ext.locales[d.locale].b[d.getMonth()]},B:function(d){return Date.ext.locales[d.locale].B[d.getMonth()]},c:"toLocaleString",C:function(d){return Date.ext.util.xPad(parseInt(d.getFullYear()/100,10),0)},d:["getDate","0"],e:["getDate"," "],g:function(d){return Date.ext.util.xPad(parseInt(Date.ext.util.G(d)/100,10),0)},G:function(d){var y=d.getFullYear();var V=parseInt(Date.ext.formats.V(d),10);var W=parseInt(Date.ext.formats.W(d),10);if(W>V){y++}else{if(W===0&&V>=52){y--}}return y},H:["getHours","0"],I:function(d){var I=d.getHours()%12;return Date.ext.util.xPad(I===0?12:I,0)},j:function(d){var ms=d-new Date(""+d.getFullYear()+"/1/1 GMT");ms+=d.getTimezoneOffset()*60000;var doy=parseInt(ms/60000/60/24,10)+1;return Date.ext.util.xPad(doy,0,100)},m:function(d){return Date.ext.util.xPad(d.getMonth()+1,0)},M:["getMinutes","0"],p:function(d){return Date.ext.locales[d.locale].p[d.getHours()>=12?1:0]},P:function(d){return Date.ext.locales[d.locale].P[d.getHours()>=12?1:0]},S:["getSeconds","0"],u:function(d){var dow=d.getDay();return dow===0?7:dow},U:function(d){var doy=parseInt(Date.ext.formats.j(d),10);var rdow=6-d.getDay();var woy=parseInt((doy+rdow)/7,10);return Date.ext.util.xPad(woy,0)},V:function(d){var woy=parseInt(Date.ext.formats.W(d),10);var dow1_1=(new Date(""+d.getFullYear()+"/1/1")).getDay();var idow=woy+(dow1_1>4||dow1_1<=1?0:1);if(idow==53&&(new Date(""+d.getFullYear()+"/12/31")).getDay()<4){idow=1}else{if(idow===0){idow=Date.ext.formats.V(new Date(""+(d.getFullYear()-1)+"/12/31"))}}return Date.ext.util.xPad(idow,0)},w:"getDay",W:function(d){var doy=parseInt(Date.ext.formats.j(d),10);var rdow=7-Date.ext.formats.u(d);var woy=parseInt((doy+rdow)/7,10);return Date.ext.util.xPad(woy,0,10)},y:function(d){return Date.ext.util.xPad(d.getFullYear()%100,0)},Y:"getFullYear",z:function(d){var o=d.getTimezoneOffset();var H=Date.ext.util.xPad(parseInt(Math.abs(o/60),10),0);var M=Date.ext.util.xPad(o%60,0);return(o>0?"-":"+")+H+M},Z:function(d){return d.toString().replace(/^.*\(([^)]+)\)$/,"$1")},"%":function(d){return"%"}};Date.ext.aggregates={c:"locale",D:"%m/%d/%y",h:"%b",n:"\n",r:"%I:%M:%S %p",R:"%H:%M",t:"\t",T:"%H:%M:%S",x:"locale",X:"locale"};Date.ext.aggregates.z=Date.ext.formats.z(new Date());Date.ext.aggregates.Z=Date.ext.formats.Z(new Date());Date.ext.unsupported={};Date.prototype.strftime=function(fmt){if(!(this.locale in Date.ext.locales)){if(this.locale.replace(/-[a-zA-Z]+$/,"") in Date.ext.locales){this.locale=this.locale.replace(/-[a-zA-Z]+$/,"")}else{this.locale="en-GB"}}var d=this;while(fmt.match(/%[cDhnrRtTxXzZ]/)){fmt=fmt.replace(/%([cDhnrRtTxXzZ])/g,function(m0,m1){var f=Date.ext.aggregates[m1];return(f=="locale"?Date.ext.locales[d.locale][m1]:f)})}var str=fmt.replace(/%([aAbBCdegGHIjmMpPSuUVwWyY%])/g,function(m0,m1){var f=Date.ext.formats[m1];if(typeof (f)=="string"){return d[f]()}else{if(typeof (f)=="function"){return f.call(d,d)}else{if(typeof (f)=="object"&&typeof (f[0])=="string"){return Date.ext.util.xPad(d[f[0]](),f[1])}else{return m1}}}});d=null;return str};

miniShop2.utils.formatDate = function(string) {
	if (string && string != '0000-00-00 00:00:00' && string != 0) {
		var date = /^[0-9]+$/.test(string)
			? new Date(string * 1000)
			: new Date(string.replace(/(\d+)-(\d+)-(\d+)/, '$2/$3/$1'));

		return date.strftime(MODx.config.ms2_date_format);
	}
	else {
		return '&nbsp;';
	}
};

miniShop2.utils.userLink = function(val,cell,row) {
	if (!val) {return '';}
	var action = MODx.action ? MODx.action['security/user/update'] : 'security/user/update';
	var url = 'index.php?a='+action+'&id='+row.data['user_id'];

	return '<a href="' + url + '" target="_blank" class="ms2-link">' + val + '</a>'
};

miniShop2.utils.productLink = function(val,cell,row) {
	if (!val) {return '';}
	else if (!row.data['product_id']) {return val;}

	var action = MODx.action ? MODx.action['resource/update'] : 'resource/update';
	var url = 'index.php?a='+action+'&id='+row.data['product_id'];

	return '<a href="' + url + '" target="_blank" class="ms2-link">' + val + '</a>'
};

miniShop2.utils.Hash = {
	get: function() {
		var vars = {}, hash, splitter, hashes;
		if (!this.oldbrowser()) {
			var pos = window.location.href.indexOf('?');
			hashes = (pos != -1) ? decodeURIComponent(window.location.href.substr(pos + 1)) : '';
			splitter = '&';
		}
		else {
			hashes = decodeURIComponent(window.location.hash.substr(1));
			splitter = '/';
		}

		if (hashes.length == 0) {return vars;}
		else {hashes = hashes.split(splitter);}

		for (var i in hashes) {
			if (hashes.hasOwnProperty(i)) {
				hash = hashes[i].split('=');
				if (typeof hash[1] == 'undefined') {
					vars['anchor'] = hash[0];
				}
				else {
					vars[hash[0]] = hash[1];
				}
			}
		}
		return vars;
	}

	,set: function(vars) {
		var hash = '';
		for (var i in vars) {
			if (vars.hasOwnProperty(i)) {
				hash += '&' + i + '=' + vars[i];
			}
		}

		if (!this.oldbrowser()) {
			if (hash.length != 0) {
				hash = '?' + hash.substr(1);
			}
			window.history.pushState(hash, '', document.location.pathname + hash);
		}
		else {
			window.location.hash = hash.substr(1);
		}
	}

	,add: function(key, val) {
		var hash = this.get();
		hash[key] = val;
		this.set(hash);
	}

	,remove: function(key) {
		var hash = this.get();
		delete hash[key];
		this.set(hash);
	}

	,clear: function() {
		this.set({});
	}

	,oldbrowser: function() {
		return !(window.history && history.pushState);
	}
};