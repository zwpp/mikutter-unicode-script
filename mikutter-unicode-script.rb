# coding: utf-8

Plugin.create :unicode_script do
	command(:font_script,
		name: '筆記体にする',
		condition: lambda{|opt| true },
		visible: true,
		role: :postbox
	) do |opt|
		# postboxからメッセジ拾う
		message = Plugin[:gtk].widgetof(opt.widget).widget_post.buffer.text
		# 太字筆記体に変換
		str = message.tr("A-Za-z", "\u{1D4D0}-\u{1D503}")
		# postbox書き込み
		Plugin[:gtk].widgetof(opt.widget).widget_post.buffer.text = str
	end
end
