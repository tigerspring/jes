;(function($){

$.jgrid = $.jgrid || {};
$.extend($.jgrid,{
	defaults : {
		recordtext: "记录 {0} - {1} 总记录数 {2}",
		emptyrecords: "无数据",
		loadtext: "获取数据中...",
		pgtext : "第几页 {0} 总页数{1}"
	},
	search : {
		caption: "搜索中...",
		Find: "搜索",
		Reset: "重置",
		odata : ['等于', '不等于', '小于', '小于或等于','大于','大于或等于', '开始以','没有开始以','在','不在','结束以','不结束以','包含','不包含'],
		groupOps: [	{ op: "并集", text: "全集" },	{ op: "交集",  text: "任何一个集合" }	],
		matchText: " 匹配",
		rulesText: " 规则"
	},
	edit : {
		addCaption: "增加记录",
		editCaption: "编辑记录",
		bSubmit: "提交",
		bCancel: "取消",
		bClose: "关闭",
		saveData: "数据已经被修改了! 是否保存修改?",
		bYes : "是",
		bNo : "否",
		bExit : "取消",
		msg: {
			required:"字段是必须的",
			number:"Please, enter valid number请输入有效数字",
			minValue:"value must be greater than or equal to 数字必须大于或等于",
			maxValue:"value must be less than or equal to数字必须小于或等于",
			email: "is not a valid e-mail不是有效邮箱地址",
			integer: "Please, enter valid integer value请输入有效整数值",
			date: "Please, enter valid date value请输入有效日期",
			url: "is not a valid URL. Prefix required ('http://' or 'https://')不是有效URL。前缀必须是（“http://”或者“https://”）",
			nodefined : " is not defined!没有定义！",
			novalue : " return value is required!必须放回值！",
			customarray : "Custom function should return array!自定义功能应该返回数组！",
			customfcheck : "Custom function should be present in case of custom checking!为防止自定义检查应该生成自定义功能！"
			
		}
	},
	view : {
		caption: "View Record记录视图",
		bClose: "Close关闭"
	},
	del : {
		caption: "Delete删除",
		msg: "Delete selected record(s)?删除已选记录？",
		bSubmit: "Delete删除",
		bCancel: "Cancel取消"
	},
	nav : {
		edittext: "",
		edittitle: "Edit selected row编辑所选行",
		addtext:"",
		addtitle: "Add new row新增一行",
		deltext: "",
		deltitle: "Delete selected row删除所选行",
		searchtext: "",
		searchtitle: "Find records查找记录",
		refreshtext: "",
		refreshtitle: "Reload Grid重新装载表格",
		alertcap: "Warning警告",
		alerttext: "Please, select row请选择行",
		viewtext: "",
		viewtitle: "View selected row查看所选行"
	},
	col : {
		caption: "Select columns选择列",
		bSubmit: "Ok确定",
		bCancel: "Cancel取消"
	},
	errors : {
		errcap : "Error错误",
		nourl : "No url is set没有设置url",
		norecords: "No records to process没有记录可处理",
		model : "Length of colNames <> colModel!colNames的长度不等于colModel！"
	},
	formatter : {
		integer : {thousandsSeparator: ",", defaultValue: '0'},
		number : {decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 2, defaultValue: '0.00'},
		currency : {decimalSeparator:".", thousandsSeparator: ",", decimalPlaces: 2, prefix: "", suffix:"", defaultValue: '0.00'},
		date : {
			dayNames:   [
				"Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat",
				"周日", "周一", "周二", "周三", "周四", "周五", "周六"
			],
			monthNames: [
				"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
				"一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月",
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
