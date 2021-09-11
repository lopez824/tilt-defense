	.arch	armv8-a
	.file	"compressed_assemblies.arm64-v8a.arm64-v8a.s"
	.include	"compressed_assemblies.arm64-v8a-data.inc"

	.section	.data.compressed_assembly_descriptors,"aw",@progbits
	.type	.L.compressed_assembly_descriptors, @object
	.p2align	3
.L.compressed_assembly_descriptors:
	/* 0: Java.Interop.dll */
	/* uncompressed_file_size */
	.word	162816
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_0

	/* 1: Mono.Android.dll */
	/* uncompressed_file_size */
	.word	1128960
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_1

	/* 2: Mono.Security.dll */
	/* uncompressed_file_size */
	.word	121856
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_2

	/* 3: MonoGame.Extended.dll */
	/* uncompressed_file_size */
	.word	158208
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_3

	/* 4: MonoGame.Framework.dll */
	/* uncompressed_file_size */
	.word	1079296
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_4

	/* 5: Newtonsoft.Json.dll */
	/* uncompressed_file_size */
	.word	682496
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_5

	/* 6: System.Core.dll */
	/* uncompressed_file_size */
	.word	378368
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_6

	/* 7: System.Data.dll */
	/* uncompressed_file_size */
	.word	747008
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_7

	/* 8: System.Drawing.Common.dll */
	/* uncompressed_file_size */
	.word	9216
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_8

	/* 9: System.Net.Http.dll */
	/* uncompressed_file_size */
	.word	212992
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_9

	/* 10: System.Numerics.dll */
	/* uncompressed_file_size */
	.word	39936
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_10

	/* 11: System.Runtime.Serialization.dll */
	/* uncompressed_file_size */
	.word	6144
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_11

	/* 12: System.Xml.Linq.dll */
	/* uncompressed_file_size */
	.word	65024
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_12

	/* 13: System.Xml.dll */
	/* uncompressed_file_size */
	.word	1318912
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_13

	/* 14: System.dll */
	/* uncompressed_file_size */
	.word	841728
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_14

	/* 15: TiltDefense.dll */
	/* uncompressed_file_size */
	.word	38912
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_15

	/* 16: Xamarin.AndroidX.Core.dll */
	/* uncompressed_file_size */
	.word	8704
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_16

	/* 17: Xamarin.Essentials.dll */
	/* uncompressed_file_size */
	.word	33280
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_17

	/* 18: Xamarin.Google.Guava.ListenableFuture.dll */
	/* uncompressed_file_size */
	.word	18072
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_18

	/* 19: mscorlib.dll */
	/* uncompressed_file_size */
	.word	2067456
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_19

	.size	.L.compressed_assembly_descriptors, 320
	.section	.data.compressed_assemblies,"aw",@progbits
	.type	compressed_assemblies, @object
	.p2align	3
	.global	compressed_assemblies
compressed_assemblies:
	/* count */
	.word	20
	/* descriptors */
	.zero	4
	.xword	.L.compressed_assembly_descriptors
	.size	compressed_assemblies, 16
