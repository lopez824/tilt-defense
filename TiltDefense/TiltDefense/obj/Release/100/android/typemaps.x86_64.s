	.file	"typemaps.x86_64.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.long	6
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.long	268
/* java_type_count: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.x86_64-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	4
	.global	map_modules
map_modules:
	/* module_uuid: d943cd0e-7fad-4b70-9792-e2bad70aa56c */
	.byte	0x0e, 0xcd, 0x43, 0xd9, 0xad, 0x7f, 0x70, 0x4b, 0x97, 0x92, 0xe2, 0xba, 0xd7, 0x0a, 0xa5, 0x6c
	/* entry_count */
	.long	256
	/* duplicate_count */
	.long	123
	/* map */
	.quad	module0_managed_to_java
	/* duplicate_map */
	.quad	module0_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.quad	.L.map_aname.0
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	/* module_uuid: f4b5bf3a-1033-4b9a-b594-5e18622c0769 */
	.byte	0x3a, 0xbf, 0xb5, 0xf4, 0x33, 0x10, 0x9a, 0x4b, 0xb5, 0x94, 0x5e, 0x18, 0x62, 0x2c, 0x07, 0x69
	/* entry_count */
	.long	6
	/* duplicate_count */
	.long	0
	/* map */
	.quad	module1_managed_to_java
	/* duplicate_map */
	.quad	0
	/* assembly_name: MonoGame.Framework */
	.quad	.L.map_aname.1
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	/* module_uuid: 544dd19d-7745-4a48-8a88-59450ee32831 */
	.byte	0x9d, 0xd1, 0x4d, 0x54, 0x45, 0x77, 0x48, 0x4a, 0x8a, 0x88, 0x59, 0x45, 0x0e, 0xe3, 0x28, 0x31
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.quad	module2_managed_to_java
	/* duplicate_map */
	.quad	0
	/* assembly_name: TiltDefense */
	.quad	.L.map_aname.2
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	/* module_uuid: 390481d8-e07f-4f13-ac03-b00420f919da */
	.byte	0xd8, 0x81, 0x04, 0x39, 0x7f, 0xe0, 0x13, 0x4f, 0xac, 0x03, 0xb0, 0x04, 0x20, 0xf9, 0x19, 0xda
	/* entry_count */
	.long	3
	/* duplicate_count */
	.long	0
	/* map */
	.quad	module3_managed_to_java
	/* duplicate_map */
	.quad	0
	/* assembly_name: Xamarin.Essentials */
	.quad	.L.map_aname.3
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	/* module_uuid: 22ab85d9-c40c-4739-b6fe-c7ac6cfd022e */
	.byte	0xd9, 0x85, 0xab, 0x22, 0x0c, 0xc4, 0x39, 0x47, 0xb6, 0xfe, 0xc7, 0xac, 0x6c, 0xfd, 0x02, 0x2e
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	1
	/* map */
	.quad	module4_managed_to_java
	/* duplicate_map */
	.quad	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.Google.Guava.ListenableFuture */
	.quad	.L.map_aname.4
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	/* module_uuid: 25e810da-3811-468e-b2a2-3db515e42d39 */
	.byte	0xda, 0x10, 0xe8, 0x25, 0x11, 0x38, 0x8e, 0x46, 0xb2, 0xa2, 0x3d, 0xb5, 0x15, 0xe4, 0x2d, 0x39
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.quad	module5_managed_to_java
	/* duplicate_map */
	.quad	0
	/* assembly_name: Xamarin.AndroidX.Core */
	.quad	.L.map_aname.5
	/* image */
	.quad	0
	/* java_name_width */
	.long	0
	/* java_map */
	.zero	4
	.quad	0

	.size	map_modules, 432
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	4
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554773
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	47
	.zero	11

	/* #1 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554774
	/* java_name */
	.ascii	"android/app/AlertDialog"
	.zero	44
	.zero	11

	/* #2 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554775
	/* java_name */
	.ascii	"android/app/AlertDialog$Builder"
	.zero	36
	.zero	11

	/* #3 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554776
	/* java_name */
	.ascii	"android/app/Application"
	.zero	44
	.zero	11

	/* #4 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	17
	.zero	11

	/* #5 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554779
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	49
	.zero	11

	/* #6 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554785
	/* java_name */
	.ascii	"android/app/KeyguardManager"
	.zero	40
	.zero	11

	/* #7 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554788
	/* java_name */
	.ascii	"android/content/BroadcastReceiver"
	.zero	34
	.zero	11

	/* #8 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	33
	.zero	11

	/* #9 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	32
	.zero	11

	/* #10 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554790
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	38
	.zero	11

	/* #11 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554791
	/* java_name */
	.ascii	"android/content/ContentResolver"
	.zero	36
	.zero	11

	/* #12 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554793
	/* java_name */
	.ascii	"android/content/ContentUris"
	.zero	40
	.zero	11

	/* #13 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554786
	/* java_name */
	.ascii	"android/content/Context"
	.zero	44
	.zero	11

	/* #14 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554795
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	37
	.zero	11

	/* #15 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	36
	.zero	11

	/* #16 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnCancelListener"
	.zero	19
	.zero	11

	/* #17 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/DialogInterface$OnClickListener"
	.zero	20
	.zero	11

	/* #18 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554787
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	45
	.zero	11

	/* #19 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554810
	/* java_name */
	.ascii	"android/content/IntentFilter"
	.zero	39
	.zero	11

	/* #20 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	34
	.zero	11

	/* #21 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	27
	.zero	11

	/* #22 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	1
	.zero	11

	/* #23 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554818
	/* java_name */
	.ascii	"android/content/pm/ApplicationInfo"
	.zero	33
	.zero	11

	/* #24 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554821
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	37
	.zero	11

	/* #25 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554823
	/* java_name */
	.ascii	"android/content/pm/PackageItemInfo"
	.zero	33
	.zero	11

	/* #26 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554824
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	34
	.zero	11

	/* #27 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554827
	/* java_name */
	.ascii	"android/content/res/AssetFileDescriptor"
	.zero	28
	.zero	11

	/* #28 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554828
	/* java_name */
	.ascii	"android/content/res/AssetManager"
	.zero	35
	.zero	11

	/* #29 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554829
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	34
	.zero	11

	/* #30 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554831
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	38
	.zero	11

	/* #31 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554606
	/* java_name */
	.ascii	"android/database/CharArrayBuffer"
	.zero	35
	.zero	11

	/* #32 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554607
	/* java_name */
	.ascii	"android/database/ContentObserver"
	.zero	35
	.zero	11

	/* #33 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/database/Cursor"
	.zero	44
	.zero	11

	/* #34 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554609
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	35
	.zero	11

	/* #35 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554759
	/* java_name */
	.ascii	"android/graphics/Bitmap"
	.zero	44
	.zero	11

	/* #36 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554760
	/* java_name */
	.ascii	"android/graphics/Bitmap$Config"
	.zero	37
	.zero	11

	/* #37 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554762
	/* java_name */
	.ascii	"android/graphics/BitmapFactory"
	.zero	37
	.zero	11

	/* #38 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554763
	/* java_name */
	.ascii	"android/graphics/BitmapFactory$Options"
	.zero	29
	.zero	11

	/* #39 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554761
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	44
	.zero	11

	/* #40 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554765
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	45
	.zero	11

	/* #41 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554766
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	45
	.zero	11

	/* #42 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554767
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	46
	.zero	11

	/* #43 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554768
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	33
	.zero	11

	/* #44 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	24
	.zero	11

	/* #45 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554752
	/* java_name */
	.ascii	"android/hardware/Sensor"
	.zero	44
	.zero	11

	/* #46 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554754
	/* java_name */
	.ascii	"android/hardware/SensorEvent"
	.zero	39
	.zero	11

	/* #47 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/hardware/SensorEventListener"
	.zero	31
	.zero	11

	/* #48 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554749
	/* java_name */
	.ascii	"android/hardware/SensorManager"
	.zero	37
	.zero	11

	/* #49 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554738
	/* java_name */
	.ascii	"android/media/AudioDeviceInfo"
	.zero	38
	.zero	11

	/* #50 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554730
	/* java_name */
	.ascii	"android/media/AudioManager"
	.zero	41
	.zero	11

	/* #51 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/media/AudioRouting"
	.zero	41
	.zero	11

	/* #52 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/media/AudioRouting$OnRoutingChangedListener"
	.zero	16
	.zero	11

	/* #53 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554731
	/* java_name */
	.ascii	"android/media/MediaPlayer"
	.zero	42
	.zero	11

	/* #54 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/media/MediaPlayer$OnCompletionListener"
	.zero	21
	.zero	11

	/* #55 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/media/VolumeAutomation"
	.zero	37
	.zero	11

	/* #56 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554747
	/* java_name */
	.ascii	"android/media/VolumeShaper"
	.zero	41
	.zero	11

	/* #57 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554748
	/* java_name */
	.ascii	"android/media/VolumeShaper$Configuration"
	.zero	27
	.zero	11

	/* #58 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554728
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	52
	.zero	11

	/* #59 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554716
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	46
	.zero	11

	/* #60 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554717
	/* java_name */
	.ascii	"android/os/Build"
	.zero	51
	.zero	11

	/* #61 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554718
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	43
	.zero	11

	/* #62 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554720
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	50
	.zero	11

	/* #63 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554714
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	49
	.zero	11

	/* #64 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554723
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	50
	.zero	11

	/* #65 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554724
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	50
	.zero	11

	/* #66 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	46
	.zero	11

	/* #67 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554726
	/* java_name */
	.ascii	"android/os/Process"
	.zero	49
	.zero	11

	/* #68 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554715
	/* java_name */
	.ascii	"android/os/Vibrator"
	.zero	48
	.zero	11

	/* #69 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554713
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	31
	.zero	11

	/* #70 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554597
	/* java_name */
	.ascii	"android/provider/MediaStore"
	.zero	40
	.zero	11

	/* #71 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554598
	/* java_name */
	.ascii	"android/provider/MediaStore$Audio"
	.zero	34
	.zero	11

	/* #72 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554599
	/* java_name */
	.ascii	"android/provider/MediaStore$Audio$Media"
	.zero	28
	.zero	11

	/* #73 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554600
	/* java_name */
	.ascii	"android/provider/MediaStore$Images"
	.zero	33
	.zero	11

	/* #74 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554601
	/* java_name */
	.ascii	"android/provider/MediaStore$Images$Media"
	.zero	27
	.zero	11

	/* #75 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554602
	/* java_name */
	.ascii	"android/provider/Settings"
	.zero	42
	.zero	11

	/* #76 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554603
	/* java_name */
	.ascii	"android/provider/Settings$NameValueTable"
	.zero	27
	.zero	11

	/* #77 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554604
	/* java_name */
	.ascii	"android/provider/Settings$SettingNotFoundException"
	.zero	17
	.zero	11

	/* #78 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554605
	/* java_name */
	.ascii	"android/provider/Settings$System"
	.zero	35
	.zero	11

	/* #79 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554877
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	33
	.zero	11

	/* #80 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554708
	/* java_name */
	.ascii	"android/util/AndroidException"
	.zero	38
	.zero	11

	/* #81 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	42
	.zero	11

	/* #82 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554709
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	40
	.zero	11

	/* #83 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554707
	/* java_name */
	.ascii	"android/util/Log"
	.zero	51
	.zero	11

	/* #84 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554638
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	44
	.zero	11

	/* #85 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	35
	.zero	11

	/* #86 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554643
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	40
	.zero	11

	/* #87 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	43
	.zero	11

	/* #88 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	27
	.zero	11

	/* #89 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554646
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	35
	.zero	11

	/* #90 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554647
	/* java_name */
	.ascii	"android/view/Display"
	.zero	47
	.zero	11

	/* #91 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554621
	/* java_name */
	.ascii	"android/view/InputDevice"
	.zero	43
	.zero	11

	/* #92 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554661
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	44
	.zero	11

	/* #93 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554622
	/* java_name */
	.ascii	"android/view/KeyCharacterMap"
	.zero	39
	.zero	11

	/* #94 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554623
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	46
	.zero	11

	/* #95 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	37
	.zero	11

	/* #96 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554626
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	40
	.zero	11

	/* #97 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	32
	.zero	11

	/* #98 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	31
	.zero	11

	/* #99 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	50
	.zero	11

	/* #100 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	46
	.zero	11

	/* #101 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	23
	.zero	11

	/* #102 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	22
	.zero	11

	/* #103 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554631
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	43
	.zero	11

	/* #104 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554683
	/* java_name */
	.ascii	"android/view/OrientationEventListener"
	.zero	30
	.zero	11

	/* #105 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554686
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	43
	.zero	11

	/* #106 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	47
	.zero	11

	/* #107 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554688
	/* java_name */
	.ascii	"android/view/Surface"
	.zero	47
	.zero	11

	/* #108 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/SurfaceHolder"
	.zero	41
	.zero	11

	/* #109 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/SurfaceHolder$Callback"
	.zero	32
	.zero	11

	/* #110 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554691
	/* java_name */
	.ascii	"android/view/SurfaceView"
	.zero	43
	.zero	11

	/* #111 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554616
	/* java_name */
	.ascii	"android/view/View"
	.zero	50
	.zero	11

	/* #112 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	22
	.zero	11

	/* #113 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/View$OnTouchListener"
	.zero	34
	.zero	11

	/* #114 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554694
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	45
	.zero	11

	/* #115 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554695
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	32
	.zero	11

	/* #116 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	43
	.zero	11

	/* #117 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	44
	.zero	11

	/* #118 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554632
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	38
	.zero	11

	/* #119 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	20
	.zero	11

	/* #120 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554635
	/* java_name */
	.ascii	"android/view/Window"
	.zero	48
	.zero	11

	/* #121 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	39
	.zero	11

	/* #122 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	41
	.zero	11

	/* #123 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554674
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	28
	.zero	11

	/* #124 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554700
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	22
	.zero	11

	/* #125 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	16
	.zero	11

	/* #126 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554701
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	21
	.zero	11

	/* #127 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554615
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	44
	.zero	11

	/* #128 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554614
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	44
	.zero	11

	/* #129 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554434
	/* java_name */
	.ascii	"androidx/core/content/pm/PackageInfoCompat"
	.zero	25
	.zero	11

	/* #130 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"com/google/common/util/concurrent/ListenableFuture"
	.zero	17
	.zero	11

	/* #131 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"crc64159f71def960e7b1/Activity1"
	.zero	36
	.zero	11

	/* #132 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554878
	/* java_name */
	.ascii	"crc64493ac3851fab1842/AndroidGameActivity"
	.zero	26
	.zero	11

	/* #133 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554884
	/* java_name */
	.ascii	"crc64493ac3851fab1842/MonoGameAndroidGameView"
	.zero	22
	.zero	11

	/* #134 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554893
	/* java_name */
	.ascii	"crc64493ac3851fab1842/OrientationListener"
	.zero	26
	.zero	11

	/* #135 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554895
	/* java_name */
	.ascii	"crc64493ac3851fab1842/ScreenReceiver"
	.zero	31
	.zero	11

	/* #136 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554458
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/AccelerometerListener"
	.zero	24
	.zero	11

	/* #137 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554462
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	13
	.zero	11

	/* #138 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554459
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/GyroscopeListener"
	.zero	28
	.zero	11

	/* #139 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554812
	/* java_name */
	.ascii	"crc64f0e061189adeef62/Accelerometer_SensorListener"
	.zero	17
	.zero	11

	/* #140 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554814
	/* java_name */
	.ascii	"crc64f0e061189adeef62/Compass_SensorListener"
	.zero	23
	.zero	11

	/* #141 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	50
	.zero	11

	/* #142 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555025
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	45
	.zero	11

	/* #143 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555026
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	44
	.zero	11

	/* #144 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	50
	.zero	11

	/* #145 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555034
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	48
	.zero	11

	/* #146 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555031
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	48
	.zero	11

	/* #147 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555033
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	37
	.zero	11

	/* #148 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555037
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	47
	.zero	11

	/* #149 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555039
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	48
	.zero	11

	/* #150 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	47
	.zero	11

	/* #151 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555040
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	47
	.zero	11

	/* #152 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555041
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	53
	.zero	11

	/* #153 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	47
	.zero	11

	/* #154 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/AutoCloseable"
	.zero	44
	.zero	11

	/* #155 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554969
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	50
	.zero	11

	/* #156 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554970
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	53
	.zero	11

	/* #157 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	45
	.zero	11

	/* #158 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554971
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	48
	.zero	11

	/* #159 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554972
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	52
	.zero	11

	/* #160 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554988
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	39
	.zero	11

	/* #161 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554973
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	35
	.zero	11

	/* #162 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	48
	.zero	11

	/* #163 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	47
	.zero	11

	/* #164 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554974
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	51
	.zero	11

	/* #165 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554989
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	53
	.zero	11

	/* #166 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554991
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	52
	.zero	11

	/* #167 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554975
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	48
	.zero	11

	/* #168 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554976
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	52
	.zero	11

	/* #169 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555002
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	33
	.zero	11

	/* #170 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555003
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	36
	.zero	11

	/* #171 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555004
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	32
	.zero	11

	/* #172 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554978
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	50
	.zero	11

	/* #173 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555007
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	45
	.zero	11

	/* #174 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554979
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	53
	.zero	11

	/* #175 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555008
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	37
	.zero	11

	/* #176 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555009
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	37
	.zero	11

	/* #177 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555010
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	51
	.zero	11

	/* #178 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554980
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	51
	.zero	11

	/* #179 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555012
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	29
	.zero	11

	/* #180 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	49
	.zero	11

	/* #181 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554981
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	41
	.zero	11

	/* #182 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555013
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	40
	.zero	11

	/* #183 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554982
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	52
	.zero	11

	/* #184 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554983
	/* java_name */
	.ascii	"java/lang/String"
	.zero	51
	.zero	11

	/* #185 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554985
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	51
	.zero	11

	/* #186 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554987
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	48
	.zero	11

	/* #187 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555014
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	28
	.zero	11

	/* #188 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	36
	.zero	11

	/* #189 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	33
	.zero	11

	/* #190 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	31
	.zero	11

	/* #191 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	45
	.zero	11

	/* #192 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	37
	.zero	11

	/* #193 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554901
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	42
	.zero	11

	/* #194 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554903
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	41
	.zero	11

	/* #195 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554905
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	41
	.zero	11

	/* #196 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554906
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	41
	.zero	11

	/* #197 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554907
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	53
	.zero	11

	/* #198 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554908
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	48
	.zero	11

	/* #199 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554909
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	45
	.zero	11

	/* #200 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554911
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	45
	.zero	11

	/* #201 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554913
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	43
	.zero	11

	/* #202 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554914
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	36
	.zero	11

	/* #203 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554916
	/* java_name */
	.ascii	"java/net/URI"
	.zero	55
	.zero	11

	/* #204 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554917
	/* java_name */
	.ascii	"java/net/URL"
	.zero	55
	.zero	11

	/* #205 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554918
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	45
	.zero	11

	/* #206 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554915
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	35
	.zero	11

	/* #207 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554945
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	52
	.zero	11

	/* #208 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554947
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	48
	.zero	11

	/* #209 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	38
	.zero	11

	/* #210 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	42
	.zero	11

	/* #211 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554949
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	38
	.zero	11

	/* #212 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	29
	.zero	11

	/* #213 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	29
	.zero	11

	/* #214 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	30
	.zero	11

	/* #215 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	28
	.zero	11

	/* #216 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	30
	.zero	11

	/* #217 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	30
	.zero	11

	/* #218 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554967
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	17
	.zero	11

	/* #219 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554932
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	45
	.zero	11

	/* #220 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	26
	.zero	11

	/* #221 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	25
	.zero	11

	/* #222 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	44
	.zero	11

	/* #223 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554937
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	41
	.zero	11

	/* #224 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554938
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	37
	.zero	11

	/* #225 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554940
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	30
	.zero	11

	/* #226 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554943
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	33
	.zero	11

	/* #227 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	35
	.zero	11

	/* #228 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554869
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	48
	.zero	11

	/* #229 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554858
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	47
	.zero	11

	/* #230 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	46
	.zero	11

	/* #231 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554860
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	50
	.zero	11

	/* #232 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554878
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	50
	.zero	11

	/* #233 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	49
	.zero	11

	/* #234 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554924
	/* java_name */
	.ascii	"java/util/Random"
	.zero	51
	.zero	11

	/* #235 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/concurrent/Executor"
	.zero	38
	.zero	11

	/* #236 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/concurrent/Future"
	.zero	40
	.zero	11

	/* #237 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554929
	/* java_name */
	.ascii	"java/util/concurrent/TimeUnit"
	.zero	38
	.zero	11

	/* #238 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGL"
	.zero	33
	.zero	11

	/* #239 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554587
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGL10"
	.zero	31
	.zero	11

	/* #240 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554578
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGLConfig"
	.zero	27
	.zero	11

	/* #241 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554577
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGLContext"
	.zero	26
	.zero	11

	/* #242 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554581
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGLDisplay"
	.zero	26
	.zero	11

	/* #243 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554583
	/* java_name */
	.ascii	"javax/microedition/khronos/egl/EGLSurface"
	.zero	26
	.zero	11

	/* #244 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554556
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	44
	.zero	11

	/* #245 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	37
	.zero	11

	/* #246 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554558
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	35
	.zero	11

	/* #247 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	43
	.zero	11

	/* #248 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554572
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	36
	.zero	11

	/* #249 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554573
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	43
	.zero	11

	/* #250 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	43
	.zero	11

	/* #251 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	36
	.zero	11

	/* #252 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554574
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	37
	.zero	11

	/* #253 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	41
	.zero	11

	/* #254 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554576
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	34
	.zero	11

	/* #255 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	37
	.zero	11

	/* #256 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554552
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	36
	.zero	11

	/* #257 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554554
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	32
	.zero	11

	/* #258 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555064
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	43
	.zero	11

	/* #259 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554803
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnCancelListenerImplementor"
	.zero	3
	.zero	11

	/* #260 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554807
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnClickListenerImplementor"
	.zero	4
	.zero	11

	/* #261 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554734
	/* java_name */
	.ascii	"mono/android/media/MediaPlayer_OnCompletionListenerImplementor"
	.zero	5
	.zero	11

	/* #262 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554854
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	28
	.zero	11

	/* #263 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	37
	.zero	11

	/* #264 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554875
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	36
	.zero	11

	/* #265 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554893
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	27
	.zero	11

	/* #266 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554986
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	33
	.zero	11

	/* #267 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554551
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	21
	.zero	11

	.size	map_java, 23048
/* Java to managed map: END */


/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.long	78
/* java_name_width: END */