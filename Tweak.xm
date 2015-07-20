#import <CydiaSubstrate.h>

//会话内录制小视频界面
%hook ShortVideoToolbar

- (void)setRecordState:(int)arg1 {
	//NSLog(@"WXLV: setRecordState: state = %d",arg1);
	if(arg1==3) {
		return;
	}
	%orig;
}

- (void)logicCheckState:(int)arg1 {
	if(arg1<=1) {
		%orig;
	}
}

%end

//首页下拉录制小视频界面
%hook MainFrameSightViewController

- (void)setRecordState:(int)arg1 {
	//NSLog(@"WXLV: setRecordState: state = %d",arg1);
	if(arg1==3) {
		return;
	}
	%orig;
}

- (void)logicCheckState:(int)arg1 {
	//NSLog(@"WXLV: logicCheckState: state = %d",arg1);
	if(arg1<=1) {
		%orig;
	}
}

%end

//控制条动画
%hook SightRecordProgressBar

- (void)updateAnimation {
	return;
	//MSHookIvar<int>(self, "m_currState") = 10;
	//%orig;
}
%end
