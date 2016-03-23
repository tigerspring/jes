;(function($){

$.jgrid = $.jgrid || {};
$.extend($.jgrid,{
	defaults : {
		recordtext: "��¼ {0} - {1} �ܼ�¼�� {2}",
		emptyrecords: "������",
		loadtext: "��ȡ������...",
		pgtext : "�ڼ�ҳ {0} ��ҳ��{1}"
	},
	search : {
		caption: "������...",
		Find: "����",
		Reset: "����",
		odata : ['����', '������', 'С��', 'С�ڻ����','����','���ڻ����', '��ʼ��','û�п�ʼ��','��','����','������','��������','����','������'],
		groupOps: [	{ op: "����", text: "ȫ��" },	{ op: "����",  text: "�κ�һ������" }	],
		matchText: " ƥ��",
		rulesText: " ����"
	},
	edit : {
		addCaption: "���Ӽ�¼",
		editCaption: "�༭��¼",
		bSubmit: "�ύ",
		bCancel: "ȡ��",
		bClose: "�ر�",
		saveData: "�����Ѿ����޸���! �Ƿ񱣴��޸�?",
		bYes : "��",
		bNo : "��",
		bExit : "ȡ��",
		msg: {
			required:"�ֶ��Ǳ����",
			number:"Please, enter valid number��������Ч����",
			minValue:"value must be greater than or equal to ���ֱ�����ڻ����",
			maxValue:"value must be less than or equal to���ֱ���С�ڻ����",
			email: "is not a valid e-mail������Ч�����ַ",
			integer: "Please, enter valid integer value��������Ч����ֵ",
			date: "Please, enter valid date value��������Ч����",
			url: "is not a valid URL. Prefix required ('http://' or 'https://')������ЧURL��ǰ׺�����ǣ���http://�����ߡ�https://����",
			nodefined : " is not defined!û�ж��壡",
			novalue : " return value is required!����Ż�ֵ��",
			customarray : "Custom function should return array!�Զ��幦��Ӧ�÷������飡",
			customfcheck : "Custom function should be present in case of custom checking!Ϊ��ֹ�Զ�����Ӧ�������Զ��幦�ܣ�"
			
		}
	},
	view : {
		caption: "View Record��¼��ͼ",
		bClose: "Close�ر�"
	},
	del : {
		caption: "Deleteɾ��",
		msg: "Delete selected record(s)?ɾ����ѡ��¼��",
		bSubmit: "Deleteɾ��",
		bCancel: "Cancelȡ��"
	},
	nav : {
		edittext: "",
		edittitle: "Edit selected row�༭��ѡ��",
		addtext:"",
		addtitle: "Add new row����һ��",
		deltext: "",
		deltitle: "Delete selected rowɾ����ѡ��",
		searchtext: "",
		searchtitle: "Find records���Ҽ�¼",
		refreshtext: "",
		refreshtitle: "Reload Grid����װ�ر��",
		alertcap: "Warning����",
		alerttext: "Please, select row��ѡ����",
		viewtext: "",
		viewtitle: "View selected row�鿴��ѡ��"
	},
	col : {
		caption: "Select columnsѡ����",
		bSubmit: "Okȷ��",
		bCancel: "Cancelȡ��"
	},
	errors : {
		errcap : "Error����",
		nourl : "No url is setû������url",
		norecords: "No records to processû�м�¼�ɴ���",
		model : "Length of colNames <> colModel!colNames�ĳ��Ȳ�����colModel��"
	},
	formatter : {
		integer : {thousandsSeparator: ",", defaultValue: '0'},
		number : {decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 2, defaultValue: '0.00'},
		currency : {decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 2, prefix: "", suffix:"", defaultValue: '0.00'},
		date : {
			dayNames:   [
				"Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat",
				"����", "��һ", "�ܶ�", "����", "����", "����", "����"
			],
			monthNames: [
				"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
				"һ��", "����", "����", "����", "����", "����", "����", "����", "����", "ʮ��", "ʮһ��", "ʮ����",
			],
			AmPm : ["am","pm","AM","PM"],
			S: function (j) {return j < 11 || j > 13 ? ['st', 'nd', 'rd', 'th'][Math.min((j - 1) % 10, 3)] : 'th';},
			srcformat: 'Y-m-d',
			newformat: 'n/j/Y',
			masks : {
				// see http://php.net/manual/en/function.date.php for PHP format used in jqGrid
				// and see http://docs.jquery.com/UI/Datepicker/formatDate
				// and https://github.com/jquery/globalize#dates for alternative formats used frequently
				// one can find on https://github.com/jquery/globalize/tree/master/lib/cultures many
				// information about date, time, numbers and currency formats used in different countries
				// one should just convert the information in PHP format
				ISO8601Long:"Y-m-d H:i:s",
				ISO8601Short:"Y-m-d",
				// short date:
				//    n - Numeric representation of a month, without leading zeros
				//    j - Day of the month without leading zeros
				//    Y - A full numeric representation of a year, 4 digits
				// example: 3/1/2012 which means 1 March 2012
				ShortDate: "n/j/Y", // in jQuery UI Datepicker: "M/d/yyyy"
				// long date:
				//    l - A full textual representation of the day of the week
				//    F - A full textual representation of a month
				//    d - Day of the month, 2 digits with leading zeros
				//    Y - A full numeric representation of a year, 4 digits
				LongDate: "l, F d, Y", // in jQuery UI Datepicker: "dddd, MMMM dd, yyyy"
				// long date with long time:
				//    l - A full textual representation of the day of the week
				//    F - A full textual representation of a month
				//    d - Day of the month, 2 digits with leading zeros
				//    Y - A full numeric representation of a year, 4 digits
				//    g - 12-hour format of an hour without leading zeros
				//    i - Minutes with leading zeros
				//    s - Seconds, with leading zeros
				//    A - Uppercase Ante meridiem and Post meridiem (AM or PM)
				FullDateTime: "l, F d, Y g:i:s A", // in jQuery UI Datepicker: "dddd, MMMM dd, yyyy h:mm:ss tt"
				// month day:
				//    F - A full textual representation of a month
				//    d - Day of the month, 2 digits with leading zeros
				MonthDay: "F d", // in jQuery UI Datepicker: "MMMM dd"
				// short time (without seconds)
				//    g - 12-hour format of an hour without leading zeros
				//    i - Minutes with leading zeros
				//    A - Uppercase Ante meridiem and Post meridiem (AM or PM)
				ShortTime: "g:i A", // in jQuery UI Datepicker: "h:mm tt"
				// long time (with seconds)
				//    g - 12-hour format of an hour without leading zeros
				//    i - Minutes with leading zeros
				//    s - Seconds, with leading zeros
				//    A - Uppercase Ante meridiem and Post meridiem (AM or PM)
				LongTime: "g:i:s A", // in jQuery UI Datepicker: "h:mm:ss tt"
				SortableDateTime: "Y-m-d\\TH:i:s",
				UniversalSortableDateTime: "Y-m-d H:i:sO",
				// month with year
				//    Y - A full numeric representation of a year, 4 digits
				//    F - A full textual representation of a month
				YearMonth: "F, Y" // in jQuery UI Datepicker: "MMMM, yyyy"
			},
			reformatAfterEdit : false
		},
		baseLinkUrl: '',
		showAction: '',
		target: '',
		checkbox : {disabled:true},
		idName : 'id'
	}
});
})(jQuery);
