	.arch	armv7-a
	.syntax unified
	.eabi_attribute 67, "2.09"	@ Tag_conformance
	.eabi_attribute 6, 10	@ Tag_CPU_arch
	.eabi_attribute 7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute 8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute 9, 2	@ Tag_THUMB_ISA_use
	.fpu	vfpv3-d16
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute 16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute 17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute 20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute 38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 14, 0	@ Tag_ABI_PCS_R9_use
	.file	"compressed_assemblies.armeabi-v7a.armeabi-v7a.s"
	.include	"compressed_assemblies.armeabi-v7a-data.inc"

	.section	.data.compressed_assembly_descriptors,"aw",%progbits
	.type	.L.compressed_assembly_descriptors, %object
	.p2align	2
.L.compressed_assembly_descriptors:
	/* 0: Java.Interop.dll */
	/* uncompressed_file_size */
	.long	162816
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_0

	/* 1: Mono.Android.dll */
	/* uncompressed_file_size */
	.long	1128960
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_1

	/* 2: Mono.Security.dll */
	/* uncompressed_file_size */
	.long	121856
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_2

	/* 3: MonoGame.Extended.dll */
	/* uncompressed_file_size */
	.long	158208
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_3

	/* 4: MonoGame.Framework.dll */
	/* uncompressed_file_size */
	.long	1079296
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_4

	/* 5: Newtonsoft.Json.dll */
	/* uncompressed_file_size */
	.long	682496
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_5

	/* 6: System.Core.dll */
	/* uncompressed_file_size */
	.long	378368
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_6

	/* 7: System.Data.dll */
	/* uncompressed_file_size */
	.long	747008
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_7

	/* 8: System.Drawing.Common.dll */
	/* uncompressed_file_size */
	.long	9216
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_8

	/* 9: System.Net.Http.dll */
	/* uncompressed_file_size */
	.long	212992
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_9

	/* 10: System.Numerics.dll */
	/* uncompressed_file_size */
	.long	39936
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_10

	/* 11: System.Runtime.Serialization.dll */
	/* uncompressed_file_size */
	.long	6144
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_11

	/* 12: System.Xml.Linq.dll */
	/* uncompressed_file_size */
	.long	65024
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_12

	/* 13: System.Xml.dll */
	/* uncompressed_file_size */
	.long	1318912
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_13

	/* 14: System.dll */
	/* uncompressed_file_size */
	.long	841728
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_14

	/* 15: TiltDefense.dll */
	/* uncompressed_file_size */
	.long	38912
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_15

	/* 16: Xamarin.AndroidX.Core.dll */
	/* uncompressed_file_size */
	.long	8704
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_16

	/* 17: Xamarin.Essentials.dll */
	/* uncompressed_file_size */
	.long	33280
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_17

	/* 18: Xamarin.Google.Guava.ListenableFuture.dll */
	/* uncompressed_file_size */
	.long	18072
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_18

	/* 19: mscorlib.dll */
	/* uncompressed_file_size */
	.long	2067456
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.long	compressed_assembly_data_19

	.size	.L.compressed_assembly_descriptors, 240
	.section	.data.compressed_assemblies,"aw",%progbits
	.type	compressed_assemblies, %object
	.p2align	2
	.global	compressed_assemblies
compressed_assemblies:
	/* count */
	.long	20
	/* descriptors */
	.long	.L.compressed_assembly_descriptors
	.size	compressed_assemblies, 8
