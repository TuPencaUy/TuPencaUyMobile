; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [403 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [806 x i64] [
	i64 17578172352203612, ; 0: Plugin.Firebase.Storage => 0x3e73412eda8b5c => 216
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 250
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 192
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 4: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 203
	i64 196720943101637631, ; 5: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 236
	i64 229794953483747371, ; 7: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 8: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 278
	i64 233177144301842968, ; 9: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 237
	i64 295915112840604065, ; 10: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 281
	i64 316157742385208084, ; 11: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 244
	i64 350667413455104241, ; 12: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 419206457763497962, ; 13: Auth0.OidcClient.Core.dll => 0x5d1520d628b07ea => 175
	i64 422779754995088667, ; 14: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 15: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 280
	i64 441196909651674427, ; 16: Xamarin.GooglePlayServices.Measurement.Sdk => 0x61f724073c9c53b => 345
	i64 454362216236841667, ; 17: Plugin.Firebase.Analytics => 0x64e38074227fac3 => 207
	i64 545109961164950392, ; 18: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 375
	i64 560278790331054453, ; 19: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 634308326490598313, ; 20: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 263
	i64 649145001856603771, ; 21: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 687654259221141486, ; 22: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 338
	i64 750875890346172408, ; 23: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 24: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 238
	i64 799765834175365804, ; 25: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 26: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 378
	i64 872800313462103108, ; 27: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 249
	i64 875677659902526502, ; 28: IdentityModel.dll => 0xc270831303c4426 => 181
	i64 895210737996778430, ; 29: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 264
	i64 940822596282819491, ; 30: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 31: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 32: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1120440138749646132, ; 33: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 325
	i64 1121665720830085036, ; 34: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 386
	i64 1155807931551632357, ; 35: Xamarin.Io.PerfMark.PerfMarkApi.dll => 0x100a4130a4b6cbe5 => 356
	i64 1213069524004690018, ; 36: Plugin.Firebase.DynamicLinks => 0x10d5b04e1226d862 => 212
	i64 1268860745194512059, ; 37: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1274338068859211160, ; 38: Xamarin.Grpc.Api => 0x11af5bb8ce1c4d98 => 350
	i64 1301626418029409250, ; 39: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 40: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 232
	i64 1368633735297491523, ; 41: Xamarin.Firebase.Database.Collection.dll => 0x12fe5d218405e243 => 305
	i64 1369545283391376210, ; 42: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 271
	i64 1392315331768750440, ; 43: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 299
	i64 1404195534211153682, ; 44: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 45: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1465843056802068477, ; 46: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 302
	i64 1474586420366808421, ; 47: Xamarin.Grpc.Android.dll => 0x1476c88960941565 => 349
	i64 1476839205573959279, ; 48: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 49: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 200
	i64 1492954217099365037, ; 50: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 51: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 52: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1556147632182429976, ; 53: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 384
	i64 1576750169145655260, ; 54: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 292
	i64 1624659445732251991, ; 55: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 231
	i64 1628611045998245443, ; 56: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 267
	i64 1636321030536304333, ; 57: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 257
	i64 1651782184287836205, ; 58: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 59: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 60: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 61: Newtonsoft.Json => 0x18071957e9b889d7 => 205
	i64 1735388228521408345, ; 62: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 63: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 64: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 65: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 230
	i64 1825687700144851180, ; 66: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 67: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 374
	i64 1836611346387731153, ; 68: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 278
	i64 1837131419302612636, ; 69: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x197ecd4ad53dce9c => 323
	i64 1854145951182283680, ; 70: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 71: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 183
	i64 1875417405349196092, ; 72: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 73: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 227
	i64 1881198190668717030, ; 74: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 396
	i64 1897575647115118287, ; 75: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 280
	i64 1920760634179481754, ; 76: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 201
	i64 1930726298510463061, ; 77: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 179
	i64 1956817255800234857, ; 78: Xamarin.Grpc.Android => 0x1b2802ed2e53e369 => 349
	i64 1959996714666907089, ; 79: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 396
	i64 1972385128188460614, ; 80: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 81: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 265
	i64 1983698669889758782, ; 82: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 370
	i64 1990714127648872464, ; 83: Xamarin.Grpc.Core.dll => 0x1ba06ff3abdcd810 => 352
	i64 2019660174692588140, ; 84: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 388
	i64 2040001226662520565, ; 85: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2052224852812364517, ; 86: Plugin.Firebase.Firestore.dll => 0x1c7af7a1671bfae5 => 213
	i64 2062890601515140263, ; 87: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 88: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 361
	i64 2080945842184875448, ; 89: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 90: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 91: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 92: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 205
	i64 2165310824878145998, ; 93: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 224
	i64 2165725771938924357, ; 94: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 234
	i64 2200176636225660136, ; 95: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 190
	i64 2203565783020068373, ; 96: Xamarin.KotlinX.Coroutines.Core => 0x1e94a367981dde15 => 364
	i64 2262844636196693701, ; 97: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 249
	i64 2287834202362508563, ; 98: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 99: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 100: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 392
	i64 2304837677853103545, ; 101: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 277
	i64 2315304989185124968, ; 102: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 103: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 197
	i64 2329709569556905518, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 260
	i64 2335503487726329082, ; 105: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 106: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2343783402604882194, ; 107: Xamarin.Grpc.Stub.dll => 0x2086ca9636b86912 => 355
	i64 2470498323731680442, ; 108: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 242
	i64 2479423007379663237, ; 109: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 287
	i64 2497223385847772520, ; 110: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 111: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 225
	i64 2592350477072141967, ; 112: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 113: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 395
	i64 2612152650457191105, ; 114: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 198
	i64 2624866290265602282, ; 115: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 116: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 117: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 186
	i64 2662981627730767622, ; 118: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 370
	i64 2706075432581334785, ; 119: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 120: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 121: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 282
	i64 2789714023057451704, ; 122: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 194
	i64 2815524396660695947, ; 123: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2895129759130297543, ; 124: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 375
	i64 2923871038697555247, ; 125: Jsr305Binding => 0x2893ad37e69ec52f => 328
	i64 2951672403965468947, ; 126: Xamarin.Firebase.Database.Collection => 0x28f67269abaf6113 => 305
	i64 3017136373564924869, ; 127: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 128: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 325
	i64 3070901203286954241, ; 129: Square.OkIO.JVM => 0x2a9e085fc23d1101 => 219
	i64 3106852385031680087, ; 130: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3108717176077825928, ; 131: TuPencaUy => 0x2b2461cd0b463788 => 0
	i64 3110390492489056344, ; 132: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 133: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3143515969535650208, ; 134: Xamarin.Firebase.Encoders => 0x2ba0031e85f0a9a0 => 308
	i64 3171992396844006720, ; 135: Square.OkIO => 0x2c052e476c207d40 => 218
	i64 3281594302220646930, ; 136: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 137: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 258
	i64 3303437397778967116, ; 138: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 228
	i64 3311221304742556517, ; 139: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 140: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 141: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 142: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 365
	i64 3364695309916733813, ; 143: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 300
	i64 3402534845034375023, ; 144: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 220
	i64 3411255996856937470, ; 145: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 339
	i64 3427548605411023127, ; 146: Xamarin.GooglePlayServices.Auth.Api.Phone.dll => 0x2f91194bf3e8d917 => 337
	i64 3429672777697402584, ; 147: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 203
	i64 3437845325506641314, ; 148: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 149: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 284
	i64 3494946837667399002, ; 150: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 184
	i64 3495566828071521632, ; 151: Xamarin.GooglePlayServices.Measurement.Api.dll => 0x3082bf8283d78d60 => 342
	i64 3508450208084372758, ; 152: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 153: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 283
	i64 3531994851595924923, ; 154: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 155: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 156: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 390
	i64 3571415421602489686, ; 157: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 158: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 185
	i64 3647754201059316852, ; 159: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 160: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 184
	i64 3659371656528649588, ; 161: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 222
	i64 3716579019761409177, ; 162: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 163: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 276
	i64 3768479575991719956, ; 164: Xamarin.KotlinX.Coroutines.Play.Services.dll => 0x344c5435464d1814 => 366
	i64 3772598417116884899, ; 165: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 250
	i64 3774315325518692048, ; 166: Xamarin.GooglePlayServices.Measurement.Sdk.Api.dll => 0x34610fca97dabed0 => 346
	i64 3859219695630330898, ; 167: Xamarin.GooglePlayServices.Ads.Identifier => 0x358eb3ddbc3cac12 => 336
	i64 3869221888984012293, ; 168: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 188
	i64 3869649043256705283, ; 169: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 170: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 201
	i64 3919223565570527920, ; 171: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 172: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 173: System.Memory => 0x370b03412596249e => 62
	i64 3981462687556418071, ; 174: Auth0.OidcClient.Core => 0x3740ff383a45ba17 => 175
	i64 4006972109285359177, ; 175: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 176: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4045730230152541805, ; 177: Xamarin.Grpc.Protobuf.Lite.dll => 0x38255235894d366d => 354
	i64 4073500526318903918, ; 178: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 179: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 199
	i64 4085039559542030877, ; 180: Plugin.Firebase.RemoteConfig => 0x38b0f9d5ffebc21d => 215
	i64 4120493066591692148, ; 181: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 401
	i64 4148881117810174540, ; 182: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 183: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4156011472231154272, ; 184: Plugin.Firebase.Crashlytics => 0x39ad1e6a1cc94260 => 211
	i64 4167269041631776580, ; 185: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 186: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 187: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 188: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 244
	i64 4205801962323029395, ; 189: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 190: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4239882675311405204, ; 191: Xamarin.Firebase.Encoders.JSON => 0x3ad716d44f44e894 => 309
	i64 4247996603072512073, ; 192: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 348
	i64 4282138915307457788, ; 193: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4335356748765836238, ; 194: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3c2a47fe48c7b3ce => 323
	i64 4344734875814815696, ; 195: Plugin.Firebase.Analytics.dll => 0x3c4b9959a43167d0 => 207
	i64 4356591372459378815, ; 196: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 398
	i64 4373617458794931033, ; 197: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 198: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4432316908210594816, ; 199: Xamarin.GooglePlayServices.Measurement.Impl => 0x3d82c0be9dd9a400 => 344
	i64 4477672992252076438, ; 200: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 201: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4500292229471022193, ; 202: Xamarin.Google.Dagger.dll => 0x3e743ff06b122c71 => 330
	i64 4533124835995628778, ; 203: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4636684751163556186, ; 204: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 288
	i64 4672453897036726049, ; 205: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4679594760078841447, ; 206: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 368
	i64 4702770163853758138, ; 207: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 302
	i64 4708653840312162517, ; 208: Square.OkHttp3 => 0x41587fb86215d8d5 => 217
	i64 4716677666592453464, ; 209: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 210: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 211: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 262
	i64 4794310189461587505, ; 212: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 225
	i64 4795410492532947900, ; 213: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 283
	i64 4809057822547766521, ; 214: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 215: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4822137366104089610, ; 216: Xamarin.GooglePlayServices.Measurement.Sdk.Api => 0x42ebac62bcc5a40a => 346
	i64 4853321196694829351, ; 217: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4853355175641069576, ; 218: Plugin.Firebase.RemoteConfig.dll => 0x435a94d16ce3b808 => 215
	i64 5004360521622432269, ; 219: TuPencaUy.dll => 0x45730f61534b2a0d => 0
	i64 5005291387232977212, ; 220: Xamarin.GooglePlayServices.Measurement.dll => 0x45765dff5d58013c => 341
	i64 5055365687667823624, ; 221: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 226
	i64 5081566143765835342, ; 222: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 223: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 224: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 225: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 226: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 269
	i64 5244375036463807528, ; 227: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 228: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 229: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 230: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 261
	i64 5290215063822704973, ; 231: Xamarin.Grpc.Stub => 0x496a9e926092a14d => 355
	i64 5290786973231294105, ; 232: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 233: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 287
	i64 5408338804355907810, ; 234: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 285
	i64 5423376490970181369, ; 235: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5426193594926737925, ; 236: Plugin.Firebase.Core => 0x4b4db6534c1baa05 => 210
	i64 5440320908473006344, ; 237: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 238: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 239: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 240
	i64 5457765010617926378, ; 240: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 241: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 394
	i64 5507995362134886206, ; 242: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 243: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 397
	i64 5527431512186326818, ; 244: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 245: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 246: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 247: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 229
	i64 5591791169662171124, ; 248: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5628362754859641198, ; 249: Xamarin.Firebase.Storage.Common.dll => 0x4e1bf61aee72a96e => 321
	i64 5650097808083101034, ; 250: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 251: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 290
	i64 5724799082821825042, ; 252: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 253
	i64 5757522595884336624, ; 253: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 239
	i64 5783556987928984683, ; 254: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 255: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 259
	i64 5909949808044991351, ; 256: Xamarin.GooglePlayServices.Measurement => 0x52045c09c4e8e377 => 341
	i64 5959344983920014087, ; 257: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 279
	i64 5979151488806146654, ; 258: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 259: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6046211982703393097, ; 260: IdentityModel.OidcClient.dll => 0x53e875c399bef949 => 182
	i64 6058153446002397952, ; 261: Xamarin.Firebase.Common.Ktx => 0x5412e2762fc81300 => 301
	i64 6068057819846744445, ; 262: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 391
	i64 6076057840849113382, ; 263: Xamarin.Firebase.Dynamic.Links.dll => 0x54527e69f689d126 => 307
	i64 6092862891035488599, ; 264: Xamarin.Firebase.Measurement.Connector.dll => 0x548e32849d547157 => 317
	i64 6102788177522843259, ; 265: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 279
	i64 6118452257458269359, ; 266: Xamarin.Firebase.AppCheck.Interop.dll => 0x54e91be944fcacaf => 297
	i64 6135981624229292808, ; 267: Xamarin.Grpc.Api.dll => 0x552762c70482eb08 => 350
	i64 6200764641006662125, ; 268: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 391
	i64 6222399776351216807, ; 269: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 270: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 271: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 272: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6300241346327543539, ; 273: Xamarin.Firebase.Iid => 0x576ef41fd714fef3 => 313
	i64 6319713645133255417, ; 274: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 263
	i64 6357457916754632952, ; 275: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 402
	i64 6401242110442382339, ; 276: Xamarin.Protobuf.JavaLite => 0x58d5c7c8c230a403 => 367
	i64 6401687960814735282, ; 277: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 260
	i64 6403742896930319886, ; 278: Xamarin.Firebase.Auth.dll => 0x58deaa3c7c766e0e => 298
	i64 6407094981387243793, ; 279: Auth0.OidcClient.dll => 0x58ea92f077c65111 => 176
	i64 6444987688569083917, ; 280: Plugin.Firebase.Storage.dll => 0x59713227deed180d => 216
	i64 6478287442656530074, ; 281: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 379
	i64 6504860066809920875, ; 282: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 234
	i64 6522864429860654155, ; 283: Plugin.Firebase => 0x5a85dea3abe00c4b => 206
	i64 6548213210057960872, ; 284: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 246
	i64 6554405243736097249, ; 285: Xamarin.GooglePlayServices.Stats => 0x5af5ecd7aad901e1 => 347
	i64 6557084851308642443, ; 286: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 291
	i64 6560151584539558821, ; 287: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 191
	i64 6589202984700901502, ; 288: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 331
	i64 6591971792923354531, ; 289: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 261
	i64 6594803674001204912, ; 290: Plugin.Firebase.CloudMessaging => 0x5b857300304866b0 => 209
	i64 6617685658146568858, ; 291: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6657448669945361351, ; 292: Xamarin.Google.Android.Play.Integrity => 0x5c64024aea7d73c7 => 326
	i64 6690776524695692178, ; 293: Xamarin.Firebase.Crashlytics.dll => 0x5cda69ccca026392 => 304
	i64 6713440830605852118, ; 294: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6737082967062634076, ; 295: Xamarin.GooglePlayServices.Ads.Identifier.dll => 0x5d7eed43921a5e5c => 336
	i64 6739853162153639747, ; 296: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 297: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 387
	i64 6772837112740759457, ; 298: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6777482997383978746, ; 299: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 390
	i64 6786606130239981554, ; 300: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 301: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 302: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876862101832370452, ; 303: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6878582369430612696, ; 304: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x5f75a238802d2ad8 => 324
	i64 6894844156784520562, ; 305: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6975328107116786489, ; 306: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 296
	i64 7007997260651418532, ; 307: Xamarin.Firebase.Analytics.dll => 0x61416860ec09d3a4 => 295
	i64 7011053663211085209, ; 308: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 255
	i64 7026573318513401069, ; 309: Xamarin.Firebase.Encoders.Proto.dll => 0x618367346e3a9ced => 310
	i64 7060896174307865760, ; 310: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 311: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 312: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 313: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 256
	i64 7112547816752919026, ; 314: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7152933704405506614, ; 315: Xamarin.Google.Android.Play.Integrity.dll => 0x6344534e69025a36 => 326
	i64 7158676156446871556, ; 316: Xamarin.Firebase.Functions.dll => 0x6358ba0937131004 => 312
	i64 7192745174564810625, ; 317: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 224
	i64 7220009545223068405, ; 318: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 394
	i64 7270811800166795866, ; 319: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 320: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 321: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 322: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7349431895026339542, ; 323: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 223
	i64 7377312882064240630, ; 324: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7385250113861300937, ; 325: Xamarin.Firebase.Iid.Interop.dll => 0x667dadd98e1db2c9 => 314
	i64 7446349959216394011, ; 326: Plugin.Firebase.DynamicLinks.dll => 0x6756bfd5e0566f1b => 212
	i64 7476537270401454554, ; 327: Xamarin.Firebase.Encoders.JSON.dll => 0x67c1ff08f83f51da => 309
	i64 7488575175965059935, ; 328: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 329: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 330: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 220
	i64 7515866667942440541, ; 331: Xamarin.Firebase.Storage.Common => 0x684db8e9e9e86e5d => 321
	i64 7554287652784848386, ; 332: MauiIcons.Core => 0x68d638988b5c3e02 => 173
	i64 7586519340370716875, ; 333: Plugin.Firebase.Auth => 0x6948bb251c6d68cb => 208
	i64 7592577537120840276, ; 334: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 335: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 336: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 337: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7708790323521193081, ; 338: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 385
	i64 7711238313006071682, ; 339: Xamarin.GooglePlayServices.Measurement.Impl.dll => 0x6b03d263c91bff82 => 344
	i64 7714652370974252055, ; 340: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 341: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 264
	i64 7735176074855944702, ; 342: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 343: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 359
	i64 7791074099216502080, ; 344: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 345: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 346: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 231
	i64 7904570928025870493, ; 347: Xamarin.Firebase.Installations => 0x6db2ad60fadca09d => 315
	i64 7940488133782528123, ; 348: Xamarin.GooglePlayServices.CloudMessaging => 0x6e3247e31d4fe07b => 340
	i64 7969431548154767168, ; 349: Xamarin.Firebase.Installations.dll => 0x6e991bc4e98e6740 => 315
	i64 7974216756248484795, ; 350: Plugin.Firebase.Functions.dll => 0x6eaa1be3fe289bbb => 214
	i64 7991572870742010042, ; 351: Xamarin.Firebase.Firestore.dll => 0x6ee7c52f4d39e8ba => 311
	i64 8003335089973143038, ; 352: Square.OkHttp3.dll => 0x6f118edc6044a5fe => 217
	i64 8025517457475554965, ; 353: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 354: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 355: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 356: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 258
	i64 8085230611270010360, ; 357: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 358: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 359: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 360: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 361: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 362: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 363: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 363
	i64 8246048515196606205, ; 364: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 204
	i64 8264926008854159966, ; 365: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 366: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 367: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 368: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8398329775253868912, ; 369: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 241
	i64 8400357532724379117, ; 370: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 273
	i64 8410671156615598628, ; 371: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 372: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 262
	i64 8428678171113854126, ; 373: Xamarin.Firebase.Iid.dll => 0x74f8ae23bb5494ae => 313
	i64 8465511506719290632, ; 374: Xamarin.Firebase.Messaging.dll => 0x757b89dcf7fc3508 => 318
	i64 8518412311883997971, ; 375: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 376: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 377: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 252
	i64 8599632406834268464, ; 378: CommunityToolkit.Maui => 0x7758081c784b4930 => 177
	i64 8601935802264776013, ; 379: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 285
	i64 8605236455805933405, ; 380: Xamarin.Google.Android.Recaptcha.dll => 0x776bf0f6cc8dd75d => 327
	i64 8609060182490045521, ; 381: Square.OkIO.dll => 0x7779869f8b475c51 => 218
	i64 8613760304861496997, ; 382: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations.dll => 0x778a395c0fa146a5 => 293
	i64 8614108721271900878, ; 383: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 389
	i64 8623059219396073920, ; 384: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 385: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 386: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 387: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 272
	i64 8648495978913578441, ; 388: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 389: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 389
	i64 8684531736582871431, ; 390: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8692553983253568356, ; 391: MauiIcons.Material.dll => 0x78a227caeabc5b64 => 174
	i64 8725526185868997716, ; 392: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8828892993892926228, ; 393: Xamarin.Firebase.Config.dll => 0x7a86876684ec4314 => 303
	i64 8834404175818295388, ; 394: Xamarin.Firebase.Dynamic.Links => 0x7a9a1bca8de0885c => 307
	i64 8853378295825400934, ; 395: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 360
	i64 8941376889969657626, ; 396: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 397: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 275
	i64 8954753533646919997, ; 398: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 9017840326336271361, ; 399: Xamarin.Firebase.Functions => 0x7d25cdff8c775401 => 312
	i64 9031035476476434958, ; 400: Xamarin.KotlinX.Coroutines.Core.dll => 0x7d54aeead9541a0e => 364
	i64 9045785047181495996, ; 401: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 399
	i64 9052662452269567435, ; 402: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 196
	i64 9087864182143226060, ; 403: Xamarin.GooglePlayServices.Measurement.Sdk.dll => 0x7e1e9452f7a490cc => 345
	i64 9113579748781016974, ; 404: Xamarin.Firebase.Storage.dll => 0x7e79f07ee649478e => 320
	i64 9138683372487561558, ; 405: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9285318971778582014, ; 406: Plugin.Firebase.Core.dll => 0x80dc1468bb0ec5fe => 210
	i64 9312692141327339315, ; 407: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 290
	i64 9324707631942237306, ; 408: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 230
	i64 9358526837836468481, ; 409: Xamarin.GooglePlayServices.Measurement.Base.dll => 0x81e02a934e33d101 => 343
	i64 9427266486299436557, ; 410: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 195
	i64 9468215723722196442, ; 411: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9490522350195345034, ; 412: Xamarin.Google.Android.Recaptcha => 0x83b51bcb684c868a => 327
	i64 9554839972845591462, ; 413: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 414: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 329
	i64 9584643793929893533, ; 415: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9659729154652888475, ; 416: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 417: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 418: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 419: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 242
	i64 9698755676118397142, ; 420: Auth0.OidcClient => 0x8698e6e6b65730d6 => 176
	i64 9702891218465930390, ; 421: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9735414641753518179, ; 422: Xamarin.Firebase.Encoders.Proto => 0x871b240946daf063 => 310
	i64 9774216967140627647, ; 423: Xamarin.Firebase.Datatransport.dll => 0x87a4fe8bac0354bf => 306
	i64 9780093022148426479, ; 424: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 292
	i64 9796610708422913120, ; 425: Xamarin.Firebase.Iid.Interop => 0x87f48d88de55ec60 => 314
	i64 9808709177481450983, ; 426: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9819168441846169364, ; 427: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 196
	i64 9825649861376906464, ; 428: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 239
	i64 9834056768316610435, ; 429: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 430: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9875200773399460291, ; 431: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 338
	i64 9907349773706910547, ; 432: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 252
	i64 9933555792566666578, ; 433: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 434: Microsoft.Maui => 0x8a2b8315b36616ac => 202
	i64 9974604633896246661, ; 435: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 9991543690424095600, ; 436: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 374
	i64 10017511394021241210, ; 437: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 190
	i64 10038780035334861115, ; 438: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 439: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10071983904436292605, ; 440: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations => 0x8bc6dfff57608bfd => 293
	i64 10078727084704864206, ; 441: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 442: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 443: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 200
	i64 10104292372708262378, ; 444: Xamarin.GooglePlayServices.Measurement.Base => 0x8c39a860cdf701ea => 343
	i64 10105485790837105934, ; 445: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 446: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 371
	i64 10167561595017141208, ; 447: Xamarin.GoogleAndroid.Annotations.dll => 0x8d1a6f668ee69bd8 => 335
	i64 10226222362177979215, ; 448: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 361
	i64 10229024438826829339, ; 449: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 246
	i64 10236703004850800690, ; 450: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 451: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 452: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 358
	i64 10352330178246763130, ; 453: Xamarin.Firebase.Measurement.Connector => 0x8faadd72b7f4627a => 317
	i64 10360651442923773544, ; 454: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 455: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 456: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 284
	i64 10406448008575299332, ; 457: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 365
	i64 10430153318873392755, ; 458: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 243
	i64 10447083246144586668, ; 459: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 183
	i64 10506226065143327199, ; 460: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 369
	i64 10546663366131771576, ; 461: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 462: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 463: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10634102643060048396, ; 464: IdentityModel => 0x9393ec0310a3020c => 181
	i64 10670374202010151210, ; 465: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 466: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10785150219063592792, ; 467: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10822644899632537592, ; 468: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 469: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10842631359359123634, ; 470: Plugin.Firebase.Auth.dll => 0x9678c3c64d1c80b2 => 208
	i64 10847732767863316357, ; 471: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 232
	i64 10857315922431607327, ; 472: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x96acef4e92ba821f => 319
	i64 10880838204485145808, ; 473: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 177
	i64 10899834349646441345, ; 474: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 475: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 476: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 10966933586012635777, ; 477: Xamarin.Grpc.OkHttp.dll => 0x98325ffdbd958281 => 353
	i64 11002576679268595294, ; 478: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 189
	i64 11009005086950030778, ; 479: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 202
	i64 11019817191295005410, ; 480: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 229
	i64 11023048688141570732, ; 481: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 482: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11071824625609515081, ; 483: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 331
	i64 11072526564452562534, ; 484: Square.OkIO.JVM.dll => 0x99a9843ee0457666 => 219
	i64 11103970607964515343, ; 485: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 380
	i64 11136029745144976707, ; 486: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 328
	i64 11162124722117608902, ; 487: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 289
	i64 11171845786728836392, ; 488: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x9b0a5e8d536aad28 => 340
	i64 11188319605227840848, ; 489: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 490: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 383
	i64 11226290749488709958, ; 491: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 191
	i64 11235648312900863002, ; 492: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11299661109949763898, ; 493: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 237
	i64 11329751333533450475, ; 494: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11336891506707244397, ; 495: Xamarin.Firebase.Datatransport => 0x9d54bac28a6da56d => 306
	i64 11340910727871153756, ; 496: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 245
	i64 11347436699239206956, ; 497: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11361951459766490322, ; 498: Xamarin.GoogleAndroid.Annotations => 0x9dadc2a78a9cd4d2 => 335
	i64 11376351552967644903, ; 499: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 296
	i64 11380782361707310188, ; 500: IdentityModel.OidcClient => 0x9df0a9428f986c6c => 182
	i64 11392833485892708388, ; 501: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 274
	i64 11432101114902388181, ; 502: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 503: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 504: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 505: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11496466075493495264, ; 506: Xamarin.Grpc.Context.dll => 0x9f8ba6fc1a1e71e0 => 351
	i64 11508496261504176197, ; 507: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 255
	i64 11517440453979132662, ; 508: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 193
	i64 11518296021396496455, ; 509: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 381
	i64 11529969570048099689, ; 510: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 289
	i64 11530571088791430846, ; 511: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 188
	i64 11543422055205009205, ; 512: Xamarin.Firebase.Firestore => 0xa032793314e77735 => 311
	i64 11580057168383206117, ; 513: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 227
	i64 11591352189662810718, ; 514: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 282
	i64 11597940890313164233, ; 515: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 516: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 256
	i64 11692977985522001935, ; 517: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11705530742807338875, ; 518: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 377
	i64 11707295265961861272, ; 519: Plugin.Firebase.Crashlytics.dll => 0xa278ab043844e098 => 211
	i64 11707554492040141440, ; 520: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 521: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11845716948639519119, ; 522: Xamarin.Firebase.Config => 0xa46470cdb17b918f => 303
	i64 11855946309386773903, ; 523: Xamarin.Google.Dagger => 0xa488c85a571a258f => 330
	i64 11864794479965678424, ; 524: Xamarin.Protobuf.JavaLite.dll => 0xa4a837b7975eab58 => 367
	i64 11991047634523762324, ; 525: System.Net => 0xa668c24ad493ae94 => 81
	i64 12010362171126083089, ; 526: Plugin.Firebase.CloudMessaging.dll => 0xa6ad60c2d1c26e11 => 209
	i64 12040886584167504988, ; 527: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 528: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 529: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 530: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 531: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12130675990699684169, ; 532: Plugin.Firebase.Functions => 0xa858d18adf03b149 => 214
	i64 12137774235383566651, ; 533: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 286
	i64 12145679461940342714, ; 534: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 535: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 221
	i64 12198439281774268251, ; 536: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 197
	i64 12199822034229429413, ; 537: Plugin.Firebase.Firestore => 0xa94e7980b13a84a5 => 213
	i64 12201331334810686224, ; 538: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 539: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12332222936682028543, ; 540: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12336928085371509187, ; 541: Xamarin.GooglePlayServices.Auth.Api.Phone => 0xab3592bad41bd9c3 => 337
	i64 12341818387765915815, ; 542: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 178
	i64 12346958216201575315, ; 543: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 357
	i64 12375446203996702057, ; 544: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 545: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 194
	i64 12451044538927396471, ; 546: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 254
	i64 12466513435562512481, ; 547: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 268
	i64 12475113361194491050, ; 548: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 402
	i64 12487638416075308985, ; 549: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 248
	i64 12517810545449516888, ; 550: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 551: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 235
	i64 12550732019250633519, ; 552: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12681088699309157496, ; 553: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 382
	i64 12699999919562409296, ; 554: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 555: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 236
	i64 12708238894395270091, ; 556: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 557: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 558: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 559: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 291
	i64 12823819093633476069, ; 560: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 395
	i64 12828192437253469131, ; 561: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 362
	i64 12835242264250840079, ; 562: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 563: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 192
	i64 12843770487262409629, ; 564: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12845046283116214416, ; 565: Xamarin.Firebase.Analytics => 0xb242c589dc97f890 => 295
	i64 12854524964145442905, ; 566: Xamarin.Firebase.Encoders.dll => 0xb26472594447b059 => 308
	i64 12859557719246324186, ; 567: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12982280885948128408, ; 568: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 247
	i64 13068258254871114833, ; 569: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13084382143907087733, ; 570: Xamarin.Grpc.Context => 0xb595103c610bc575 => 351
	i64 13121372212744448808, ; 571: Xamarin.Firebase.Abt => 0xb6187a81ea506b28 => 294
	i64 13129914918964716986, ; 572: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 251
	i64 13173818576982874404, ; 573: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13221551921002590604, ; 574: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 369
	i64 13222659110913276082, ; 575: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 383
	i64 13343850469010654401, ; 576: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 577: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 578: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 377
	i64 13401370062847626945, ; 579: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 286
	i64 13402939433517888790, ; 580: Xamarin.Google.Guava.FailureAccess => 0xba00ce6728e8b516 => 333
	i64 13404347523447273790, ; 581: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 241
	i64 13431476299110033919, ; 582: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 583: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 334
	i64 13463706743370286408, ; 584: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 585: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 359
	i64 13467053111158216594, ; 586: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 397
	i64 13491513212026656886, ; 587: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 233
	i64 13540124433173649601, ; 588: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 398
	i64 13545416393490209236, ; 589: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 381
	i64 13572454107664307259, ; 590: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 276
	i64 13578472628727169633, ; 591: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 592: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13609095008681508810, ; 593: Xamarin.Grpc.Protobuf.Lite => 0xbcdd37ce6b00bfca => 354
	i64 13621154251410165619, ; 594: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 247
	i64 13647894001087880694, ; 595: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 596: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 226
	i64 13702626353344114072, ; 597: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 598: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 599: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 600: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 601: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 376
	i64 13761131323945450492, ; 602: Xamarin.Firebase.Storage => 0xbef95c078f44fbfc => 320
	i64 13768883594457632599, ; 603: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13807020823704499900, ; 604: Xamarin.Firebase.Common.Ktx.dll => 0xbf9c64495353f6bc => 301
	i64 13814445057219246765, ; 605: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 379
	i64 13828521679616088467, ; 606: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 360
	i64 13829530607229561650, ; 607: Xamarin.Firebase.Installations.InterOp => 0xbfec5cd0b64f6b32 => 316
	i64 13865727802090930648, ; 608: Xamarin.Google.Guava.dll => 0xc06cf5f8e3e341d8 => 332
	i64 13881769479078963060, ; 609: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 610: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 611: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 612: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 254
	i64 13975254687929967048, ; 613: Xamarin.Google.Guava => 0xc1f2141837ada1c8 => 332
	i64 14075334701871371868, ; 614: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14100563506285742564, ; 615: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 371
	i64 14124974489674258913, ; 616: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 235
	i64 14125464355221830302, ; 617: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14165531176311179688, ; 618: Xamarin.Firebase.Auth => 0xc496138d7abfc9a8 => 298
	i64 14178052285788134900, ; 619: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 222
	i64 14212104595480609394, ; 620: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 621: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 622: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 623: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 624: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 625: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 274
	i64 14298246716367104064, ; 626: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 627: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 628: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 629: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 223
	i64 14346402571976470310, ; 630: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14382082037123372364, ; 631: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 299
	i64 14461014870687870182, ; 632: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 633: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 392
	i64 14486659737292545672, ; 634: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 259
	i64 14495724990987328804, ; 635: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 277
	i64 14522721392235705434, ; 636: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 373
	i64 14524915121004231475, ; 637: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 357
	i64 14551742072151931844, ; 638: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14556034074661724008, ; 639: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 178
	i64 14561513370130550166, ; 640: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 641: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 642: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 643: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 269
	i64 14669215534098758659, ; 644: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 186
	i64 14671188939680189912, ; 645: Xamarin.Grpc.Core => 0xcb9a889bfe470dd8 => 352
	i64 14690985099581930927, ; 646: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14698606024688292729, ; 647: Xamarin.Io.PerfMark.PerfMarkApi => 0xcbfbf04d8af65379 => 356
	i64 14705122255218365489, ; 648: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 384
	i64 14744092281598614090, ; 649: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 400
	i64 14786806131582421479, ; 650: Plugin.Firebase.dll => 0xcd3549d53389c9e7 => 206
	i64 14789919016435397935, ; 651: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 300
	i64 14792063746108907174, ; 652: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 334
	i64 14809388726477333247, ; 653: Xamarin.GooglePlayServices.Stats.dll => 0xcd8584954e5b22ff => 347
	i64 14820020068193622728, ; 654: Xamarin.Firebase.Abt.dll => 0xcdab49bb70d75ac8 => 294
	i64 14832630590065248058, ; 655: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 656: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 245
	i64 14889905118082851278, ; 657: GoogleGson.dll => 0xcea391d0969961ce => 180
	i64 14892012299694389861, ; 658: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 401
	i64 14904040806490515477, ; 659: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 368
	i64 14912225920358050525, ; 660: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 661: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 662: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 187
	i64 14984936317414011727, ; 663: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 664: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 665: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 248
	i64 15015154896917945444, ; 666: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 667: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 668: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 669: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15099396616243600100, ; 670: Xamarin.KotlinX.Coroutines.Play.Services => 0xd18bd538f1ef5ae4 => 366
	i64 15111608613780139878, ; 671: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 385
	i64 15115185479366240210, ; 672: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 673: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 674: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 193
	i64 15150743910298169673, ; 675: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 275
	i64 15227001540531775957, ; 676: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 185
	i64 15234786388537674379, ; 677: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 678: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 679: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 238
	i64 15279429628684179188, ; 680: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 363
	i64 15299439993936780255, ; 681: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 682: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 683: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 243
	i64 15391712275433856905, ; 684: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 187
	i64 15526743539506359484, ; 685: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 686: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 687: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 688: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 372
	i64 15541854775306130054, ; 689: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 690: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 691: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 267
	i64 15609085926864131306, ; 692: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 693: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15664356999916475676, ; 694: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 372
	i64 15710114879900314733, ; 695: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 696: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 380
	i64 15746562641113920206, ; 697: MauiIcons.Material => 0xda87074b110832ce => 174
	i64 15755368083429170162, ; 698: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 699: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 281
	i64 15783653065526199428, ; 700: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 373
	i64 15788897513097211459, ; 701: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xdb1d6ea28f352e43 => 319
	i64 15817206913877585035, ; 702: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 703: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 704: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 705: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 199
	i64 15930129725311349754, ; 706: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 348
	i64 15934062614519587357, ; 707: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 708: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 709: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 710: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 711: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 712: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16154507427712707110, ; 713: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 714: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 715: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 386
	i64 16303230644352379770, ; 716: Xamarin.Grpc.OkHttp => 0xe240b5e48fe2eb7a => 353
	i64 16315482530584035869, ; 717: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 718: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 189
	i64 16337011941688632206, ; 719: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 720: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 253
	i64 16380036236984929981, ; 721: MauiIcons.Core.dll => 0xe351942c21834ebd => 173
	i64 16423015068819898779, ; 722: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 362
	i64 16454459195343277943, ; 723: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16467346005009053642, ; 724: Xamarin.Google.Android.DataTransport.TransportApi => 0xe487c3f19e0337ca => 322
	i64 16496768397145114574, ; 725: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16579050217386591297, ; 726: Xamarin.Google.Guava.FailureAccess.dll => 0xe6149e5548b0c441 => 333
	i64 16589693266713801121, ; 727: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 266
	i64 16621146507174665210, ; 728: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 240
	i64 16648892297579399389, ; 729: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 179
	i64 16649148416072044166, ; 730: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 204
	i64 16677317093839702854, ; 731: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 273
	i64 16702652415771857902, ; 732: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 733: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 734: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 735: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 736: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 737: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16822611501064131242, ; 738: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 739: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 740: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 741: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 742: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 743: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 393
	i64 16977952268158210142, ; 744: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 745: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 266
	i64 16998075588627545693, ; 746: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 271
	i64 17008137082415910100, ; 747: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17020682463616072225, ; 748: Xamarin.Firebase.Crashlytics => 0xec359c856e8e7a21 => 304
	i64 17024911836938395553, ; 749: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 228
	i64 17031351772568316411, ; 750: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 270
	i64 17037200463775726619, ; 751: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 257
	i64 17062143951396181894, ; 752: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 753: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 400
	i64 17118171214553292978, ; 754: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17137864900836977098, ; 755: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 198
	i64 17187273293601214786, ; 756: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 757: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 758: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17230721278011714856, ; 759: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 760: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 761: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 762: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 763: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 764: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 378
	i64 17360349973592121190, ; 765: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 329
	i64 17434242208926550937, ; 766: Xamarin.Google.Android.DataTransport.TransportRuntime => 0xf1f2deeb1f304b99 => 324
	i64 17438153253682247751, ; 767: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 393
	i64 17470386307322966175, ; 768: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 769: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 770: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 376
	i64 17522591619082469157, ; 771: GoogleGson => 0xf32cc03d27a5bf25 => 180
	i64 17580703809748094541, ; 772: Xamarin.GooglePlayServices.Measurement.Api => 0xf3fb34f7e9644e4d => 342
	i64 17590473451926037903, ; 773: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 221
	i64 17605100189928655442, ; 774: Xamarin.Firebase.AppCheck.Interop => 0xf451e158cfdc0a52 => 297
	i64 17623389608345532001, ; 775: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 388
	i64 17627500474728259406, ; 776: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17677828421478984182, ; 777: Xamarin.Firebase.Installations.InterOp.dll => 0xf5544349c68f29f6 => 316
	i64 17685921127322830888, ; 778: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 779: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 399
	i64 17704177640604968747, ; 780: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 268
	i64 17710060891934109755, ; 781: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 265
	i64 17712670374920797664, ; 782: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17777860260071588075, ; 783: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 784: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 195
	i64 17838668724098252521, ; 785: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 786: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 358
	i64 17928294245072900555, ; 787: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17945795017270165205, ; 788: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0xf90c457cc05cfed5 => 322
	i64 17986907704309214542, ; 789: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 339
	i64 17992315986609351877, ; 790: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18025913125965088385, ; 791: System.Threading => 0xfa28e87b91334681 => 148
	i64 18099568558057551825, ; 792: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 387
	i64 18116111925905154859, ; 793: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 233
	i64 18121036031235206392, ; 794: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 270
	i64 18146411883821974900, ; 795: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 796: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 797: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 798: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 799: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 251
	i64 18305135509493619199, ; 800: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 272
	i64 18318849532986632368, ; 801: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 802: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 382
	i64 18337470502355292274, ; 803: Xamarin.Firebase.Messaging => 0xfe7bc8440c175072 => 318
	i64 18380184030268848184, ; 804: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 288
	i64 18439108438687598470 ; 805: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [806 x i32] [
	i32 216, ; 0
	i32 250, ; 1
	i32 192, ; 2
	i32 171, ; 3
	i32 203, ; 4
	i32 58, ; 5
	i32 236, ; 6
	i32 151, ; 7
	i32 278, ; 8
	i32 237, ; 9
	i32 281, ; 10
	i32 244, ; 11
	i32 132, ; 12
	i32 175, ; 13
	i32 56, ; 14
	i32 280, ; 15
	i32 345, ; 16
	i32 207, ; 17
	i32 375, ; 18
	i32 95, ; 19
	i32 263, ; 20
	i32 129, ; 21
	i32 338, ; 22
	i32 145, ; 23
	i32 238, ; 24
	i32 18, ; 25
	i32 378, ; 26
	i32 249, ; 27
	i32 181, ; 28
	i32 264, ; 29
	i32 150, ; 30
	i32 104, ; 31
	i32 95, ; 32
	i32 325, ; 33
	i32 386, ; 34
	i32 356, ; 35
	i32 212, ; 36
	i32 36, ; 37
	i32 350, ; 38
	i32 28, ; 39
	i32 232, ; 40
	i32 305, ; 41
	i32 271, ; 42
	i32 299, ; 43
	i32 50, ; 44
	i32 115, ; 45
	i32 302, ; 46
	i32 349, ; 47
	i32 70, ; 48
	i32 200, ; 49
	i32 65, ; 50
	i32 170, ; 51
	i32 145, ; 52
	i32 384, ; 53
	i32 292, ; 54
	i32 231, ; 55
	i32 267, ; 56
	i32 257, ; 57
	i32 40, ; 58
	i32 89, ; 59
	i32 81, ; 60
	i32 205, ; 61
	i32 66, ; 62
	i32 62, ; 63
	i32 86, ; 64
	i32 230, ; 65
	i32 106, ; 66
	i32 374, ; 67
	i32 278, ; 68
	i32 323, ; 69
	i32 102, ; 70
	i32 183, ; 71
	i32 35, ; 72
	i32 227, ; 73
	i32 396, ; 74
	i32 280, ; 75
	i32 201, ; 76
	i32 179, ; 77
	i32 349, ; 78
	i32 396, ; 79
	i32 119, ; 80
	i32 265, ; 81
	i32 370, ; 82
	i32 352, ; 83
	i32 388, ; 84
	i32 142, ; 85
	i32 213, ; 86
	i32 141, ; 87
	i32 361, ; 88
	i32 53, ; 89
	i32 35, ; 90
	i32 141, ; 91
	i32 205, ; 92
	i32 224, ; 93
	i32 234, ; 94
	i32 190, ; 95
	i32 364, ; 96
	i32 249, ; 97
	i32 8, ; 98
	i32 14, ; 99
	i32 392, ; 100
	i32 277, ; 101
	i32 51, ; 102
	i32 197, ; 103
	i32 260, ; 104
	i32 136, ; 105
	i32 101, ; 106
	i32 355, ; 107
	i32 242, ; 108
	i32 287, ; 109
	i32 116, ; 110
	i32 225, ; 111
	i32 163, ; 112
	i32 395, ; 113
	i32 198, ; 114
	i32 166, ; 115
	i32 67, ; 116
	i32 186, ; 117
	i32 370, ; 118
	i32 80, ; 119
	i32 101, ; 120
	i32 282, ; 121
	i32 194, ; 122
	i32 117, ; 123
	i32 375, ; 124
	i32 328, ; 125
	i32 305, ; 126
	i32 78, ; 127
	i32 325, ; 128
	i32 219, ; 129
	i32 114, ; 130
	i32 0, ; 131
	i32 121, ; 132
	i32 48, ; 133
	i32 308, ; 134
	i32 218, ; 135
	i32 128, ; 136
	i32 258, ; 137
	i32 228, ; 138
	i32 82, ; 139
	i32 110, ; 140
	i32 75, ; 141
	i32 365, ; 142
	i32 300, ; 143
	i32 220, ; 144
	i32 339, ; 145
	i32 337, ; 146
	i32 203, ; 147
	i32 53, ; 148
	i32 284, ; 149
	i32 184, ; 150
	i32 342, ; 151
	i32 69, ; 152
	i32 283, ; 153
	i32 83, ; 154
	i32 172, ; 155
	i32 390, ; 156
	i32 116, ; 157
	i32 185, ; 158
	i32 156, ; 159
	i32 184, ; 160
	i32 222, ; 161
	i32 167, ; 162
	i32 276, ; 163
	i32 366, ; 164
	i32 250, ; 165
	i32 346, ; 166
	i32 336, ; 167
	i32 188, ; 168
	i32 32, ; 169
	i32 201, ; 170
	i32 122, ; 171
	i32 72, ; 172
	i32 62, ; 173
	i32 175, ; 174
	i32 161, ; 175
	i32 113, ; 176
	i32 354, ; 177
	i32 88, ; 178
	i32 199, ; 179
	i32 215, ; 180
	i32 401, ; 181
	i32 105, ; 182
	i32 18, ; 183
	i32 211, ; 184
	i32 146, ; 185
	i32 118, ; 186
	i32 58, ; 187
	i32 244, ; 188
	i32 17, ; 189
	i32 52, ; 190
	i32 309, ; 191
	i32 348, ; 192
	i32 92, ; 193
	i32 323, ; 194
	i32 207, ; 195
	i32 398, ; 196
	i32 55, ; 197
	i32 129, ; 198
	i32 344, ; 199
	i32 152, ; 200
	i32 41, ; 201
	i32 330, ; 202
	i32 92, ; 203
	i32 288, ; 204
	i32 50, ; 205
	i32 368, ; 206
	i32 302, ; 207
	i32 217, ; 208
	i32 162, ; 209
	i32 13, ; 210
	i32 262, ; 211
	i32 225, ; 212
	i32 283, ; 213
	i32 36, ; 214
	i32 67, ; 215
	i32 346, ; 216
	i32 109, ; 217
	i32 215, ; 218
	i32 0, ; 219
	i32 341, ; 220
	i32 226, ; 221
	i32 99, ; 222
	i32 99, ; 223
	i32 11, ; 224
	i32 11, ; 225
	i32 269, ; 226
	i32 25, ; 227
	i32 128, ; 228
	i32 76, ; 229
	i32 261, ; 230
	i32 355, ; 231
	i32 109, ; 232
	i32 287, ; 233
	i32 285, ; 234
	i32 106, ; 235
	i32 210, ; 236
	i32 2, ; 237
	i32 26, ; 238
	i32 240, ; 239
	i32 157, ; 240
	i32 394, ; 241
	i32 21, ; 242
	i32 397, ; 243
	i32 49, ; 244
	i32 43, ; 245
	i32 126, ; 246
	i32 229, ; 247
	i32 59, ; 248
	i32 321, ; 249
	i32 119, ; 250
	i32 290, ; 251
	i32 253, ; 252
	i32 239, ; 253
	i32 3, ; 254
	i32 259, ; 255
	i32 341, ; 256
	i32 279, ; 257
	i32 38, ; 258
	i32 124, ; 259
	i32 182, ; 260
	i32 301, ; 261
	i32 391, ; 262
	i32 307, ; 263
	i32 317, ; 264
	i32 279, ; 265
	i32 297, ; 266
	i32 350, ; 267
	i32 391, ; 268
	i32 137, ; 269
	i32 149, ; 270
	i32 85, ; 271
	i32 90, ; 272
	i32 313, ; 273
	i32 263, ; 274
	i32 402, ; 275
	i32 367, ; 276
	i32 260, ; 277
	i32 298, ; 278
	i32 176, ; 279
	i32 216, ; 280
	i32 379, ; 281
	i32 234, ; 282
	i32 206, ; 283
	i32 246, ; 284
	i32 347, ; 285
	i32 291, ; 286
	i32 191, ; 287
	i32 331, ; 288
	i32 261, ; 289
	i32 209, ; 290
	i32 133, ; 291
	i32 326, ; 292
	i32 304, ; 293
	i32 96, ; 294
	i32 336, ; 295
	i32 3, ; 296
	i32 387, ; 297
	i32 105, ; 298
	i32 390, ; 299
	i32 33, ; 300
	i32 154, ; 301
	i32 158, ; 302
	i32 155, ; 303
	i32 324, ; 304
	i32 82, ; 305
	i32 296, ; 306
	i32 295, ; 307
	i32 255, ; 308
	i32 310, ; 309
	i32 143, ; 310
	i32 87, ; 311
	i32 19, ; 312
	i32 256, ; 313
	i32 51, ; 314
	i32 326, ; 315
	i32 312, ; 316
	i32 224, ; 317
	i32 394, ; 318
	i32 61, ; 319
	i32 54, ; 320
	i32 4, ; 321
	i32 97, ; 322
	i32 223, ; 323
	i32 17, ; 324
	i32 314, ; 325
	i32 212, ; 326
	i32 309, ; 327
	i32 155, ; 328
	i32 84, ; 329
	i32 220, ; 330
	i32 321, ; 331
	i32 173, ; 332
	i32 208, ; 333
	i32 29, ; 334
	i32 45, ; 335
	i32 64, ; 336
	i32 66, ; 337
	i32 385, ; 338
	i32 344, ; 339
	i32 172, ; 340
	i32 264, ; 341
	i32 1, ; 342
	i32 359, ; 343
	i32 47, ; 344
	i32 24, ; 345
	i32 231, ; 346
	i32 315, ; 347
	i32 340, ; 348
	i32 315, ; 349
	i32 214, ; 350
	i32 311, ; 351
	i32 217, ; 352
	i32 165, ; 353
	i32 108, ; 354
	i32 12, ; 355
	i32 258, ; 356
	i32 63, ; 357
	i32 27, ; 358
	i32 23, ; 359
	i32 93, ; 360
	i32 168, ; 361
	i32 12, ; 362
	i32 363, ; 363
	i32 204, ; 364
	i32 29, ; 365
	i32 103, ; 366
	i32 14, ; 367
	i32 126, ; 368
	i32 241, ; 369
	i32 273, ; 370
	i32 91, ; 371
	i32 262, ; 372
	i32 313, ; 373
	i32 318, ; 374
	i32 9, ; 375
	i32 86, ; 376
	i32 252, ; 377
	i32 177, ; 378
	i32 285, ; 379
	i32 327, ; 380
	i32 218, ; 381
	i32 293, ; 382
	i32 389, ; 383
	i32 71, ; 384
	i32 168, ; 385
	i32 1, ; 386
	i32 272, ; 387
	i32 5, ; 388
	i32 389, ; 389
	i32 44, ; 390
	i32 174, ; 391
	i32 27, ; 392
	i32 303, ; 393
	i32 307, ; 394
	i32 360, ; 395
	i32 158, ; 396
	i32 275, ; 397
	i32 112, ; 398
	i32 312, ; 399
	i32 364, ; 400
	i32 399, ; 401
	i32 196, ; 402
	i32 345, ; 403
	i32 320, ; 404
	i32 121, ; 405
	i32 210, ; 406
	i32 290, ; 407
	i32 230, ; 408
	i32 343, ; 409
	i32 195, ; 410
	i32 159, ; 411
	i32 327, ; 412
	i32 131, ; 413
	i32 329, ; 414
	i32 57, ; 415
	i32 138, ; 416
	i32 83, ; 417
	i32 30, ; 418
	i32 242, ; 419
	i32 176, ; 420
	i32 10, ; 421
	i32 310, ; 422
	i32 306, ; 423
	i32 292, ; 424
	i32 314, ; 425
	i32 171, ; 426
	i32 196, ; 427
	i32 239, ; 428
	i32 150, ; 429
	i32 94, ; 430
	i32 338, ; 431
	i32 252, ; 432
	i32 60, ; 433
	i32 202, ; 434
	i32 157, ; 435
	i32 374, ; 436
	i32 190, ; 437
	i32 64, ; 438
	i32 88, ; 439
	i32 293, ; 440
	i32 79, ; 441
	i32 47, ; 442
	i32 200, ; 443
	i32 343, ; 444
	i32 143, ; 445
	i32 371, ; 446
	i32 335, ; 447
	i32 361, ; 448
	i32 246, ; 449
	i32 74, ; 450
	i32 91, ; 451
	i32 358, ; 452
	i32 317, ; 453
	i32 135, ; 454
	i32 90, ; 455
	i32 284, ; 456
	i32 365, ; 457
	i32 243, ; 458
	i32 183, ; 459
	i32 369, ; 460
	i32 112, ; 461
	i32 42, ; 462
	i32 159, ; 463
	i32 181, ; 464
	i32 4, ; 465
	i32 103, ; 466
	i32 70, ; 467
	i32 60, ; 468
	i32 39, ; 469
	i32 208, ; 470
	i32 232, ; 471
	i32 319, ; 472
	i32 177, ; 473
	i32 153, ; 474
	i32 56, ; 475
	i32 34, ; 476
	i32 353, ; 477
	i32 189, ; 478
	i32 202, ; 479
	i32 229, ; 480
	i32 21, ; 481
	i32 163, ; 482
	i32 331, ; 483
	i32 219, ; 484
	i32 380, ; 485
	i32 328, ; 486
	i32 289, ; 487
	i32 340, ; 488
	i32 140, ; 489
	i32 383, ; 490
	i32 191, ; 491
	i32 89, ; 492
	i32 237, ; 493
	i32 147, ; 494
	i32 306, ; 495
	i32 245, ; 496
	i32 162, ; 497
	i32 335, ; 498
	i32 296, ; 499
	i32 182, ; 500
	i32 274, ; 501
	i32 6, ; 502
	i32 169, ; 503
	i32 31, ; 504
	i32 107, ; 505
	i32 351, ; 506
	i32 255, ; 507
	i32 193, ; 508
	i32 381, ; 509
	i32 289, ; 510
	i32 188, ; 511
	i32 311, ; 512
	i32 227, ; 513
	i32 282, ; 514
	i32 167, ; 515
	i32 256, ; 516
	i32 140, ; 517
	i32 377, ; 518
	i32 211, ; 519
	i32 59, ; 520
	i32 144, ; 521
	i32 303, ; 522
	i32 330, ; 523
	i32 367, ; 524
	i32 81, ; 525
	i32 209, ; 526
	i32 74, ; 527
	i32 130, ; 528
	i32 25, ; 529
	i32 7, ; 530
	i32 93, ; 531
	i32 214, ; 532
	i32 286, ; 533
	i32 137, ; 534
	i32 221, ; 535
	i32 197, ; 536
	i32 213, ; 537
	i32 113, ; 538
	i32 9, ; 539
	i32 104, ; 540
	i32 337, ; 541
	i32 178, ; 542
	i32 357, ; 543
	i32 19, ; 544
	i32 194, ; 545
	i32 254, ; 546
	i32 268, ; 547
	i32 402, ; 548
	i32 248, ; 549
	i32 33, ; 550
	i32 235, ; 551
	i32 46, ; 552
	i32 382, ; 553
	i32 30, ; 554
	i32 236, ; 555
	i32 57, ; 556
	i32 134, ; 557
	i32 114, ; 558
	i32 291, ; 559
	i32 395, ; 560
	i32 362, ; 561
	i32 55, ; 562
	i32 192, ; 563
	i32 6, ; 564
	i32 295, ; 565
	i32 308, ; 566
	i32 77, ; 567
	i32 247, ; 568
	i32 111, ; 569
	i32 351, ; 570
	i32 294, ; 571
	i32 251, ; 572
	i32 102, ; 573
	i32 369, ; 574
	i32 383, ; 575
	i32 170, ; 576
	i32 115, ; 577
	i32 377, ; 578
	i32 286, ; 579
	i32 333, ; 580
	i32 241, ; 581
	i32 76, ; 582
	i32 334, ; 583
	i32 85, ; 584
	i32 359, ; 585
	i32 397, ; 586
	i32 233, ; 587
	i32 398, ; 588
	i32 381, ; 589
	i32 276, ; 590
	i32 160, ; 591
	i32 2, ; 592
	i32 354, ; 593
	i32 247, ; 594
	i32 24, ; 595
	i32 226, ; 596
	i32 32, ; 597
	i32 117, ; 598
	i32 37, ; 599
	i32 16, ; 600
	i32 376, ; 601
	i32 320, ; 602
	i32 52, ; 603
	i32 301, ; 604
	i32 379, ; 605
	i32 360, ; 606
	i32 316, ; 607
	i32 332, ; 608
	i32 20, ; 609
	i32 123, ; 610
	i32 154, ; 611
	i32 254, ; 612
	i32 332, ; 613
	i32 131, ; 614
	i32 371, ; 615
	i32 235, ; 616
	i32 148, ; 617
	i32 298, ; 618
	i32 222, ; 619
	i32 120, ; 620
	i32 28, ; 621
	i32 132, ; 622
	i32 100, ; 623
	i32 134, ; 624
	i32 274, ; 625
	i32 153, ; 626
	i32 97, ; 627
	i32 125, ; 628
	i32 223, ; 629
	i32 69, ; 630
	i32 299, ; 631
	i32 72, ; 632
	i32 392, ; 633
	i32 259, ; 634
	i32 277, ; 635
	i32 373, ; 636
	i32 357, ; 637
	i32 136, ; 638
	i32 178, ; 639
	i32 124, ; 640
	i32 71, ; 641
	i32 111, ; 642
	i32 269, ; 643
	i32 186, ; 644
	i32 352, ; 645
	i32 152, ; 646
	i32 356, ; 647
	i32 384, ; 648
	i32 400, ; 649
	i32 206, ; 650
	i32 300, ; 651
	i32 334, ; 652
	i32 347, ; 653
	i32 294, ; 654
	i32 118, ; 655
	i32 245, ; 656
	i32 180, ; 657
	i32 401, ; 658
	i32 368, ; 659
	i32 127, ; 660
	i32 133, ; 661
	i32 187, ; 662
	i32 77, ; 663
	i32 46, ; 664
	i32 248, ; 665
	i32 73, ; 666
	i32 63, ; 667
	i32 98, ; 668
	i32 84, ; 669
	i32 366, ; 670
	i32 385, ; 671
	i32 43, ; 672
	i32 61, ; 673
	i32 193, ; 674
	i32 275, ; 675
	i32 185, ; 676
	i32 37, ; 677
	i32 40, ; 678
	i32 238, ; 679
	i32 363, ; 680
	i32 160, ; 681
	i32 98, ; 682
	i32 243, ; 683
	i32 187, ; 684
	i32 135, ; 685
	i32 20, ; 686
	i32 65, ; 687
	i32 372, ; 688
	i32 125, ; 689
	i32 75, ; 690
	i32 267, ; 691
	i32 164, ; 692
	i32 156, ; 693
	i32 372, ; 694
	i32 5, ; 695
	i32 380, ; 696
	i32 174, ; 697
	i32 49, ; 698
	i32 281, ; 699
	i32 373, ; 700
	i32 319, ; 701
	i32 144, ; 702
	i32 139, ; 703
	i32 100, ; 704
	i32 199, ; 705
	i32 348, ; 706
	i32 123, ; 707
	i32 120, ; 708
	i32 142, ; 709
	i32 39, ; 710
	i32 68, ; 711
	i32 41, ; 712
	i32 164, ; 713
	i32 73, ; 714
	i32 386, ; 715
	i32 353, ; 716
	i32 165, ; 717
	i32 189, ; 718
	i32 127, ; 719
	i32 253, ; 720
	i32 173, ; 721
	i32 362, ; 722
	i32 68, ; 723
	i32 322, ; 724
	i32 169, ; 725
	i32 333, ; 726
	i32 266, ; 727
	i32 240, ; 728
	i32 179, ; 729
	i32 204, ; 730
	i32 273, ; 731
	i32 151, ; 732
	i32 45, ; 733
	i32 108, ; 734
	i32 48, ; 735
	i32 96, ; 736
	i32 31, ; 737
	i32 23, ; 738
	i32 166, ; 739
	i32 22, ; 740
	i32 138, ; 741
	i32 78, ; 742
	i32 393, ; 743
	i32 54, ; 744
	i32 266, ; 745
	i32 271, ; 746
	i32 10, ; 747
	i32 304, ; 748
	i32 228, ; 749
	i32 270, ; 750
	i32 257, ; 751
	i32 16, ; 752
	i32 400, ; 753
	i32 139, ; 754
	i32 198, ; 755
	i32 13, ; 756
	i32 15, ; 757
	i32 122, ; 758
	i32 87, ; 759
	i32 149, ; 760
	i32 22, ; 761
	i32 34, ; 762
	i32 79, ; 763
	i32 378, ; 764
	i32 329, ; 765
	i32 324, ; 766
	i32 393, ; 767
	i32 147, ; 768
	i32 80, ; 769
	i32 376, ; 770
	i32 180, ; 771
	i32 342, ; 772
	i32 221, ; 773
	i32 297, ; 774
	i32 388, ; 775
	i32 42, ; 776
	i32 316, ; 777
	i32 26, ; 778
	i32 399, ; 779
	i32 268, ; 780
	i32 265, ; 781
	i32 107, ; 782
	i32 110, ; 783
	i32 195, ; 784
	i32 7, ; 785
	i32 358, ; 786
	i32 44, ; 787
	i32 322, ; 788
	i32 339, ; 789
	i32 161, ; 790
	i32 148, ; 791
	i32 387, ; 792
	i32 233, ; 793
	i32 270, ; 794
	i32 38, ; 795
	i32 15, ; 796
	i32 146, ; 797
	i32 8, ; 798
	i32 251, ; 799
	i32 272, ; 800
	i32 130, ; 801
	i32 382, ; 802
	i32 318, ; 803
	i32 288, ; 804
	i32 94 ; 805
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
