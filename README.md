
#### 本demo是关于借助iOS中的setting设置，在开发中动态修改网络请求的baseURL的方法
[关于setting的点](https://lhs7248.github.io/source/pages/setting.html)
## 实现步骤
#### 1、在项目当中新增Setting Bundle
#### 2、新增的setting取消target memberShip

#### 3、在build phases 添加 Run script
	添加运行的脚本
	if [ "Release" != "${CONFIGURATION}" ]
	then
	rsync -avr --copy-links --no-relative --exclude 	'*/.svn/*' "${SRCROOT}/Setting/Settings.bundle"  "$	{TARGET_BUILD_DIR}/$		{UNLOCALIZED_RESOURCES_FOLDER_PATH}"
	fi
${SRCROOT}/{在此次修改setting的修改路径}/Settings.bundle

#### 4、使用的方法
	#if DEBUG 
	
	    NSString * setUrl =  [[NSUserDefaults standardUserDefaults]stringForKey:@"debug_url_perference_Multi"];
	    if (setUrl == nil) {
	        setUrl = @"Developer ULR";
	    }
	#else
	 
	   	 NSString * setUrl = @"release URL"; 
	#endif
	
	debug_url_perference_Multi 是在setting当中的字段

#### 5、实现思路
	通过脚本进行配置，如果是开发环境将setting 添加到项目中，如果非开发环境则不会把Setting关联到项目，可以支持测试手动输入或者选择baseURL进行测试，setting设置完毕后将App 切掉后新启动





