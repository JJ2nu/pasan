; ModuleID = '/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/static_callsite_10.cpp'
source_filename = "/home/jinu/Desktop/phasar/test/llvm_test_code/call_graphs/static_callsite_10.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::function" = type { %"class.std::_Function_base", void (%"union.std::_Any_data"*)* }
%"class.std::_Function_base" = type { %"union.std::_Any_data", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%class.anon = type { i8 }
%"struct.std::_Maybe_unary_or_binary_function" = type { i8 }
%"struct.std::integral_constant" = type { i8 }
%"class.std::type_info" = type { i32 (...)**, i8* }
%"struct.std::__invoke_other" = type { i8 }

$_ZNKSt8functionIFvvEEclEv = comdat any

$_ZNSt8functionIFvvEED2Ev = comdat any

$_ZNSt14_Function_baseD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt14_Function_baseC2Ev = comdat any

$_ZNSt9_Any_data9_M_accessEv = comdat any

$_ZNKSt9_Any_data9_M_accessEv = comdat any

$_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v = comdat any

$_ZNKSt14_Function_base8_M_emptyEv = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@"_ZTSZ4mainE3$_0" = internal constant [12 x i8] c"Z4mainE3$_0\00", align 1
@"_ZTIZ4mainE3$_0" = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"_ZTSZ4mainE3$_0", i32 0, i32 0) }, align 8

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %foo = alloca %"class.std::function", align 8
  %ref.tmp = alloca %class.anon, align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  call void @"_ZNSt8functionIFvvEEC2IZ4mainE3$_0vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %foo, %class.anon* noundef nonnull align 1 dereferenceable(1) %ref.tmp) #7
  invoke void @_ZNKSt8functionIFvvEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %foo)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt8functionIFvvEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %foo) #7
  ret i32 0

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  %1 = extractvalue { i8*, i32 } %0, 0
  store i8* %1, i8** %exn.slot, align 8
  %2 = extractvalue { i8*, i32 } %0, 1
  store i32 %2, i32* %ehselector.slot, align 4
  call void @_ZNSt8functionIFvvEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %foo) #7
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val1 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @"_ZNSt8functionIFvvEEC2IZ4mainE3$_0vEEOT_"(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %this, %class.anon* noundef nonnull align 1 dereferenceable(1) %__f) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::function"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  store %"class.std::function"* %this, %"class.std::function"** %this.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %this1 = load %"class.std::function"*, %"class.std::function"** %this.addr, align 8
  %0 = bitcast %"class.std::function"* %this1 to %"struct.std::_Maybe_unary_or_binary_function"*
  %1 = bitcast %"class.std::function"* %this1 to %"class.std::_Function_base"*
  %2 = bitcast %"class.std::_Function_base"* %1 to i8*
  %3 = getelementptr inbounds i8, i8* %2, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 24, i1 false)
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %1) #7
  %_M_invoker = getelementptr inbounds %"class.std::function", %"class.std::function"* %this1, i32 0, i32 1
  store void (%"union.std::_Any_data"*)* null, void (%"union.std::_Any_data"*)** %_M_invoker, align 8
  %4 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call = invoke noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E21_M_not_empty_functionIS1_EEbRKT_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont
  %5 = bitcast %"class.std::function"* %this1 to %"class.std::_Function_base"*
  %_M_functor = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %5, i32 0, i32 0
  %6 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call2 = call noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* noundef nonnull align 1 dereferenceable(1) %6) #7
  call void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIS1_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %_M_functor, %class.anon* noundef nonnull align 1 dereferenceable(1) %call2) #7
  %_M_invoker3 = getelementptr inbounds %"class.std::function", %"class.std::function"* %this1, i32 0, i32 1
  store void (%"union.std::_Any_data"*)* @"_ZNSt17_Function_handlerIFvvEZ4mainE3$_0E9_M_invokeERKSt9_Any_data", void (%"union.std::_Any_data"*)** %_M_invoker3, align 8
  %7 = bitcast %"class.std::function"* %this1 to %"class.std::_Function_base"*
  %_M_manager = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %7, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @"_ZNSt17_Function_handlerIFvvEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %_M_manager, align 8
  br label %if.end

lpad:                                             ; preds = %entry
  %8 = landingpad { i8*, i32 }
          catch i8* null
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %exn.slot, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %ehselector.slot, align 4
  %11 = bitcast %"class.std::function"* %this1 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %11) #7
  br label %terminate.handler

if.end:                                           ; preds = %if.then, %invoke.cont
  ret void

terminate.handler:                                ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  call void @__clang_call_terminate(i8* %exn) #8
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNKSt8functionIFvvEEclEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %this) #2 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %this, %"class.std::function"** %this.addr, align 8
  %this1 = load %"class.std::function"*, %"class.std::function"** %this.addr, align 8
  %0 = bitcast %"class.std::function"* %this1 to %"class.std::_Function_base"*
  %call = call noundef zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt25__throw_bad_function_callv() #9
  unreachable

if.end:                                           ; preds = %entry
  %_M_invoker = getelementptr inbounds %"class.std::function", %"class.std::function"* %this1, i32 0, i32 1
  %1 = load void (%"union.std::_Any_data"*)*, void (%"union.std::_Any_data"*)** %_M_invoker, align 8
  %2 = bitcast %"class.std::function"* %this1 to %"class.std::_Function_base"*
  %_M_functor = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %2, i32 0, i32 0
  call void %1(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %_M_functor)
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8functionIFvvEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %this, %"class.std::function"** %this.addr, align 8
  %this1 = load %"class.std::function"*, %"class.std::function"** %this.addr, align 8
  %0 = bitcast %"class.std::function"* %this1 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %0) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %this, %"class.std::_Function_base"** %this.addr, align 8
  %this1 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %this.addr, align 8
  %_M_manager = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 1
  %0 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %_M_manager, align 8
  %tobool = icmp ne i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_manager2 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 1
  %1 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %_M_manager2, align 8
  %_M_functor = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 0
  %_M_functor3 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 0
  %call = invoke noundef zeroext i1 %1(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %_M_functor, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %_M_functor3, i32 noundef 3)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %invoke.cont, %entry
  ret void

terminate.lpad:                                   ; preds = %if.then
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #8
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #3 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #7
  call void @_ZSt9terminatev() #8
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #1 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %this, %"class.std::_Function_base"** %this.addr, align 8
  %this1 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %this.addr, align 8
  %_M_functor = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 0
  %_M_unused = bitcast %"union.std::_Any_data"* %_M_functor to %"union.std::_Nocopy_types"*
  %_M_object = bitcast %"union.std::_Nocopy_types"* %_M_unused to i8**
  store i8* null, i8** %_M_object, align 8
  %_M_manager = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %_M_manager, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E21_M_not_empty_functionIS1_EEbRKT_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %0) #5 align 2 {
entry:
  %.addr = alloca %class.anon*, align 8
  store %class.anon* %0, %class.anon** %.addr, align 8
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIS1_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__functor, %class.anon* noundef nonnull align 1 dereferenceable(1) %__f) #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__functor.addr = alloca %"union.std::_Any_data"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  %agg.tmp = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %__functor.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %0 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__functor.addr, align 8
  %1 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* noundef nonnull align 1 dereferenceable(1) %1) #7
  invoke void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon* noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #8
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* noundef nonnull align 1 dereferenceable(1) %__t) #5 {
entry:
  %__t.addr = alloca %class.anon*, align 8
  store %class.anon* %__t, %class.anon** %__t.addr, align 8
  %0 = load %class.anon*, %class.anon** %__t.addr, align 8
  ret %class.anon* %0
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZ4mainE3$_0E9_M_invokeERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__functor) #2 align 2 {
entry:
  %__functor.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %__functor.addr, align 8
  %0 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__functor.addr, align 8
  %call = call noundef %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0)
  call void @"_ZSt10__invoke_rIvRZ4mainE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %call)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__dest, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__source, i32 noundef %__op) #2 align 2 {
entry:
  %__dest.addr = alloca %"union.std::_Any_data"*, align 8
  %__source.addr = alloca %"union.std::_Any_data"*, align 8
  %__op.addr = alloca i32, align 4
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %__dest.addr, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %__source.addr, align 8
  store i32 %__op, i32* %__op.addr, align 4
  %0 = load i32, i32* %__op.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1)
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZ4mainE3$_0" to %"class.std::type_info"*), %"class.std::type_info"** %call, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__source.addr, align 8
  %call2 = call noundef %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %2)
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ4mainE3$_0EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3)
  store %class.anon* %call2, %class.anon** %call3, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %5 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__source.addr, align 8
  %6 = load i32, i32* %__op.addr, align 4
  %call4 = call noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret i1 false
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__dest, %class.anon* noundef nonnull align 1 dereferenceable(1) %__f) #2 align 2 {
entry:
  %0 = alloca %"struct.std::integral_constant", align 1
  %__dest.addr = alloca %"union.std::_Any_data"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %__dest.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1)
  %2 = bitcast i8* %call to %class.anon*
  %3 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call1 = call noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZSt7forwardIZ4mainE3$_0EOT_RNSt16remove_referenceIS1_E4typeE"(%class.anon* noundef nonnull align 1 dereferenceable(1) %3) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %_M_pod_data = bitcast %"union.std::_Any_data"* %this1 to [16 x i8]*
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %_M_pod_data, i64 0, i64 0
  ret i8* %arrayidx
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"_ZSt10__invoke_rIvRZ4mainE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES3_E4typeEOS4_DpOS5_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %__fn) #2 {
entry:
  %__fn.addr = alloca %class.anon*, align 8
  %agg.tmp = alloca %"struct.std::__invoke_other", align 1
  store %class.anon* %__fn, %class.anon** %__fn.addr, align 8
  %0 = load %class.anon*, %class.anon** %__fn.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZSt7forwardIRZ4mainE3$_0EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon* noundef nonnull align 1 dereferenceable(1) %0) #7
  call void @"_ZSt13__invoke_implIvRZ4mainE3$_0JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %call)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__source) #2 align 2 {
entry:
  %__source.addr = alloca %"union.std::_Any_data"*, align 8
  %__f = alloca %class.anon*, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %__source.addr, align 8
  %0 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__source.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZNKSt9_Any_data9_M_accessIZ4mainE3$_0EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0)
  store %class.anon* %call, %class.anon** %__f, align 8
  %1 = load %class.anon*, %class.anon** %__f, align 8
  %call1 = call noundef %class.anon* @"_ZSt11__addressofIKZ4mainE3$_0EPT_RS2_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %1) #7
  ret %class.anon* %call1
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"_ZSt13__invoke_implIvRZ4mainE3$_0JEET_St14__invoke_otherOT0_DpOT1_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %__f) #2 {
entry:
  %0 = alloca %"struct.std::__invoke_other", align 1
  %__f.addr = alloca %class.anon*, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %1 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZSt7forwardIRZ4mainE3$_0EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon* noundef nonnull align 1 dereferenceable(1) %1) #7
  call void @"_ZZ4mainENK3$_0clEv"(%class.anon* noundef nonnull align 1 dereferenceable(1) %call)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZSt7forwardIRZ4mainE3$_0EOT_RNSt16remove_referenceIS2_E4typeE"(%class.anon* noundef nonnull align 1 dereferenceable(1) %__t) #5 {
entry:
  %__t.addr = alloca %class.anon*, align 8
  store %class.anon* %__t, %class.anon** %__t.addr, align 8
  %0 = load %class.anon*, %class.anon** %__t.addr, align 8
  ret %class.anon* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZZ4mainENK3$_0clEv"(%class.anon* noundef nonnull align 1 dereferenceable(1) %this) #5 align 2 {
entry:
  %this.addr = alloca %class.anon*, align 8
  store %class.anon* %this, %class.anon** %this.addr, align 8
  %this1 = load %class.anon*, %class.anon** %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZNKSt9_Any_data9_M_accessIZ4mainE3$_0EERKT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %this) #2 align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %call = call noundef i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %this1)
  %0 = bitcast i8* %call to %class.anon*
  ret %class.anon* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef %class.anon* @"_ZSt11__addressofIKZ4mainE3$_0EPT_RS2_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %__r) #5 {
entry:
  %__r.addr = alloca %class.anon*, align 8
  store %class.anon* %__r, %class.anon** %__r.addr, align 8
  %0 = load %class.anon*, %class.anon** %__r.addr, align 8
  ret %class.anon* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %_M_pod_data = bitcast %"union.std::_Any_data"* %this1 to [16 x i8]*
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %_M_pod_data, i64 0, i64 0
  ret i8* %arrayidx
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %call = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %this1)
  %0 = bitcast i8* %call to %"class.std::type_info"**
  ret %"class.std::type_info"** %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 8 dereferenceable(8) %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ4mainE3$_0EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %this) #5 align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %call = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %this1)
  %0 = bitcast i8* %call to %class.anon**
  ret %class.anon** %0
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef zeroext i1 @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__dest, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__source, i32 noundef %__op) #2 align 2 {
entry:
  %__dest.addr = alloca %"union.std::_Any_data"*, align 8
  %__source.addr = alloca %"union.std::_Any_data"*, align 8
  %__op.addr = alloca i32, align 4
  %agg.tmp = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %__dest.addr, align 8
  store %"union.std::_Any_data"* %__source, %"union.std::_Any_data"** %__source.addr, align 8
  store i32 %__op, i32* %__op.addr, align 4
  %0 = load i32, i32* %__op.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1)
  store %"class.std::type_info"* bitcast ({ i8*, i8* }* @"_ZTIZ4mainE3$_0" to %"class.std::type_info"*), %"class.std::type_info"** %call, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__source.addr, align 8
  %call2 = call noundef %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %2)
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call3 = call noundef nonnull align 8 dereferenceable(8) %class.anon** @"_ZNSt9_Any_data9_M_accessIPZ4mainE3$_0EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3)
  store %class.anon* %call2, %class.anon** %call3, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %5 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__source.addr, align 8
  %call5 = call noundef %class.anon* @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E14_M_get_pointerERKSt9_Any_data"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %5)
  call void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4, %class.anon* noundef nonnull align 1 dereferenceable(1) %call5) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  call void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb4, %sw.bb1, %sw.bb
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E15_M_init_functorIRKS1_EEvRSt9_Any_dataOT_"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__functor, %class.anon* noundef nonnull align 1 dereferenceable(1) %__f) #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__functor.addr = alloca %"union.std::_Any_data"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  %agg.tmp = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %__functor, %"union.std::_Any_data"** %__functor.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %0 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__functor.addr, align 8
  %1 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZSt7forwardIRKZ4mainE3$_0EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon* noundef nonnull align 1 dereferenceable(1) %1) #7
  invoke void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %class.anon* noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { i8*, i32 }
          catch i8* null
  %3 = extractvalue { i8*, i32 } %2, 0
  call void @__clang_call_terminate(i8* %3) #8
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__victim) #2 align 2 {
entry:
  %0 = alloca %"struct.std::integral_constant", align 1
  %__victim.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %__victim, %"union.std::_Any_data"** %__victim.addr, align 8
  %1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__victim.addr, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZNSt9_Any_data9_M_accessIZ4mainE3$_0EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal void @"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E9_M_createIRKS1_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %__dest, %class.anon* noundef nonnull align 1 dereferenceable(1) %__f) #5 align 2 {
entry:
  %0 = alloca %"struct.std::integral_constant", align 1
  %__dest.addr = alloca %"union.std::_Any_data"*, align 8
  %__f.addr = alloca %class.anon*, align 8
  store %"union.std::_Any_data"* %__dest, %"union.std::_Any_data"** %__dest.addr, align 8
  store %class.anon* %__f, %class.anon** %__f.addr, align 8
  %1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %__dest.addr, align 8
  %call = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1)
  %2 = bitcast i8* %call to %class.anon*
  %3 = load %class.anon*, %class.anon** %__f.addr, align 8
  %call1 = call noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZSt7forwardIRKZ4mainE3$_0EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon* noundef nonnull align 1 dereferenceable(1) %3) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZSt7forwardIRKZ4mainE3$_0EOT_RNSt16remove_referenceIS3_E4typeE"(%class.anon* noundef nonnull align 1 dereferenceable(1) %__t) #5 {
entry:
  %__t.addr = alloca %class.anon*, align 8
  store %class.anon* %__t, %class.anon** %__t.addr, align 8
  %0 = load %class.anon*, %class.anon** %__t.addr, align 8
  ret %class.anon* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef nonnull align 1 dereferenceable(1) %class.anon* @"_ZNSt9_Any_data9_M_accessIZ4mainE3$_0EERT_v"(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %this) #5 align 2 {
entry:
  %this.addr = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %this, %"union.std::_Any_data"** %this.addr, align 8
  %this1 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %this.addr, align 8
  %call = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %this1)
  %0 = bitcast i8* %call to %class.anon*
  ret %class.anon* %0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %this) #5 comdat align 2 {
entry:
  %this.addr = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %this, %"class.std::_Function_base"** %this.addr, align 8
  %this1 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %this.addr, align 8
  %_M_manager = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %this1, i32 0, i32 1
  %0 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %_M_manager, align 8
  %tobool = icmp ne i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %0, null
  %lnot = xor i1 %tobool, true
  ret i1 %lnot
}

; Function Attrs: noreturn
declare dso_local void @_ZSt25__throw_bad_function_callv() #6

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
