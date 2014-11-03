# AvosService

这个gem是对LeanCloud（AVOS Cloud）的rest－api的一个ruby封装。
目前没有完成，只部分实现了push。

在api没完善前，暂无发布到rubygems上的计划，使用上请直接用github源。

## Installation

Add this line to your application's Gemfile:

    gem 'avos_service', :git => "https://github.com/baozoumanhua/avos_service"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install avos_service

## Usage

### 初始化设置

avos需要在使用前初始化添加application id以及application key：

	AvosService.configure do |config|
  		config.application_id = 'Your application id'
  		config.application_key = 'Your application key'
	end

Rails项目可以在config/initializers下面，新建avos.rb，然后使用上面的代码。

### Push 推送服务

获取接口对象：

	push = AvosService.push_service
	
推送数据:

	data = {alert: '内容'}
	push.push data
	
推送给指定设备:

	installation = 'on installation id'
	push.push_to_installation data, installation
	
自定义推送:

	other_conditions = {where: ''}
	push.push data, other_conditions
	

## Contributing

1. Fork it ( https://github.com/[my-github-username]/avos_service/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
